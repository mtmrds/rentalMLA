package jp.ken.rental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import jp.ken.rental.model.MemberModel;


@Controller
@RequestMapping("aaa")
@SessionAttributes({"loginModel", "memberModel"})
public class SetController {

	@ModelAttribute("memberModel")
		public MemberModel setupMemberModel() {
		return new MemberModel();
	}

	@RequestMapping(method = RequestMethod.GET)
	public String toSearch(Model model) {

		return "registration";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String searchMembers() {

		return "registration";
	}

	@RequestMapping(method = RequestMethod.POST, params = "sss")
	public String toCopm () {

		return "registrationComplete";



	}
}
