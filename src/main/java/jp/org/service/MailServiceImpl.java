package jp.org.service;

import java.sql.Timestamp;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import jp.org.domain.ReceiveMail;

@Service
public class MailServiceImpl implements MailService{
    
	@Autowired
    private JdbcTemplate jdbc;
	
    public List<ReceiveMail> findAll() { //すべてのidをとる
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
