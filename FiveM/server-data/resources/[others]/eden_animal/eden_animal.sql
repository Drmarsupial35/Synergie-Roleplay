INSERT INTO `shops` (`store`, `item`, `price`) VALUES
	('RobsLiquor', 'croquettes', 100),
	('LTDgasoline', 'croquettes', 100),
	('TwentyFourSeven', 'croquettes', 100)
;

INSERT INTO `items` (`name`, `label`, `limit`) VALUES
	('croquettes', 'Croquettes', 20)
;

ALTER TABLE `users` ADD COLUMN `pet` VARCHAR(50) NOT NULL;