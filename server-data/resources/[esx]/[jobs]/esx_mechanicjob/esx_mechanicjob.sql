INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_mechanic', 'Mécanicien', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_mechanic', 'Mécanicien', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('mechanic', 'Mécanicien')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('mechanic',0,'recrue','Recrue',12,'{}','{}'),
	('mechanic',1,'novice','Novice',24,'{}','{}'),
	('mechanic',2,'experimente','Experimente',36,'{}','{}'),
	('mechanic',3,'chief',"Chef d\'équipe",48,'{}','{}'),
	('mechanic',4,'boss','Patron',0,'{}','{}')
;

INSERT INTO `items` (name, label, weight) VALUES
	('gazbottle', 'Bouteille de gaz', 2),
	('fixtool', 'Outils de réparation', 2),
	('carotool', 'Outils de carosserie', 2),
	('blowpipe', 'Chalumeaux', 2),
	('fixkit', 'Kit réparation', 3),
	('carokit', 'Kit carosserie', 3)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_mechanic','Mécanicien',1)
;