INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('yusuf', 'Apparence Luxe', 1, 0, 1),
('grip', 'Poignée', 1, 0, 1),
('flashlight', 'Lampe torche', 1, 0, 1),
('suppressor', 'Silencieux', 1, 0, 1);

INSERT INTO `shops` ( `store`, `item`, `price`) VALUES
( 'WeaponShop2', 'yusuf', 400),
( 'WeaponShop', 'grip', 250),
( 'WeaponShop2', 'grip', 250),
( 'PoliceShop', 'grip', 250),
( 'WeaponShop', 'flashlight', 60),
( 'WeaponShop2', 'flashlight', 60),
( 'PoliceShop', 'flashlight', 60),
( 'WeaponShop2', 'suppressor', 750),
( 'PoliceShop', 'suppressor', 750);