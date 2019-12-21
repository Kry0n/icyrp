INSERT INTO `jobs` (name, label) VALUES
	('miner', 'Mineiro')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('miner', 0, 'employee', 'Empregado', 0, '{}', '{}')
;

INSERT INTO `items` (`name`, `label`, `limit`) VALUES
	('stones', 'Pedras', 40),
	('washedstones', 'Pedras Lavadas', 40),
	('diamond', 'Diamante', 100),
	('gold', 'Ouro', 100),
	('iron', 'Ferro', 100),
	('copper', 'Cobre', 100)
;
