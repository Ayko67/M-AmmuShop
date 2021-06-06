ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RMenu.Add('mojitoo', 'arme', RageUI.CreateMenu("Armurerie", "Boutique Ammunation"))
RMenu:Get('mojitoo', 'arme'):SetRectangleBanner(0, 0, 0, 0)
RMenu.Add('mojitoo', 'accessoire', RageUI.CreateSubMenu(RMenu:Get('mojitoo', 'arme'), "Accessoires", "Catalogue Accessoires"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('mojitoo', 'arme'), true, true, true, function()

            RageUI.Button("Accessoires", "Voici notre séléction", {RightLabel = "~r~→→→"},true, function()
            end, RMenu:Get('mojitoo', 'accessoire'))
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('mojitoo', 'accessoire'), true, true, true, function()

        RageUI.Button("Chargeur", "Chargeur à Cartouche", {RightLabel = "~r~50 $"}, true, function(Hovered, Active, Selected)
            if (Selected) then
                TriggerServerEvent('mojitoo:clip')
                end
            end)

        RageUI.Button("Silencieux", "Suppresseur de bruit", {RightLabel = "~r~150 $"}, true, function(Hovered, Active, Selected)
            if (Selected) then
                TriggerServerEvent('mojitoo:silencieux')
                end
            end)
            
        RageUI.Button("Lampe Torche", "Utile dans toutes situations", {RightLabel = "~r~75 $"}, true, function(Hovered, Active, Selected)
            if (Selected) then
                TriggerServerEvent('mojitoo:lampe')
                end
            end)
            
        RageUI.Button("Jumelle", "Dispositif optique binoculaire grossissant", {RightLabel = "~r~75 $"}, true, function(Hovered, Active, Selected)
            if (Selected) then
                TriggerServerEvent('mojitoo:jumelle')
                end
            end)
        end, function()

            ---Panels
        end, 1)

        Citizen.Wait(0)
    end
end)  




local position = {
    {x = 18.02, y = -1111.02, z = 29.8},
}  

            Citizen.CreateThread(function()
                while true do
                    Citizen.Wait(0)
            
                    for k in pairs(position) do
            
                        local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                        local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
            
                        if dist <= 1.0 then
                            ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour parler à la ~r~Vendeuse")
                            if IsControlJustPressed(1,51) then
                                RageUI.Visible(RMenu:Get('mojitoo', 'arme'), not RageUI.Visible(RMenu:Get('mojitoo', 'arme')))
                            end   
                        end
                    end
                end
            end)

            Citizen.CreateThread(function()
                local hash = GetHashKey("u_f_y_mistress")
                while not HasModelLoaded(hash) do
                RequestModel(hash)
                Wait(20)
                end
                ped = CreatePed("PED_TYPE_CIVMALE", "u_f_y_mistress",16.79,-1110.59,28.8, 236.03, false, true) -- Position du ped
                SetBlockingOfNonTemporaryEvents(ped, true) -- Fiat en sorte que le ped ne réagisse à rien (n'aura pas peur si il y a des tirs etc...)
                FreezeEntityPosition(ped, true) -- Freeze le ped
                SetEntityInvincible(ped, true) -- Le rend invincible 
            end)
        
        ------------ BY Ayko#6666 ------------    
