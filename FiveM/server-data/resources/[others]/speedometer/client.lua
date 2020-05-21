local ind = {l = false, r = false}
local hide = false
local alreadyInCar = false
local fuel
local inPause = false

AddEventHandler('speedometer:hideHUD', function()
	hide = true
	SendNUIMessage({
		showhud = false,
		showfuel = false,
		clignotantGauche = false,
		clignotantDroite = false,
		feuPosition = false,
		feuRoute = false
	})
end)

AddEventHandler('speedometer:showHUD', function()
	hide = false
	if alreadyInCar then
		SendNUIMessage({
			showhud = true,
			showfuel = true,
			fuel = fuel
		})
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(0)
		if IsPauseMenuActive() and not hide and not inPause then
			TriggerEvent('speedometer:hideHUD')
			inPause = true
		end
		if not IsPauseMenuActive() and hide and inPause then
			Wait(0)
			TriggerEvent('speedometer:showHUD')
			inPause = false
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		local Ped = GetPlayerPed(-1)
		if(IsPedInAnyVehicle(Ped)) and not hide then
			alreadyInCar = true
			local PedCar = GetVehiclePedIsIn(Ped, false)
			if PedCar and GetPedInVehicleSeat(PedCar, -1) == Ped then

				-- Speed
				carSpeed = math.ceil(GetEntitySpeed(PedCar) * 3.6)
				SendNUIMessage({
					showhud = true,
					speed = carSpeed
				})

				-- Lights
				_,feuPosition,feuRoute = GetVehicleLightsState(PedCar)
				if(feuPosition == 1 and feuRoute == 0) then
					SendNUIMessage({
						feuPosition = true
					})
				else
					SendNUIMessage({
						feuPosition = false
					})
				end
				if(feuPosition == 1 and feuRoute == 1) then
					SendNUIMessage({
						feuRoute = true
					})
				else
					SendNUIMessage({
						feuRoute = false
					})
				end

				-- Turn signal
				-- SetVehicleIndicatorLights (1 left -- 0 right)
				local VehIndicatorLight = GetVehicleIndicatorLights(GetVehiclePedIsUsing(PlayerPedId()))
				if IsControlJustPressed(1, 175) then -- F9 is pressed
					ind.l = not ind.l
					SetVehicleIndicatorLights(GetVehiclePedIsUsing(GetPlayerPed(-1)), 0, ind.l)
				end
				if IsControlJustPressed(1, 174) then -- F10 is pressed
					ind.r = not ind.r
					SetVehicleIndicatorLights(GetVehiclePedIsUsing(GetPlayerPed(-1)), 1, ind.r)
				end

				if(VehIndicatorLight == 0) then
					SendNUIMessage({
						clignotantGauche = false,
						clignotantDroite = false,
					})
				elseif(VehIndicatorLight == 1) then
					SendNUIMessage({
						clignotantGauche = true,
						clignotantDroite = false,
					})
				elseif(VehIndicatorLight == 2) then
					SendNUIMessage({
						clignotantGauche = false,
						clignotantDroite = true,
					})
				elseif(VehIndicatorLight == 3) then
					SendNUIMessage({
						clignotantGauche = true,
						clignotantDroite = true,
					})
				end

			else
				alreadyInCar = false
				SendNUIMessage({
					showhud = false
				})
			end
		else
			alreadyInCar = false
			SendNUIMessage({
				showhud = false
			})
		end

		Citizen.Wait(1)
	end
end)

Citizen.CreateThread(function()
	while true do
		local Ped = GetPlayerPed(-1)
		if(IsPedInAnyVehicle(Ped)) and not hide then
			local PedCar = GetVehiclePedIsIn(Ped, false)
			if PedCar and GetPedInVehicleSeat(PedCar, -1) == Ped then
				fuel = GetVehicleFuelLevel(PedCar)
				SendNUIMessage({
					showfuel = true,
					fuel = fuel
				})
			end
		end
		Citizen.Wait(1)
	end
end)

-- Consume fuel factor
--Citizen.CreateThread(function()
--	while true do
--		local Ped = GetPlayerPed(-1)
--		if(IsPedInAnyVehicle(Ped)) then
--			local PedCar = GetVehiclePedIsIn(Ped, false)
--			if PedCar and GetPedInVehicleSeat(PedCar, -1) == Ped then
--				carSpeed = math.ceil(GetEntitySpeed(PedCar) * 3.6)
--				fuel = GetVehicleFuelLevel(PedCar)
--				rpm = GetVehicleCurrentRpm(PedCar)
--				rpmfuel = 0
--
--				if rpm > 0.9 then
--					rpmfuel = fuel - rpm / 0.8
--					Citizen.Wait(1000)
--				elseif rpm > 0.8 then
--					rpmfuel = fuel - rpm / 1.1
--					Citizen.Wait(1500)
--				elseif rpm > 0.7 then
--					rpmfuel = fuel - rpm / 2.2
--					Citizen.Wait(2000)
--				elseif rpm > 0.6 then
--					rpmfuel = fuel - rpm / 4.1
--					Citizen.Wait(3000)
--				elseif rpm > 0.5 then
--					rpmfuel = fuel - rpm / 5.7
--					Citizen.Wait(4000)
--				elseif rpm > 0.4 then
--					rpmfuel = fuel - rpm / 6.4
--					Citizen.Wait(5000)
--				elseif rpm > 0.3 then
--					rpmfuel = fuel - rpm / 6.9
--					Citizen.Wait(6000)
--				elseif rpm > 0.2 then
--					rpmfuel = fuel - rpm / 7.3
--					Citizen.Wait(8000)
--				else
--					rpmfuel = fuel - rpm / 7.5
--					Citizen.Wait(15000)
--				end
--
--				carFuel = SetVehicleFuelLevel(PedCar, rpmfuel)
--
--				SendNUIMessage({
--			showfuel = true,
--					fuel = fuel
--				})
--			end
--		end
--
--		Citizen.Wait(1)
--	end
--end)
