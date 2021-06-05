ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


local blips = {
    {title="Armurerie", colour=2, id=110, x = 22.09,      y = -1107.28,   z = 28.80},
}


Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 0.9)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)

RMenu.Add('mojitoo', 'main', RageUI.CreateMenu("Armurerie", "Boutique Ammunation"))
RMenu:Get('mojitoo', 'main'):SetRectangleBanner(0, 0, 0, 0)
RMenu.Add('mojitoo', 'armesletale', RageUI.CreateSubMenu(RMenu:Get('mojitoo', 'main'), "Armes Létales", "Catalogue Armes Létales"))
RMenu.Add('mojitoo', 'armesnonletale', RageUI.CreateSubMenu(RMenu:Get('mojitoo', 'main'), "Armes Blanches", "Catalogue Armes Blanches"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('mojitoo', 'main'), true, true, true, function()

            RageUI.Button("Armes Létales", "Voici notre séléction", {RightLabel = "~r~→→→"},true, function()
            end, RMenu:Get('mojitoo', 'armesletale'))

            RageUI.Button("Armes Non-Létales", "Voici notre séléction", {RightLabel = "~r~→→→"},true, function()
            end, RMenu:Get('mojitoo', 'armesnonletale'))
        end, function()
        end)
        
        RageUI.IsVisible(RMenu:Get('mojitoo', 'armesletale'), true, true, true, function()

            RageUI.Button("Pistolet", "Simple et Efficace", {RightLabel = "~r~5000 $"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('mojitoo:pistol')
                        local playerPed = GetPlayerPed(-1)
                        RequestAnimDict('weapons@pistol@')
                           while not HasAnimDictLoaded('weapons@pistol@') do
                              Citizen.Wait(0)
                           end
                         TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                         Citizen.Wait(300)
                         holstered = true
                        end
                    end)

            RageUI.Button("Pistolet Calibre 50", "Puissance de feu", {RightLabel = "~r~10000 $"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('mojitoo:pistol50')
                        local playerPed = GetPlayerPed(-1)
                        RequestAnimDict('weapons@pistol@')
                            while not HasAnimDictLoaded('weapons@pistol@') do
                                Citizen.Wait(0)
                            end
                            TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                            Citizen.Wait(300)
                            holstered = true
                        end
                    end)   
                    
            RageUI.Button("Fusil SMG", "Arme à feu à tire automatique", {RightLabel = "~r~25000 $"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('mojitoo:smg')
                        local playerPed = GetPlayerPed(-1)
                        RequestAnimDict('weapons@pistol@')
                            while not HasAnimDictLoaded('weapons@pistol@') do
                                Citizen.Wait(0)
                            end
                            TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                            Citizen.Wait(300)
                            holstered = true
                    end
                end)
            end, function()
                    end)

        RageUI.IsVisible(RMenu:Get('mojitoo', 'armesnonletale'), true, true, true, function()

            RageUI.Button("Couteau", "Arme indispensable du combat rapproché", {RightLabel = "~r~150 $"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('mojitoo:couteau')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                        while not HasAnimDictLoaded('weapons@pistol@') do
                            Citizen.Wait(0)
                        end
                        TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                        Citizen.Wait(300)
                        holstered = true
                    end
                end) 

            RageUI.Button("Batte de Baseball", "Arme de défense efficace", {RightLabel = "~r~250 $"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('mojitoo:batte')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                        while not HasAnimDictLoaded('weapons@pistol@') do
                            Citizen.Wait(0)
                        end
                        TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                        Citizen.Wait(300)
                        holstered = true
                    end
                end)
                
            RageUI.Button("Poing Américain", "Arme Blanche Contondante", {RightLabel = "~r~250 $"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('mojitoo:poing')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                        while not HasAnimDictLoaded('weapons@pistol@') do
                            Citizen.Wait(0)
                        end
                        TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                        Citizen.Wait(300)
                        holstered = true
                    end
                end)
            end, function()

                ---Panels
            end, 1)
    
            Citizen.Wait(0)
        end
    end)




local position = {
    {x = 22.16, y = -1106.77, z = 29.49},
}  

                Citizen.CreateThread(function()
                    while true do
                        Citizen.Wait(0)
                
                        for k in pairs(position) do
                
                            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
                
                            if dist <= 1.0 then
                                ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour parler au ~r~Vendeur")
                                if IsControlJustPressed(1,51) then
                                    RageUI.Visible(RMenu:Get('mojitoo', 'main'), not RageUI.Visible(RMenu:Get('mojitoo', 'main')))
                                end   
                            end
                        end
                    end
                end)

                Citizen.CreateThread(function()
                    local hash = GetHashKey("csb_g")
                    while not HasModelLoaded(hash) do
                    RequestModel(hash)
                    Wait(20)
                    end
                    ped = CreatePed("PED_TYPE_CIVMALE", "csb_g",22.70,-1105.27,28.79, 150.8, false, true) -- Position du ped
                    SetBlockingOfNonTemporaryEvents(ped, true) -- Fiat en sorte que le ped ne réagisse à rien (n'aura pas peur si il y a des tirs etc...)
                    FreezeEntityPosition(ped, true) -- Freeze le ped
                    SetEntityInvincible(ped, true) -- Le rend invincible 
                end)
            
            ------------ BY Mojitoo ------------                     