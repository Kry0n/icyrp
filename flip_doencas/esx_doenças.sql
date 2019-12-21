INSERT INTO `items` (name, label) VALUES
  ('sciroppo','Bisolvon'),
  ('antibiotico','Buscopan'),
  ('antibioticorosacea','Antibiotico')
;

ALTER TABLE `users` ADD `malato` varchar(255) COLLATE utf8mb4_bin DEFAULT 'no';
