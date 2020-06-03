INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_mafia','Mafia',1),
	('property_black_money_mafia', 'Argent Sale Mafia', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_mafia','Mafia',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_mafia', 'Mafia', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('mafia', 'Mafia', 1)
;

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	('mafia', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
	('mafia', 1, 'capo', 'Capo', 1800, '{}', '{}'),
	('mafia', 2, 'consigliere', 'Consigliere', 2100, '{}', '{}'),
	('mafia', 3, 'boss', 'Parain', 2700, '{}', '{}')
;

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('licmafia', 'Formulaire cession mafia', 1, 0, 1)
;