package jp.ken.rental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import jp.ken.rental.model.LoginModel;

@Controller
@RequestMapping("loginTop")
@SessionAttributes("loginModel")
public class LoginController {

		@ModelAttribute("loginModel")
		public LoginModel setupLoginForm() {
			return new LoginModel();
		}

		@RequestMapping(method = RequestMethod.GET)
		public String toLogin () {
			return "loginTop";
		}

		@RequestMapping(method = RequestMethod.POST)
		public String toRegist(@Validated @ModelAttribute  LoginModel IModel, BindingResult result, Model model) {
			if (result.hasErrors()) {
				return "loginTop";
			}else if (IModel.getLoginId().equals("loginID") && IModel.getPassword().equals("passwrod")) {
				return "redirect:/itemList";
			}else {
				model.addAttribute("errorMessage","ログインIDもしくはパスワードが間違っています");
				return "loginTop";
			}
	}
}
