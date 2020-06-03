INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_ballas','Ballas',1),
	('property_black_money_ballas', 'Argent Sale Ballas', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_ballas','Ballas',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_ballas', 'Ballas', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('ballas', 'Ballas', 1)
;

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	('ballas', 0, 'soldato', 'Dealer', 200, 'null', 'null'),
	('ballas', 1, 'capo', 'Braqueur', 400, 'null', 'null'),
	('ballas', 2, 'consigliere', 'Bandit', 600, 'null', 'null'),
	('ballas', 3, 'boss', 'Chef du Gang', 1000, 'null', 'null')
;

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('licballas', 'Formulaire cession ballas', 1, 0, 1)
;