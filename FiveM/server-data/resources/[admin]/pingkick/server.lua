-- CONFIG --

-- Ping Limit
pingLimit = 750

-- CODE --

RegisterServerEvent("checkMyPingBro")
AddEventHandler("checkMyPingBro", function()
	ping = GetPlayerPing(source)
	if ping >= pingLimit then
		DropPlayer(source, "Ping trop important (Limite: " .. pingLimit .. " | Votre ping: " .. ping .. ")")
	end
end)
