Config                            = {}
Config.Locale                     = 'fr'

Config.DrawDistance               = 100.0
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = true

Config.NPCSpawnDistance           = 500.0
Config.NPCNextToDistance          = 25.0
Config.NPCJobEarnings             = { min = 50, max = 125 }

Config.Vehicles = {
	'blista',
	'dilettante',
	'issi',
	'panto',
	'prairie',
	"rhapsody",
	"asea",
	"asterope",
	"emperor",
	"emperor2",
	"fugitive",
	"glendale",
	"ingot",
	"intruder",
	"premier",
	"primo",
	"regina",
	"stanier",
	"stratum",
	"surge",
	"tailgater",
	"washington",
	"bison",
	"minivan",
	"paradise",
	"pony",
	"jackal",
	"oracle",
	"oracle2",
	"blade",
	"buccaneer",
	"dominator",
	"dukes",
	"gauntlet",
	"slamvan",
	"elegy",
	"futo",
	"baller",
	"cavalcade",
	"habanero",
	"bfinjection",
	"kalahari",
	"rebel"
}

Config.Zones = {

	MechanicActions = {
		Pos   = { x = -201.274, y = -1318.696, z = 30.089 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = 1
	},

	Garage = {
		Pos   = { x = 734.881, y = -1065.106, z = 21.168 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = 1
	},

	Craft = {
		Pos   = { x = -227.819, y = -1327.321, z = 29.890 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = 1
	},

	VehicleSpawnPoint = {
		Pos   = { x = -233.407, y = -1264.348, z = 30.296 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = -1,
	},

	VehicleDeleter = {
		Pos   = { x = -184.254, y = -1318.756, z = 30.297 },
		Size  = { x = 3.0, y = 3.0, z = 1.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = 1
	},

	VehicleDelivery = {
		Pos   = { x = -161.069, y = -1306.993, z = 30.264 },
		Size  = { x = 20.0, y = 20.0, z = 3.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = -1
	}
}

Config.Towables = {
	vector3(-2480.9, -212.0, 17.4),
	vector3(-2723.4, 13.2, 15.1),
	vector3(-3169.6, 976.2, 15.0),
	vector3(-3139.8, 1078.7, 20.2),
	vector3(-1656.9, -246.2, 54.5),
	vector3(-1586.7, -647.6, 29.4),
	vector3(-1036.1, -491.1, 36.2),
	vector3(-1029.2, -475.5, 36.4),
	vector3(75.2, 164.9, 104.7),
	vector3(-534.6, -756.7, 31.6),
	vector3(487.2, -30.8, 88.9),
	vector3(-772.2, -1281.8, 4.6),
	vector3(-663.8, -1207.0, 10.2),
	vector3(719.1, -767.8, 24.9),
	vector3(-971.0, -2410.4, 13.3),
	vector3(-1067.5, -2571.4, 13.2),
	vector3(-619.2, -2207.3, 5.6),
	vector3(1192.1, -1336.9, 35.1),
	vector3(-432.8, -2166.1, 9.9),
	vector3(-451.8, -2269.3, 7.2),
	vector3(939.3, -2197.5, 30.5),
	vector3(-556.1, -1794.7, 22.0),
	vector3(591.7, -2628.2, 5.6),
	vector3(1654.5, -2535.8, 74.5),
	vector3(1642.6, -2413.3, 93.1),
	vector3(1371.3, -2549.5, 47.6),
	vector3(383.8, -1652.9, 37.3),
	vector3(27.2, -1030.9, 29.4),
	vector3(229.3, -365.9, 43.8),
	vector3(-85.8, -51.7, 61.1),
	vector3(-4.6, -670.3, 31.9),
	vector3(-111.9, 92.0, 71.1),
	vector3(-314.3, -698.2, 32.5),
	vector3(-366.9, 115.5, 65.6),
	vector3(-592.1, 138.2, 60.1),
	vector3(-1613.9, 18.8, 61.8),
	vector3(-1709.8, 55.1, 65.7),
	vector3(-521.9, -266.8, 34.9),
	vector3(-451.1, -333.5, 34.0),
	vector3(322.4, -1900.5, 25.8)
}

for k,v in ipairs(Config.Towables) do
	Config.Zones['Towable' .. k] = {
		Pos   = v,
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = -1
	}
end
