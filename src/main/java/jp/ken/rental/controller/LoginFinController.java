package jp.ken.rental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@RequestMapping("finish")
@SessionAttributes({"loginModel", "memberModel"})
public class LoginFinController {

	@RequestMapping(method = RequestMethod.POST)
	public String toFinish(Model model) {
		model.addAttribute("message", "登録が完了しました");
		return "registrationComplete";
	}
	public String toLogout(Model model, SessionStatus status) {
		status.setComplete();
		return "redirect:/logintop";
	}
}
