package jp.org.domain;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

//受信メールのデータ用
public class ReceiveMail {
	private int id;
	
	private String mail;
	
	private String title;
	
	private String maintxt;
	
	private String user_id;
	
	private String group_id;
	
	private int read_flg;
	
	private int del_flg;
	
	private Timestamp rcv_date;
	
	public ReceiveMail(int id,String mail,String  title,String  maintxt,String  user_id,String  group_id,int  read_flg,int  del_flg,Timestamp  rcv_date){
		this.id = id;
		this.mail = mail;
		this.title = title;
		this.maintxt = maintxt;
		this.user_id = user_id;
		this.group_id = group_id;
		this.read_flg = read_flg;
		this.del_flg = del_flg;
		this.rcv_date = rcv_date;
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

	public int getRead_flg() {
		return read_flg;
	}

	public void setRead_flg(int read_flg) {
		this.read_flg = read_flg;
	}

	public int getDel_flg() {
		return del_flg;
	}

	public void setDel_flg(int del_flg) {
		this.del_flg = del_flg;
	}

	public Timestamp getRcv_date() {
		return rcv_date;
	}

	public void setRcv_date(Timestamp rcv_date) {
		this.rcv_date = rcv_date;
	}

}
