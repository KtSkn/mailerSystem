package jp.org.web;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.org.domain.ReceiveMail;
import jp.org.form.LoginForm;
import jp.org.service.MailService;
import jp.org.service.MailServiceImpl;
 
 
@Controller
public class MainController {
 
	@Autowired
    private JdbcTemplate jdbc;
	
 @RequestMapping(value = "/mailList", method = RequestMethod.GET)
 public String index(Model model) {
	
	//受信メールテーブル取得
	List<ReceiveMail> list = findAll();
	model.addAttribute("rcvMailData", list);
	 
 return "mailList";
 }
 
 public List<ReceiveMail> findAll(){ 
     List<ReceiveMail> list = new LinkedList<ReceiveMail>();
     
     List<Map<String, Object>>  dblist = jdbc.queryForList("select * from receive_mail");

     for(int i = 0 ; i<dblist.size(); i++ ){
	        	list.add(new ReceiveMail(
	        			(Integer)dblist.get(i).get("id"),
	        			dblist.get(i).get("mail").toString(),
	        			dblist.get(i).get("title").toString(),
	        			dblist.get(i).get("maintxt").toString(),
	        			dblist.get(i).get("user_id").toString(),
	        			dblist.get(i).get("group_id").toString(),
	        			(Integer)(dblist.get(i).get("read_flg")),
	        			(Integer)(dblist.get(i).get("del_flg")),
	        			(Timestamp)(dblist.get(i).get("rcv_date"))
	        			)
	        	);
     }    	
     return list;
 } 

 

}