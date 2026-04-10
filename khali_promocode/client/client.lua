RegisterCommand("promocode", function(_, args)
    local code = args[1]

    if not code then
        TriggerEvent("vorp:TipRight", L("usage"), 4000)
        return
    end

    TriggerServerEvent("promo:redeem", code)
end)