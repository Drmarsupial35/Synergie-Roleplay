Citizen.CreateThread(function()
  while true do
  -- Ceci est l'ID de l'application (remplacez-le par votre propre)
  SetDiscordAppId(662056648680144896)

  -- Ici, vous devrez mettre le nom de l'image pour l'icône "Large".
  SetDiscordRichPresenceAsset('logo-synergie')

  -- Ici, vous pouvez ajouter un texte de survol pour l'icône "Large".
  SetDiscordRichPresenceAssetText('Synergie RolePlay')

  -- Ici, vous devrez mettre le nom de l'image pour l'icône "small".
  SetDiscordRichPresenceAssetSmall('logo-synergie')

  -- Ici, vous pouvez ajouter un texte de survol pour l'icône "small".
  SetDiscordRichPresenceAssetSmallText('Synergie RolePlay')

  -- Merci à @bengold  pour le code du 64 slots
  -- Pour afficher le nombre de joueurs sur 64 il faut ajouter ceci :
  players = {}
  for i = 0, 255 do
      if NetworkIsPlayerActive( i ) then
          table.insert( players, i )
      end
  end
  SetRichPresence(GetPlayerName(PlayerId()) .. " - ".. #players .. "/32")

  Citizen.Wait(60000)
  end
end)
