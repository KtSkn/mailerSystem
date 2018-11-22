package jp.org.domain;

import java.sql.Timestamp;

//送信メール用データ
public class SendMail {
	
	private int id;
	
	private String mail;
	
	private String title;
	
	private String maintxt;
	
	private String user_id;
	
	private String group_id;
	
	private int del_flg;
	
	private Timestamp send_date;


	public SendMail(Integer id, String mail, String title, String maintxt, String user_id, String group_id,
			Integer del_flg, Timestamp send_date) {
		// TODO Auto-generated constructor stub
		this.id = id;
		this.mail = mail;
		this.title = title;
		this.maintxt = maintxt;
		this.user_id = user_id;
		this.group_id = group_id;
		this.del_flg = del_flg;
		this.send_date = send_date;

	}
	
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getMail() {
		return mail;
	}


	public void setMail(String mail) {
		this.mail = mail;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getMaintxt() {
		return maintxt;
	}


	public void setMaintxt(String maintxt) {
		this.maintxt = maintxt;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getGroup_id() {
		return group_id;
	}


	public void setGroup_id(String group_id) {
		this.group_id = group_id;
	}


	public int getDel_flg() {
		return del_flg;
	}


	public void setDel_flg(int del_flg) {
		this.del_flg = del_flg;
	}


	public Timestamp getSend_date() {
		return send_date;
	}


	public void setSend_date(Timestamp send_date) {
		this.send_date = send_date;
	}



}
