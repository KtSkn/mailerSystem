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
public class LoginController {
 @RequestMapping(value = "/", method = RequestMethod.GET)
 public String index(Model model) {
 return "index";
 }

// ログイン時 
@RequestMapping(value = "/login", method = RequestMethod.POST)
public String login(Model model, @ModelAttribute("loginForm") LoginForm loginForm) {
 model.addAttribute("loginName", loginForm.getLoginName());
 
 return "top";
 }
 
// アカウント作成
@RequestMapping(value = "/makeAccount", method = RequestMethod.GET)
public String makeAccount(Model model, @ModelAttribute("loginForm") LoginForm loginForm) {
 model.addAttribute("loginName", loginForm.getLoginName());
 
 return "makeAccount";
 }

// アカウント設定
@RequestMapping(value = "/accountSetting", method = RequestMethod.GET)
public String accountSetting(Model model, @ModelAttribute("loginForm") LoginForm loginForm) {
 model.addAttribute("loginName", loginForm.getLoginName());
 
 return "accountSetting";
 }


@Autowired
private JdbcTemplate jdbcTemplate;

@RequestMapping(value = "/dbtest", method = RequestMethod.GET)
public String dbtest(Locale locale, Model model) {

   List<Map<String, Object>>  list = jdbcTemplate.queryForList("select * from mst_user");

   model.addAttribute("data", list.get(0));
   return "dbtest";
}

 

}