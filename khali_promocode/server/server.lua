local VORPcore = exports.vorp_core:GetCore()
local VorpInv  = exports.vorp_inventory:vorp_inventoryApi()

-- SQL AUTO CREATE (only redeem tracking)
CreateThread(function()
    MySQL.query([[
        CREATE TABLE IF NOT EXISTS promo_redeems (
            id INT AUTO_INCREMENT PRIMARY KEY,
            charid INT,
            code VARCHAR(50)
        )
    ]])

    print("[Promo] SQL ready")
end)

-- WEBHOOK
local function sendWebhook(name, code, reward)
    if not Config.Webhook or Config.Webhook == "" then return end

    PerformHttpRequest(Config.Webhook, function() end, "POST", json.encode({
        username = "Promo System",
        embeds = {{
            title = "🎟️ Promo Redeemed",
            color = 16753920,
            fields = {
                { name = "Player", value = name, inline = true },
                { name = "Code", value = code, inline = true },
                { name = "Reward", value = reward, inline = false }
            }
        }}
    }), { ["Content-Type"] = "application/json" })
end

-- REWARD
local function giveReward(src, promo)
    local user = VORPcore.getUser(src)
    if not user then return "" end

    local char = user.getUsedCharacter
    local label = ""

    if promo.rewardType == "item" then
        VorpInv.addItem(src, promo.item, promo.amount)
        label = promo.amount .. "x " .. (Config.ItemLabels[promo.item] or promo.item)
    else
        char.addCurrency(0, promo.amount)
        label = "$" .. promo.amount
    end

    return label
end

-- MAIN REDEEM
RegisterServerEvent("promo:redeem")
AddEventHandler("promo:redeem", function(code)
    local src = source

    local user = VORPcore.getUser(src)
    if not user then return end

    local char = user.getUsedCharacter
    local charId = char.charIdentifier
    local name = char.firstname .. " " .. char.lastname

    code = string.upper(code or "")

    local promo = Config.PromoCodes[code]
    if not promo then
        VORPcore.NotifyLeft(src, "Promo", L("invalid"), "generic_textures", "tick", 4000)
        return
    end

    local used = MySQL.single.await(
        'SELECT id FROM promo_redeems WHERE charid=? AND code=?',
        {charId, code}
    )

    if used then
        VORPcore.NotifyLeft(src, "Promo", L("used"), "generic_textures", "tick", 4000)
        return
    end

    MySQL.insert('INSERT INTO promo_redeems (charid, code) VALUES (?, ?)', {charId, code})

    local reward = giveReward(src, promo)

    VORPcore.NotifyLeft(src, "Promo", L("success") .. " | " .. reward, "generic_textures", "tick", 5000)

    sendWebhook(name, code, reward)
end)