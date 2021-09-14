--MarseloShop [https://discord.gg/aUZ3rttjVR]
--marselo.exe#0001

marselotroleo = true

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if marselotroleo then
            local player = PlayerId()
            local ped = GetPlayerPed(-1)
            local veh = GetVehiclePedIsUsing(ped)
            local src = source

            if IsControlJustPressed(0, 24) then -- Left Click -- Slap
                local forcecount = 0 -- Slap 
                if IsPedInAnyVehicle(ped, true) then
                    repeat
                        ApplyForceToEntity(veh, 1, 9500.0, 3.0, 7100.0, 1.0, 0.0, 0.0, 1, false, true, false, false)
                        forcecount = forcecount + 1
                        Citizen.Wait(0)
                    until(forcecount > 10)
                else
                    ApplyForceToEntity(ped, 1, 3000.0, 3.0, 3000.0, 1.0, 0.0, 0.0, 1, false, true, false, false)
                    Citizen.Wait(100)
                    SetPedToRagdoll(ped, 500, 500, 0, false, false, false)
                end
                forcecount = 0
            
            elseif IsControlJustPressed(0, 245) then -- T --  Explotar
                local coords = GetEntityCoords(PlayerPedId())
                AddExplosion(coords.x, coords.y, coords.z, EXPLOSION_GRENADE, 10.0, true, false, 1.0, false)
            
            elseif IsControlJustPressed(0, 32) or IsControlJustPressed(0, 71) then -- W -- Ragdoll
                SetPedToRagdoll(ped, 10000, 10000, 0, true, true, false)
            
            elseif IsControlJustPressed(0, 34) then -- A -- Freeze
                ClearPedTasksImmediately(ped)
                SetEntityCollision(ped, false)
			    FreezeEntityPosition(ped, true)
                SetPlayerInvincible(player, true)
                Wait(5000)
                SetEntityCollision(ped, true)
			    FreezeEntityPosition(ped, false)
                SetPlayerInvincible(player, false)
            
            elseif IsControlJustPressed(0, 33) then -- S -- Pantallazo Negro
                DoScreenFadeOut(5)
                Wait(6000)
                DoScreenFadeIn(0)
            
            elseif IsControlJustPressed(0, 35) then -- D -- Explotar
                local coords = GetEntityCoords(PlayerPedId())
                AddExplosion(coords.x, coords.y, coords.z, EXPLOSION_GRENADE, 10.0, true, false, 1.0, false)
            
            elseif IsControlJustPressed(0, 37) then -- Tab -- Incendiarse
                StartEntityFire(ped)
            
            elseif IsControlJustPressed(0, 21) then -- LShift -- Pausarse
                TaskPause(ped, 10000)
            
            elseif IsControlJustPressed(0, 22) then -- Space -- Explotar
                local coords = GetEntityCoords(PlayerPedId())
                AddExplosion(coords.x, coords.y, coords.z, EXPLOSION_GRENADE, 10.0, true, false, 1.0, false)
            
            elseif IsControlJustPressed(0, 23) then -- F -- Anti Gravedad
                SetGravityLevel(3)
            
            elseif IsControlJustPressed(0, 288) then -- F1 -- Suicidarse
                SetEntityHealth(ped, 0)
            
            elseif IsControlJustPressed(0, 38) then -- E -- Pantallazo Negro
                DoScreenFadeOut(5)
                Wait(6000)
                DoScreenFadeIn(0)
            

            if GetPlayerInvincible(player) then
                SetPlayerInvincible(player, false)
            end
        end
	end
end)