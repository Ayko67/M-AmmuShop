RegisterNetEvent('mojitoo:clip')
AddEventHandler('mojitoo:clip', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 50
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('clip', 1)
         TriggerClientEvent('esx:showNotification', source, "Vous avez reçu ~b~1x ".. ESX.GetItemLabel("clip") .." ~w~ pour ~g~$".. price .."~s~ !")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~g~ $"..price-xMoney.."~w~ !")
    end
end)

RegisterNetEvent('mojitoo:silencieux')
AddEventHandler('mojitoo:silencieux', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 150
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('silencieux', 1)
         TriggerClientEvent('esx:showNotification', source, "Vous avez reçu ~b~1x ".. ESX.GetItemLabel("silencieux") .." ~w~ pour ~g~$".. price .."~s~ !")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~g~ $"..price-xMoney.."~w~ !")
    end
end)

RegisterNetEvent('mojitoo:lampe')
AddEventHandler('mojitoo:lampe', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 75
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('flashlight', 1)
         TriggerClientEvent('esx:showNotification', source, "Vous avez reçu ~b~1x ".. ESX.GetItemLabel("flashlight") .." ~w~ pour ~g~$".. price .."~s~ !")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~g~ $"..price-xMoney.."~w~ !")
    end
end)

RegisterNetEvent('mojitoo:jumelle')
AddEventHandler('mojitoo:jumelle', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 75
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('jumelle', 1)
         TriggerClientEvent('esx:showNotification', source, "Vous avez reçu ~b~1x ".. ESX.GetItemLabel("jumelle") .." ~w~ pour ~g~$".. price .."~s~ !")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~g~ $"..price-xMoney.."~w~ !")
    end
end)