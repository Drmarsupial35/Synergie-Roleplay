blackBars = false
ESX = nil
local alreadyBlack = false

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    while true do
        while not blackBars do
            if IsControlJustPressed(0, 246) then
                blackBars = true
            end
            Citizen.Wait(5)
        end

        while blackBars do
            DisplayRadar(false)
            ESX.UI.HUD.SetDisplay(0.0)
            if alreadyBlack == false then
                alreadyBlack = true
                TriggerEvent('es:setMoneyDisplay', 0.0)
                TriggerEvent('esx_status:setDisplay', 0.0)
                TriggerEvent('speedometer:hideHUD')
                TriggerEvent('esx_custostatus:hideHUD')
            end
            DrawRect(1.0, 1.0, 2.0, 0.25, 0, 0, 0, 255)
            DrawRect(1.0, 0.0, 2.0, 0.25, 0, 0, 0, 255)
            if IsControlJustPressed(0, 246) then
                alreadyBlack = false
                blackBars = false
                DisplayRadar(true)
                ESX.UI.HUD.SetDisplay(1.0)
                TriggerEvent('es:setMoneyDisplay', 1.0)
                TriggerEvent('esx_status:setDisplay', 1.0)
                TriggerEvent('speedometer:showHUD')
                TriggerEvent('esx_custostatus:showHUD')
            end
            Citizen.Wait(5)
        end
    end
end)
