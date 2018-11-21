/*受信メールインサート*/
INSERT INTO `mailer_db`.`receive_mail` (`id`, `mail`, `title`, `maintxt`, `user_id`, `group_id`, `read_flg`, `del_flg`, `rcv_date`) VALUES ('1', 'aaa@aaa', 'aaa', 'aaa', '1234', '1234', '0', '0', '20181101');

INSERT INTO `mailer_db`.`receive_mail` (`id`, `mail`, `title`, `maintxt`, `user_id`, `group_id`, `read_flg`, `del_flg`, `rcv_date`) VALUES ('2', 'bbb@bbb', 'bbb', 'bbb', '4567', '4567', '0', '0', '20181102');
INSERT INTO `mailer_db`.`receive_mail` (`id`, `mail`, `title`, `maintxt`, `user_id`, `group_id`, `read_flg`, `del_flg`, `rcv_date`) VALUES ('3', 'ccc@ccc', 'ccc', 'ccc', '7890', '7890', '0', '0', '20181115');

/*送信メールインサート*/
NSERT INTO `mailer_db`.`send_mail` (`mail`, `title`, `maintxt`, `user_id`, `group_id`, `del_flg`, `send_date`) VALUES ('ddd@ddd', 'ddd', 'ddd', '1234', '1234', '0', '20181001');
INSERT INTO `mailer_db`.`send_mail` (`mail`, `title`, `maintxt`, `user_id`, `group_id`, `del_flg`, `send_date`) VALUES ('eee@eee', 'eee', 'eee', '2345', '2345', '0', '20181004');
INSERT INTO `mailer_db`.`send_mail` (`mail`, `title`, `maintxt`, `user_id`, `group_id`, `del_flg`, `send_date`) VALUES ('fff@fff', 'fff', 'fff', '4567', '4567', '0', '20180901');
