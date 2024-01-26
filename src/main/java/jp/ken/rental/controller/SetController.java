package jp.ken.rental.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.ken.rental.dao.MembersDao;
import jp.ken.rental.entity.Members;
import jp.ken.rental.groups.GroupOrder;
import jp.ken.rental.model.MemberModel;


@Controller
public class SetController {
	@Autowired
	private MembersDao membersDao ;

	@RequestMapping(value = "/aaa",method = RequestMethod.GET)
	public String toSearch(Model model) {
		model.addAttribute("membeModel",new MemberModel());
		model.addAttribute("headline","会員登録");
		return "registration";
	}

	@RequestMapping(value = "/aaa",method = RequestMethod.POST)
	public String searchMembers(Model model, @Validated(GroupOrder.class)@ModelAttribute MemberModel memberModel,
			BindingResult result) {
		if(result.hasErrors()) {
		model.addAttribute("headline","会員登録");
		return "registration";
	}

		Members members = new Members();
		members.setName(memberModel.getName());
		members.setEmail(memberModel.getEmail());
		members.setPhone(memberModel.getPhone());
		members.setBirthday(Members.parseDate(memberModel.getBirthday()));
		members.setCard(memberModel.getCard());


		int numberOfRow = membersDao.insert(members);
		if(numberOfRow == 0) {
			model.addAttribute("message","登録に失敗しました。");
			model.addAttribute("headline","会員登録");
			return "registration";
		}

		return "redirect:/header";
    }

	@RequestMapping(value = "/aaa",method = RequestMethod.GET)
	public String toCopm(Model model) {
		model.addAttribute("headline","会員登録完了");
		return "registrationComplete";


	}
}
