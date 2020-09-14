--Truck
Config	=	{}

 -- Limit, unit can be whatever you want. Originally grams (as average people can hold 25kg)
Config.Limit = 25000

-- Default weight for an item:
	-- weight == 0 : The item do not affect character inventory weight
	-- weight > 0 : The item cost place on inventory
	-- weight < 0 : The item add place on inventory. Smart people will love it.
Config.DefaultWeight = 0



-- If true, ignore rest of file
Config.WeightSqlBased = false

-- I Prefer to edit weight on the config.lua and I have switched Config.WeightSqlBased to false:

Config.localWeight = {
    absinthe = 1, bandage = 1, beer = 1, blowpipe = 1, bread = 125, carokit = 1, carotool = 1, champagne = 1, chips = 1,
    chocolate = 1, cigarett = 1, clip = 1, cocacola = 1, coffe = 1, coke = 1, coke_pooch = 1, contrat = 1, cupcake = 1, drill = 1,
    fixkit = 1, fixtool = 1, gazbottle = 1, gintonic = 1, hamburger = 1, icetea = 1, jewels = 1, jumelles = 1, lighter = 1, mask = 1,
    medikit = 1, meth = 1, meth_pooch = 1, milk = 1, opium = 1, opium_pooch = 1, sandwich = 1, sim = 1, tel = 1, tequila = 1, vodka = 1,
    water = 330, weed = 1, weed_pooch = 1, whisky = 1, wine = 1,

    WEAPON_PISTOL = 1250,
    WEAPON_HEAVYPISTOL = 1500,
    WEAPON_SNSPISTOL = 1200,
    WEAPON_REVOLVER = 2000,
    WEAPON_STUNGUN = 1000,
    WEAPON_DOUBLEACTION = 1750,
    WEAPON_MARKSMANPISTOL = 2250,
    WEAPON_VINTAGEPISTOL = 1300,
    WEAPON_MICROSMG = 2500,
    WEAPON_SAWNOFFSHOTGUN = 3750,
    WEAPON_DBSHOTGUN = 3750,
    WEAPON_COMPACTRIFLE = 4375,
    WEAPON_GUSENBERG = 5000,
    WEAPON_SNIPERRIFLE = 6500,
    WEAPON_MOLOTOV = 250,
    WEAPON_SMOKEGRENADE = 250,
    WEAPON_PIPEBOMB = 250,
    WEAPON_STICKYBOMB = 250,

    GADGET_PARACHUTE = 500,
	black_money = 1
}

Config.VehicleLimit = {
    [0]  = 30000,  --Compact
    [1]  = 40000,  --Sedan
    [2]  = 70000,  --SUV
    [3]  = 25000,  --Coupes
    [4]  = 30000,  --Muscle
    [5]  = 10000,   --Sports Classics
    [6]  = 5000,   --Sports
    [7]  = 5000,   --Super
    [8]  = 5000,   --Motorcycles
    [9]  = 180000, --Off-road
    [10] = 300000, --Industrial
    [11] = 70000,  --Utility
    [12] = 100000, --Vans
    [13] = 0,      --Cycles
    [14] = 5000,   --Boats
    [15] = 20000,  --Helicopters
    [16] = 0,      --Planes
    [17] = 40000,  --Service
    [18] = 40000,  --Emergency
    [19] = 0,      --Military
    [20] = 300000, --Commercial
    [21] = 0,      --Trains
}
