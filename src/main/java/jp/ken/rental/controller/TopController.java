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
import jp.ken.rental.model.ItemModel;
import jp.ken.rental.model.LoginModel;

@Controller
@SessionAttributes({"loginModel", "cartList"})
public class TopController {

	@Autowired
	private MembersDao membersDao;

	@ModelAttribute("loginModel")
	public LoginModel setupLoginForm() {
		return new LoginModel();
	}
	//トップページを表示
	@RequestMapping(value = "/top", method = RequestMethod.GET)
	public String toTop() {
		return "top";
	}
	//Top.jspの「<input type="submit" value="検索する" class="btn">」がPOST通信のため、リクマを追加。
	//redirectを利用して、SearchControllerに飛ばす(GET通信)。
	//redirectにしない場合はエラーになる→「JSP ファイル [/WEB-INF/views/search.jsp] が見つかりません」
	@RequestMapping(value = "/top", method = RequestMethod.POST)
	public String topSearch() {
		return "redirect:/search";
	}
	//ログイン認証用
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String memLogin() {
		return "login";
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String toConfirm(@ModelAttribute LoginModel lgModel, Model model,@ModelAttribute ItemModel itemModel ) {

		boolean mailIsEmpty = lgModel.getMail().isEmpty();
		boolean passIsEmpty = lgModel.getPassword().isEmpty();

		if(mailIsEmpty && passIsEmpty) {
			//バリデ。errorMessageで各内容を指定
			model.addAttribute("errorMessage", "メールアドレスとパスワードは入力必須項目です");
		} else if(mailIsEmpty || passIsEmpty) {
			model.addAttribute("errorMessage", "メールアドレス、パスワードは共に入力必須項目です");
		} else if(!mailIsEmpty && !passIsEmpty) {
			String mail = new String(lgModel.getMail());
			String password = new String(lgModel.getPassword());
			Members user = membersDao.getMembersByUserPass(mail, password);
        if(user == null) {
        	model.addAttribute("errorMessage", "メールアドレスもしくはパスワードが間違っています");
        	return "login";
        } else {
        	//ログイン後にSQLで引っ張ってきた名前を表示する
        	lgModel.setName(user.getName());
            model.addAttribute("loginModel", lgModel);
            model.addAttribute("itemModel", itemModel);
            if(lgModel.getMail().equals("tencho@ken.com") && lgModel.getPassword().equals("tencho00")) {
            	return "tenchoEmp";
            } else {
            	return "redirect:/top";
            	}
        	}
        }
		return "login";
	}
}