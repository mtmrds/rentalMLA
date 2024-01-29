package jp.ken.rental.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import jp.ken.rental.dao.MembersDao;
import jp.ken.rental.entity.Members;
import jp.ken.rental.model.LoginModel;

@Controller
@SessionAttributes("loginModel")
public class TopController {
	@Autowired
	private MembersDao membersDao;

	@ModelAttribute("loginModel")
	public LoginModel setupLoginForm() {
		return new LoginModel();
	}
	@RequestMapping(value = "/top", method = RequestMethod.GET)
	public String toLogin() {
		return "top";
	}
	@RequestMapping(value = "/top", method = RequestMethod.POST)
	public String toConfirm(@ModelAttribute LoginModel lgModel, Model model) {
		//ログイン認証
		boolean userIsEmpty = lgModel.getLoginId().isEmpty();
		boolean passIsEmpty = lgModel.getPassword().isEmpty();

		if(userIsEmpty && passIsEmpty) {
			//バリデ。errorMessageで各内容を指定
			model.addAttribute("errorMessage", "ユーザー名とパスワードは入力必須項目です");
		} else if(userIsEmpty || passIsEmpty) {
			model.addAttribute("errorMessage", "ユーザー名とパスワードは入力必須項目です");
		} else if(!userIsEmpty && !passIsEmpty) {
			String userName = new String(lgModel.getLoginId());
			String password = new String(lgModel.getPassword());
			Members user = membersDao.getMembersByUserPass(userName, password);
        if(user == null) {
        	model.addAttribute("errorMessage", "ユーザー名もしくはパスワードが間違っています");
        } else {
        	return "redirect:mypage";//「マイページに飛ばす」という処理をしたいので仮で「mypage」を置いてます
        	}
        }
		return "top";
	}
}