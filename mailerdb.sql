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
/*受信メール*/
CREATE TABLE `mailer_db`.`receive_mail` (
  `id` INT(255) NOT NULL,
  `mail` VARCHAR(255) NOT NULL,
  `title` VARCHAR(255) NULL,
  `maintxt` VARCHAR(10000) NULL,
  `user_id` VARCHAR(10) NOT NULL,
  `group_id` INT(100) NOT NULL,
  `read_flg` INT(1) NOT NULL DEFAULT 0,
  `del_flg` INT(1) NOT NULL DEFAULT 0,
  `rcv_date` DATETIME NOT NULL,
  PRIMARY KEY (`id`));

  ALTER TABLE `mailer_db`.`receive_mail` 
CHANGE COLUMN `id` `id` INT(255) NOT NULL AUTO_INCREMENT ;

/*送信メール*/
CREATE TABLE `mailer_db`.`send_mail` (
  `id` INT(255) NOT NULL AUTO_INCREMENT,
  `mail` VARCHAR(255) NOT NULL,
  `title` VARCHAR(255) NULL,
  `maintxt` VARCHAR(10000) NULL,
  `user_id` VARCHAR(10) NOT NULL,
  `group_id` VARCHAR(100) NOT NULL,
  `del_flg` INT(1) NOT NULL DEFAULT 0,
  `send_date` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

ALTER TABLE `mailer_db`.`send_mail` 
CHANGE COLUMN `send_date` `send_date` DATETIME NOT NULL ;
