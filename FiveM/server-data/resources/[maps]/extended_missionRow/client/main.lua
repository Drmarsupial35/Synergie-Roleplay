Citizen.CreateThread(function()
	LoadInterior(GetInteriorAtCoords(440.84, -983.14, 30.69))
end)

Citizen.CreateThread(function()
    while (true) do
        ClearAreaOfPeds(456.729, -985.872, 30.689, 10000, 1)
        Citizen.Wait(0)
    end
end)