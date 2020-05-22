CREATE TABLE `weashops` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`zone` varchar(255) NOT NULL,
	`item` varchar(255) NOT NULL,
	`price` int(11) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `licenses` (`type`, `label`) VALUES
	('weapon', "Permis de port d'arme")
;

INSERT INTO `weashops` (`zone`, `item`, `price`) VALUES
	('GunShop','weapon_pistol', 300),
	('GunShop','weapon_heavypistol', 300),
	('GunShop','weapon_snspistol', 300),
	('GunShop','weapon_revolver', 300),
	('GunShop','weapon_stungun', 300),
	('GunShop','gadget_parachute', 300),
	('BlackWeashop','weapon_doubleaction', 500),
	('BlackWeashop','weapon_marksmanpistol', 500),
	('BlackWeashop','weapon_vintagepistol', 500),
	('BlackWeashop','weapon_microsmg', 500),
	('BlackWeashop','weapon_sawnoffshotgun', 500),
	('BlackWeashop','weapon_dbshotgun', 500),
	('BlackWeashop','weapon_compactrifle', 500),
	('BlackWeashop','weapon_gusenberg', 500),
	('BlackWeashop','weapon_sniperrifle', 500),
	('BlackWeashop','weapon_molotov', 500),
	('BlackWeashop','weapon_smokegrenade', 500),
	('BlackWeashop','weapon_pipebomb', 500),
	('BlackWeashop','weapon_stickybomb', 500)
;
