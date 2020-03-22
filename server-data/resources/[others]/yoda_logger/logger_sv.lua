local logs = "https://discordapp.com/api/webhooks/691280664548606032/9UIM3utag1V4jHxL34ED1mLs6W5y-2G5GWyd89W2zx6meode-0Nr229zwUJAGoUsfoho"
local communityname = "Logs Bot"
local communtiylogo = "https://storage.needpix.com/rsynced_images/camera-2412643_1280.png" --Must end with .png

AddEventHandler('playerConnecting', function()
local name = GetPlayerName(source)
local ip = GetPlayerEndpoint(source)
local ping = GetPlayerPing(source)
local steamhex = GetPlayerIdentifier(source)
local connect = {
        {
            ["color"] = "8663711",
            ["title"] = "Un joueur s'est connecté au serveur",
            ["description"] = "Joueur: **"..name.."**\nIP: **"..ip.."**\n Steam ID: **"..steamhex.."**",
	        ["footer"] = {
                ["text"] = communityname,
                ["icon_url"] = communtiylogo,
            },
        }
    }

PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "CCTV Logs Bot", embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

AddEventHandler('playerDropped', function(reason)
local name = GetPlayerName(source)
local ip = GetPlayerEndpoint(source)
local ping = GetPlayerPing(source)
local steamhex = GetPlayerIdentifier(source)
local disconnect = {
        {
            ["color"] = "8663711",
            ["title"] = "Un joueur s'est déconnecté au serveur",
            ["description"] = "Joueur: **"..name.."** \nRaison: **"..reason.."**\nIP: **"..ip.."**\n Steam ID: **"..steamhex.."**",
	        ["footer"] = {
                ["text"] = communityname,
                ["icon_url"] = communtiylogo,
            },
        }
    }

    PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "CCTV Logs Bot", embeds = disconnect}), { ['Content-Type'] = 'application/json' })
end)
