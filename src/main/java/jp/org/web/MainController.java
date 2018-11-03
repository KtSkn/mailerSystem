package jp.org.web;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.org.form.LoginForm;
 
 
@Controller
public class MainController {
 @RequestMapping(value = "/mailList", method = RequestMethod.GET)
 public String index(Model model) {
 return "mailList";
 }
 

 

}