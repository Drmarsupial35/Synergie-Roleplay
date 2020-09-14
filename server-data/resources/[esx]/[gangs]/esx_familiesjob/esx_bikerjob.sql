INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_families','Families',1),
	('property_black_money_families', 'Argent Sale Families', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_families','Families',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_families', 'Families', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('families', 'Families', 1)
;

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	('families', 0, 'soldato', 'Dealer', 200, 'null', 'null'),
	('families', 1, 'capo', 'Motard', 400, 'null', 'null'),
	('families', 2, 'consigliere', 'Bandit', 600, 'null', 'null'),
	('families', 3, 'boss', 'Chef du Gang', 1000, 'null', 'null')
;

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('licfamilies', 'Formulaire cession families', 1, 0, 1)
;