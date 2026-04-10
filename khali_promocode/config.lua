Config = {}

Config.Language = 'DE'
Config.Webhook = "YOUR_WEBHOOK_LINK"

-- Static Promo Codes (kein Admin System)
Config.PromoCodes = {
    ["WELCOME2026"] = { rewardType = "item", item = "bread", amount = 5 },
    ["MONEYBOOST"] = { rewardType = "money", amount = 100 },
    ["STARTER"] = { rewardType = "item", item = "water", amount = 3 }
}

Config.ItemLabels = {
    bread = "Brot",
    water = "Wasser"
}

Config.Locale = {
    DE = {
        invalid = "Ungültiger Code",
        used = "Code bereits benutzt",
        success = "Erfolgreich eingelöst",
        usage = "Nutze: /promocode CODE"
    },
    EN = {
        invalid = "Invalid code",
        used = "Already used",
        success = "Redeemed successfully",
        usage = "Use: /promocode CODE"
    }
}

function L(key)
    return Config.Locale[Config.Language][key] or key
end