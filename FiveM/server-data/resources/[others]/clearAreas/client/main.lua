Citizen.CreateThread(function()
    while (true) do
        -- PNJ Comico
        ClearAreaOfPeds(440.84, -983.14, 30.69, 10000.0, 1)
        Citizen.Wait(0)
        -- Voitures Mécano
        ClearAreaOfVehicles(-243.325, -1299.867, 31.295, 1000.0, false, false, false, false, false)
        Citizen.Wait(0)
        --Voitures Hopital
        ClearAreaOfVehicles(327.546, -1471.750, 29.776, 1000.0, false, false, false, false, false)
        Citizen.Wait(0)
    end
end)