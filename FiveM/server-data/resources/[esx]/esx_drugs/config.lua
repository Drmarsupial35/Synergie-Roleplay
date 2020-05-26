Config              = {}
Config.MarkerType   = 1
Config.DrawDistance = 100.0
Config.ZoneSize     = {x = 5.0, y = 5.0, z = 3.0}
Config.MarkerColor  = {r = 100, g = 204, b = 100}

Config.RequiredCopsCoke  = 2
Config.RequiredCopsMeth  = 2
Config.RequiredCopsWeed  = 2
Config.RequiredCopsOpium = 2

Config.TimeToFarm    = 17 * 1000
Config.TimeToProcess = 46 * 1000
Config.TimeToSell    = 5  * 1000

Config.Locale = 'fr'

Config.Zones = {
	CokeField =			{x = 2811.070,	y = 5987.671,	z = 350.151,name = _U('coke_field'),		sprite = 501,	color = 40},
	CokeProcessing =	{x = 1093.089,	y = -3196.694,	z = -39.993,name = _U('coke_processing'),	sprite = 478,	color = 40},
	CokeDealer =		{x = -1041.282,	y = -1114.072,	z = 2.158,	name = _U('coke_dealer'),		sprite = 500,	color = 75},
	MethProcessing =	{x = 1003.287,	y = -3201.026,	z = -39.99,	name = _U('meth_field'),		sprite = 499,	color = 26},
	MethField =			{x = 1010.06,	y = -3194.58,	z = -39.99,	name = _U('meth_processing'),	sprite = 499,	color = 26},
	MethDealer =		{x = 156.668,	y = -1949.416,	z = 19.379,	name = _U('meth_dealer'),		sprite = 500,	color = 75},
	WeedField =			{x = 1057.488,	y = -3199.475,	z = -40.12,	name = _U('weed_field'),		sprite = 496,	color = 52},
	WeedProcessing =	{x = 1039.24,	y = -3205.38,	z = -39.17, name = _U('weed_processing'),	sprite = 496,	color = 52},
	WeedDealer =		{x = -184.371,	y = -1539.455,	z = 37.535,	name = _U('weed_dealer'),		sprite = 500,	color = 75},
	OpiumField =		{x = 1946.833,	y = 4894.397,	z = 44.62,	name = _U('opium_field'),		sprite = 51,	color = 60},
	OpiumProcessing =	{x = 1389.579,	y = 3603.817,	z = 37.94,	name = _U('opium_processing'),	sprite = 51,	color = 60},
	OpiumDealer =		{x = 303.58,	y = -1960.60,	z = 22.829,	name = _U('opium_dealer'),		sprite = 500,	color = 75}
}
