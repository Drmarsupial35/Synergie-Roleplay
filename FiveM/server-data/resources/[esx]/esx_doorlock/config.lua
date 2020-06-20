Config = {}
Config.Locale = 'fr'

Config.DoorList = {

	--
	-- Ballas
	--

		-- Gate
		{
			objName = 'prop_fnclink_03gate2',
			objYaw = 50.0,
			objCoords  = vector3(75.692, -1919.505, 20.135),
			textCoords = vector3(77.411, -1917.104, 22.0),
			authorizedJobs = { 'ballas' },
			locked = true,
			distance = 14,
			size = 2
		},

	--
	-- Families
	--

		-- Gate N
		{
			objName = 'prop_fnclink_03gate2',
			objYaw = 140.0,
			objCoords  = vector3(-99.191, -1589.608, 30.662),
			textCoords = vector3(-101.581, -1587.383, 32.662),
			authorizedJobs = { 'families' },
			locked = true,
			distance = 14,
			size = 2
		},

		-- Gate S
		{
			objName = 'prop_fnclink_03gate2',
			objYaw = 140.0,
			objCoords  = vector3(-157.077, -1659.919, 31.98),
			textCoords = vector3(-159.306, -1658.109, 33.98),
			authorizedJobs = { 'families' },
			locked = true,
			distance = 14,
			size = 2
		},

	--
	-- Vagos
	--

		-- Gate
		{
			objName = 'prop_fnclink_03gate2',
			objYaw = -130.0,
			objCoords  = vector3(303.171, -2009.71, 19.286),
			textCoords = vector3(301.407, -2011.956, 22.426),
			authorizedJobs = { 'vagos' },
			locked = true,
			distance = 14,
			size = 2
		},

		-- Door
		{
			objName = 'apa_prop_apa_cutscene_doorb',
			objYaw = 50.0,
			objCoords  = vector3(343.512, -2051.891, 22.375),
			textCoords = vector3(344.242, -2051.891, 23.375),
			authorizedJobs = { 'vagos' },
			locked = true
		},

	--
	-- Mafia
	--

		-- Gate
		{
			objName = 'apa_prop_ss1_mpint_garage2',
			objYaw = 90.0,
			objCoords  = vector3(-2652.429, 1307.366, 147.727),
			textCoords = vector3(-2652.429, 1307.366, 147.727),
			authorizedJobs = { 'mafia' },
			locked = true,
			distance = 18,
			size = 2
		},

		-- Door ext
		{
			objName = 'prop_lrggate_01c_r',
			objYaw = 90.0,
			objCoords  = vector3(-2652.752, 1327.773, 147.606),
			textCoords = vector3(-2652.752, 1326.38, 148.606),
			authorizedJobs = { 'mafia' },
			locked = true,
			distance = 5
		},

		-- Door int
		{
			objName = 'apa_p_mp_yacht_door_01',
			objYaw = 90.0,
			objCoords  = vector3(-2667.602, 1326.959, 147.593),
			textCoords = vector3(-2667.602, 1326.324, 148.593),
			authorizedJobs = { 'mafia' },
			locked = true,
			distance = 2
		},

	--
	-- Mechanic
	--

		-- Gate (ext)
		{
			objName = 'hei_prop_station_gate',
			objYaw = 90.0,
			objCoords  = vector3(-244.063, -1302.304, 30.30),
			textCoords = vector3(-244.063, -1305.577, 32.60),
			authorizedJobs = { 'mechanic', 'police' },
			locked = false,
			distance = 14,
			size = 2
		},

	--
	-- Mission Row
	-- Ground floor (0)
	--

		-- Parking Gate
		{
			objName = 'prop_gate_military_01',
			objYaw = -90.0,
			objCoords  = vector3(413.869, -1025.326, 28.314),
			textCoords = vector3(413.839, -1029.029, 31.500),
			authorizedJobs = { 'police' },
			locked = true,
			distance = 14,
			size = 2
		},

		-- To 1st floor (double door)
		{
			textCoords = vector3(442.923, -993.2, 31.689),
			authorizedJobs = { 'police' },
			locked = true,
			distance = 2.5,
			doors = {
				{
					objName = 'v_ilev_ph_gendoor006',
					objYaw = -90.0,
					objCoords = vector3(442.923, -993.864, 30.689)
				},

				{
					objName = 'v_ilev_ph_gendoor006',
					objYaw = 90.0,
					objCoords = vector3(442.923, -992.569, 30.689)
				}
			}
		},

		-- Entrance Doors (Police only)
		{
			textCoords = vector3(446.0, -999.096, 31.724),
			authorizedJobs = { 'police' },
			locked = true,
			distance = 2.5,
			doors = {
				{
					objName = 'v_ilev_gtdoor',
					objYaw = 45,
					objCoords = vector3(445.220, -998.988, 30.724)
				},

				{
					objName = 'v_ilev_gtdoor',
					objYaw = -180.0,
					objCoords = vector3(446.517, -998.988, 30.724)
				}
			}
		},

		-- Entrance Doors
		{
			textCoords = vector3(434.7, -982.0, 31.5),
			authorizedJobs = { 'police' },
			locked = false,
			distance = 2.5,
			doors = {
				{
					objName = 'v_ilev_ph_door01',
					objYaw = -90.0,
					objCoords = vector3(434.7, -980.6, 30.8)
				},

				{
					objName = 'v_ilev_ph_door002',
					objYaw = -90.0,
					objCoords = vector3(434.7, -983.2, 30.8)
				}
			}
		},

		-- To locker room & roof
		{
			objName = 'v_ilev_ph_gendoor004',
			objYaw = 90.0,
			objCoords  = vector3(449.6, -986.4, 30.6),
			textCoords = vector3(450.1, -986.3, 31.7),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- Rooftop
		{
			objName = 'v_ilev_gtdoor02',
			objYaw = 90.0,
			objCoords  = vector3(464.3, -984.6, 43.8),
			textCoords = vector3(464.3, -984.0, 44.8),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- Hallway to roof
		{
			objName = 'v_ilev_arm_secdoor',
			objYaw = 90.0,
			objCoords  = vector3(461.2, -985.3, 30.8),
			textCoords = vector3(461.5, -986.0, 31.5),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- Armory
		{
			objName = 'v_ilev_gtdoor',
			objYaw = 90.0,
			objCoords  = vector3(452.6, -982.7, 30.6),
			textCoords = vector3(453.0, -982.6, 31.7),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- Captain Office
		{
			objName = 'v_ilev_ph_gendoor002',
			objYaw = -180.0,
			objCoords  = vector3(447.2, -980.6, 30.6),
			textCoords = vector3(447.2, -980.0, 31.7),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- To downstairs (double doors)
		{
			textCoords = vector3(444.6, -989.4, 31.7),
			authorizedJobs = { 'police' },
			locked = true,
			distance = 4,
			doors = {
				{
					objName = 'v_ilev_ph_gendoor005',
					objYaw = 180.0,
					objCoords = vector3(443.9, -989.0, 30.6)
				},

				{
					objName = 'v_ilev_ph_gendoor005',
					objYaw = 0.0,
					objCoords = vector3(445.3, -988.7, 30.6)
				}
			}
		},

	--
	-- Mission Row
	-- 1st floor
	--

		-- Roof stairs 1st floor
		{
			objName = 'v_ilev_ph_gendoor006',
			objYaw = 90.0,
			objCoords  = vector3(463.709, -983.927, 35.93),
			textCoords = vector3(463.709, -983.927, 36.93),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- Glass doors (balcony)
		{
			textCoords = vector3(429.232, -995.1, 36.737),
			authorizedJobs = { 'police' },
			locked = true,
			distance = 2.5,
			doors = {
				{
					objName = 'slb2k11_glassdoor',
					objYaw = -90.0,
					objCoords = vector3(429.232, -995.639, 35.737)
				},

				{
					objName = 'slb2k11_glassdoor',
					objYaw = 90.0,
					objCoords = vector3(429.232, -994.630, 35.737)
				}
			}
		},

		-- Rest room (balcony)
		{
			objName = 'slb2k11_SECDOOR',
			objYaw = 0.0,
			objCoords  = vector3(464.158, -1011.260, 33.011),
			textCoords = vector3(463.491, -1011.162, 33.98),
			authorizedJobs = { 'police' },
			locked = true
		},

	--
	-- Mission Row
	-- cells (-1)
	--

		-- To storage / server / labo
		{
			textCoords = vector3(465.568, -990.0, 26.0682),
			authorizedJobs = { 'police' },
			locked = true,
			distance = 2.5,
			doors = {
				{
					objName = 'v_ilev_ph_gendoor003',
					objYaw = 90.0,
					objCoords = vector3(465.568, -988.703, 25.0682)
				},

				{
					objName = 'v_ilev_ph_gendoor003',
					objYaw = -90.0,
					objCoords = vector3(465.568, -991.304, 25.0682)
				}
			}
		},

		-- Interview 1
		{
			objName = 'v_ilev_gtdoor',
			objYaw = 180.0,
			objCoords  = vector3(468.487, -1003.547, 25.0131),
			textCoords = vector3(467.854, -1003.547, 26.0131),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- Interview 2
		{
			objName = 'v_ilev_gtdoor',
			objYaw = 180.0,
			objCoords  = vector3(477.049, -1003.547, 25.0131),
			textCoords = vector3(476.478, -1003.547, 26.0131),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- New Cell 1
		{
			objName = 'v_ilev_gtdoor',
			objYaw = 0.0,
			objCoords  = vector3(467.192, -996.459, 25.0131),
			textCoords = vector3(467.692, -996.459, 26.0131),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- New Cell 2
		{
			objName = 'v_ilev_gtdoor',
			objYaw = 0.0,
			objCoords  = vector3(471.475, -996.459, 25.0131),
			textCoords = vector3(471.975, -996.459, 26.0131),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- New Cell 3
		{
			objName = 'v_ilev_gtdoor',
			objYaw = 0.0,
			objCoords  = vector3(475.754, -996.459, 25.0131),
			textCoords = vector3(476.254, -996.459, 26.0131),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- New Cell 4
		{
			objName = 'v_ilev_gtdoor',
			objYaw = 0.0,
			objCoords  = vector3(480.030, -996.459, 25.0131),
			textCoords = vector3(480.530, -996.459, 26.0131),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- Main Cells
		{
			objName = 'v_ilev_ph_cellgate',
			objYaw = 0.0,
			objCoords  = vector3(463.8, -992.6, 24.9),
			textCoords = vector3(463.3, -992.6, 25.1),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- Cell 1
		{
			objName = 'v_ilev_ph_cellgate',
			objYaw = -90.0,
			objCoords  = vector3(462.3, -993.6, 24.9),
			textCoords = vector3(461.8, -993.3, 25.0),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- Cell 2
		{
			objName = 'v_ilev_ph_cellgate',
			objYaw = 90.0,
			objCoords  = vector3(462.3, -998.1, 24.9),
			textCoords = vector3(461.8, -998.8, 25.0),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- Cell 3
		{
			objName = 'v_ilev_ph_cellgate',
			objYaw = 90.0,
			objCoords  = vector3(462.7, -1001.9, 24.9),
			textCoords = vector3(461.8, -1002.4, 25.0),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- To Back
		{
			objName = 'v_ilev_gtdoor',
			objYaw = 0.0,
			objCoords  = vector3(463.4, -1003.5, 25.0),
			textCoords = vector3(464.0, -1003.5, 25.5),
			authorizedJobs = { 'police' },
			locked = true
		},

		-- Back (double doors)
		{
			textCoords = vector3(468.6, -1014.4, 27.1),
			authorizedJobs = { 'police' },
			locked = true,
			distance = 4,
			doors = {
				{
					objName = 'v_ilev_rc_door2',
					objYaw = 0.0,
					objCoords  = vector3(467.3, -1014.4, 26.5)
				},

				{
					objName = 'v_ilev_rc_door2',
					objYaw = 180.0,
					objCoords  = vector3(469.9, -1014.4, 26.5)
				}
			}
		},

		-- Back Gate
		{
			objName = 'hei_prop_station_gate',
			objYaw = 90.0,
			objCoords  = vector3(488.8, -1017.2, 27.1),
			textCoords = vector3(488.8, -1020.2, 30.0),
			authorizedJobs = { 'police' },
			locked = true,
			distance = 14,
			size = 2
		},

	--
	-- Bolingbroke Penitentiary
	--

		-- Entrance (Two big gates)
		{
			objName = 'prop_gate_prison_01',
			objCoords  = vector3(1844.9, 2604.8, 44.6),
			textCoords = vector3(1844.9, 2608.5, 48.0),
			authorizedJobs = { 'police' },
			locked = true,
			distance = 12,
			size = 2
		},

		{
			objName = 'prop_gate_prison_01',
			objCoords  = vector3(1818.5, 2604.8, 44.6),
			textCoords = vector3(1818.5, 2608.4, 48.0),
			authorizedJobs = { 'police' },
			locked = true,
			distance = 12,
			size = 2
		},

	--
	-- Sandy Shores
	--

	-- Entrance
	--	{
	--		objName = 'v_ilev_shrfdoor',
	--		objYaw = 30.0,
	--		objCoords  = vector3(1855.1, 3683.5, 34.2),
	--		textCoords = vector3(1855.1, 3683.5, 35.0),
	--		authorizedJobs = { 'police' },
	--		locked = false
	--	},

	--
	-- Paleto Bay
	--

	-- Entrance (double doors)
	--	{
	--		textCoords = vector3(-443.5, 6016.3, 32.0),
	--		authorizedJobs = { 'police' },
	--		locked = false,
	--		distance = 2.5,
	--		doors = {
	--			{
	--				objName = 'v_ilev_shrf2door',
	--				objYaw = -45.0,
	--				objCoords  = vector3(-443.1, 6015.6, 31.7),
	--			},
	--
	--			{
	--				objName = 'v_ilev_shrf2door',
	--				objYaw = 135.0,
	--				objCoords  = vector3(-443.9, 6016.6, 31.7)
	--			}
	--		}
	--	},

}
