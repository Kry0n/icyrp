USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_mecanico', 'mecanico', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_mecanico', 'mecanico', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('mecanico', 'mecanico')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('mecanico',0,'recrue','Recrue',12,'{}','{}'),
	('mecanico',1,'novice','Novice',24,'{}','{}'),
	('mecanico',2,'experimente','Experimente',36,'{}','{}'),
	('mecanico',3,'chief',"Chef d\'équipe",48,'{}','{}'),
	('mecanico',4,'boss','Patron',0,'{}','{}')
;

INSERT INTO `items` (name, label, `limit`) VALUES
	('gazbottle', 'gazbottle', 11),
	('fixtool', 'fixtool', 6),
	('carotool', 'carotool', 4),
	('blowpipe', 'blowpipe', 10),
	('fixkit', 'fixkit', 5),
	('carokit', 'carokit', 3)
;
