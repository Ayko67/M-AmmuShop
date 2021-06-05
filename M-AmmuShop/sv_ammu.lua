ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Armes létal

RegisterNetEvent('mojitoo:pistol')
AddEventHandler('mojitoo:pistol', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5000
    local xMoney = xPlayer.getMoney()

     if xPlayer.hasWeapon('WEAPON_PISTOL') then
          TriggerClientEvent('esx:showNotification', source, "~r~Vous avez déjà un exemplaire sur vous !")
     else
          if xMoney >= price then
              xPlayer.removeMoney(price)
              xPlayer.addWeapon("WEAPON_PISTOL")
               TriggerClientEvent('esx:showNotification', source, "~g~Vous avez ~w~ reçu ~b~1x Pistolet~w~ ! (~g~"..price.."$~w~)")
          else
               TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque ~g~$"..price-xMoney.."~w~")
          end
     end
end)

RegisterNetEvent('mojitoo:pistol50')
AddEventHandler('mojitoo:pistol50', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10000
    local xMoney = xPlayer.getMoney()

    if xPlayer.hasWeapon('WEAPON_PISTOL50') then
     TriggerClientEvent('esx:showNotification', source, "~r~Vous avez déjà un exemplaire sur vous !")
     else
     if xMoney >= price then
           xPlayer.removeMoney(price)
           xPlayer.addWeapon("WEAPON_PISTOL50")
           TriggerClientEvent('esx:showNotification', source, "~g~Vous avez ~w~ reçu ~b~1x Pistolet Calibre 50~w~ ! (~g~"..price.."$~w~)")
          else
               TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque ~g~$"..price-xMoney.."~w~")
          end
     end
end)

RegisterNetEvent('mojitoo:smg')
AddEventHandler('mojitoo:smg', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 25000
    local xMoney = xPlayer.getMoney()

    if xPlayer.hasWeapon('WEAPON_SMG') then
     TriggerClientEvent('esx:showNotification', source, "~r~Vous avez déjà une exemplaire sur vous !")
     else
     if xMoney >= price then
               xPlayer.removeMoney(price)
               xPlayer.addWeapon("WEAPON_SMG")
               TriggerClientEvent('esx:showNotification', source, "~g~Vous avez ~w~ reçu ~b~1x SMG~w~ ! (~g~"..price.."$~w~)")
          else
               TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque ~g~$"..price-xMoney.."~w~")
          end
     end
end)

-- Armes de poing

RegisterNetEvent('mojitoo:couteau')
AddEventHandler('mojitoo:couteau', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 150
    local xMoney = xPlayer.getMoney()

    if xPlayer.hasWeapon('WEAPON_KNIFE') then
     TriggerClientEvent('esx:showNotification', source, "~r~Vous avez déjà un exemplaire sur vous !")
     else
     if xMoney >= price then
               xPlayer.removeMoney(price)
               xPlayer.addWeapon("WEAPON_KNIFE")
               TriggerClientEvent('esx:showNotification', source, "~g~Vous avez ~w~ reçu ~b~1x Couteau~w~ ! (~g~"..price.."$~w~)")
          else
               TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque ~g~$"..price-xMoney.."~w~")
          end
     end
end)

RegisterNetEvent('mojitoo:poing')
AddEventHandler('mojitoo:poing', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 250
    local xMoney = xPlayer.getMoney()

    if xPlayer.hasWeapon('WEAPON_KNUCKLE') then
     TriggerClientEvent('esx:showNotification', source, "~r~Vous avez déjà un exemplaire sur vous !")
     else
     if xMoney >= price then
               xPlayer.removeMoney(price)
               xPlayer.addWeapon("WEAPON_KNUCKLE")
               TriggerClientEvent('esx:showNotification', source, "~g~Vous avez ~w~ reçu ~b~1x Poing Américain~w~ ! (~g~"..price.."$~w~)")
          else
               TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque ~g~$"..price-xMoney.."~w~")
          end
     end
end)

RegisterNetEvent('mojitoo:batte')
AddEventHandler('mojitoo:batte', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 250
    local xMoney = xPlayer.getMoney()

    if xPlayer.hasWeapon('WEAPON_BAT') then
     TriggerClientEvent('esx:showNotification', source, "~r~Vous avez déjà un exemplaire sur vous !")
     else
     if xMoney >= price then
               xPlayer.removeMoney(price)
               xPlayer.addWeapon("WEAPON_BAT")
               TriggerClientEvent('esx:showNotification', source, "~g~Vous avez ~w~ reçu ~b~1x Batte de baseball~w~ ! (~g~"..price.."$~w~)")
          else
               TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque ~g~$"..price-xMoney.."~w~")
          end
     end
end)