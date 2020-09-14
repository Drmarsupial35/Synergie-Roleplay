Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 2
Config.MarkerSize                 = { x = 1.0, y = 2.0, z = 1.0 }
Config.MarkerColor                = { r = 0, g = 255, b = 0 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true
Config.EnableSocietyOwnedVehicles = true
Config.EnableLicenses             = true
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.CircleZones = {
    DrugDealer = {coords = vector3(-144.034, -1642.843, 32.142), name = _U('map_blip'), color = 2, sprite = 226, radius = 110.0},
}

Config.familiesStations = {
	families = {

		AuthorizedWeapons = {

		},

		AuthorizedVehicles = {
			{ name = 'BF400',    label = 'MotoCross' },
			{ name = 'bati',     label = 'Moto de Course' },
			{ name = 'chimera',  label = 'Moto 3 Roue' },
			{ name = 'speedo',   label = 'Cammionette' },
		},

		Cloakrooms = {
			{ x = -100.153, y = -1635.196, z = 32.106 },
		},

		Armories = {
			{ x = -86.804, y = -1611.097, z = 31.481 },
		},

		Vehicles = {
			{
				Spawner    = { x = -149.053, y = -1658.191, z = 32.7252 },
				SpawnPoint = { x = -148.161, y = -1653.239, z = 32.741 },
				Heading    = 140.0,
			}
		},

		VehicleDeleters = {
			{ x = -148.048, y = -1663.633, z = 32.791 },
		},

		BossActions = {
			{ x = -130.844, y = -1588.567, z = 32.282 }
		},
	},
}