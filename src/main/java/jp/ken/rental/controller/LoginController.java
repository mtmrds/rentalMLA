package jp.ken.rental.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import jp.ken.rental.dao.MembersDao;
import jp.ken.rental.entity.Members;
import jp.ken.rental.model.LoginModel;


@Controller
@SessionAttributes({"loginModel", "memberModel"})
public class LoginController {

    @Autowired
    private MembersDao membersDao;

    // GETリクエストでログインページにアクセス
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String toLogin(Model model) {
        model.addAttribute("LoginModel", new LoginModel());
        return "login";
    }

    // POSTリクエストでログイン試行
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String toLoginTrial(@Validated @ModelAttribute LoginModel loginModel, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("message", "入力エラーがあります");
            return "login";
        }

        boolean loginIdIsEmpty = loginModel.getLoginId().isEmpty();
        boolean passwordIsEmpty = loginModel.getPassword().isEmpty();



        // IDとパスワードが両方入力された場合のみ認証を試行する
        if (!loginIdIsEmpty && !passwordIsEmpty) {
            Members member = membersDao.getMembersById(loginModel.getLoginId());
            if (member != null && member.getPassword().equals(hashPassword(loginModel.getPassword()))) {
                // ログイン成功時の処理
                return "top";
            } else {
                model.addAttribute("message", "IDまたはパスワードが正しくありません。");
                return "redirect:/login";
            }
        } else {
            model.addAttribute("message", "IDとパスワードの両方を入力してください。");
            return "login";
        }
    }

    private String hashPassword(String password) {

    	return "top";
    }

}
