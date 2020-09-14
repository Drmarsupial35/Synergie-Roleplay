Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 2
Config.MarkerSize                 = { x = 1.0, y = 2.0, z = 1.0 }
Config.MarkerColor                = { r = 127, g = 0, b = 255 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true
Config.EnableSocietyOwnedVehicles = true
Config.EnableLicenses             = true
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.CircleZones = {
    DrugDealer = {coords = vector3(83.43, -1923.74, 20.80), name = _U('map_blip'), color = 1, sprite = 310, radius = 110.0},
}

Config.ballasStations = {
	ballas = {

		AuthorizedWeapons = {
		},

		AuthorizedVehicles = {
			{ name = 'hevo',       label = 'Lamborghini Huracan' },
			{ name = 'gle450',     label = 'Mercedes GLE450' },
			{ name = 'peyote',     label = 'Peyote' },
			{ name = 'speedo',     label = 'Cammionette' },
		},

		Cloakrooms = {
			{ x = 76.097, y = -1961.719, z = 20.751 },
		},

		Armories = {
			{ x = 77.940, y = -1964.441, z = 21.118 },
		},

		Vehicles = {
			{
				Spawner    = { x = 117.875, y = -1950.782, z = 20.747 },
				SpawnPoint = { x = 106.708, y = -1941.403, z = 20.154 },
				Heading    = 51.232,
			}
		},

		VehicleDeleters = {
			{ x = 85.818, y = -1971.332, z = 20.129 },
			{ x = 85.818, y = -1971.332, z = 20.129 },
		},

		BossActions = {
			{ x = 75.255, y = -1966.908, z = 21.117 }
		},
	},
}