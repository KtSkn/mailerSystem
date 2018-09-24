/* ユーザマスタ */
CREATE TABLE `mailer_db`.`mst_user` (
  `id` INT(100) NOT NULL AUTO_INCREMENT,
  `userid` VARCHAR(10) NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `mail` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`));

/* 連絡先マスタ */
CREATE TABLE `mailer_db`.`mst_contact` (
  `id` INT(100) NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(10) NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  `mail` VARCHAR(255) NOT NULL,
  `group_id` INT(100) NOT NULL,
  `del_flg` INT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`));
