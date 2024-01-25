package jp.ken.rental;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.ken.rental.groups.GroupOrder;
import jp.ken.rental.model.MemberModel;


@Controller
public class AController {
	@Autowired
	private MembersDao membersDao ;

	@RequestMapping(value = "/search",method = RequestMethod.GET)
	public String toSearch(Model model) {
		model.addAttribute("membeModel",new MemberModel());
		model.addAttribute("headline","登録");
		return "jsp";
	}

	@RequestMapping(value = "/search",method = RequestMethod.POST)
	public String searchMembers(Model model, @Validated(GroupOrder.class)@ModelAttribute MemberModel memberModel,
			BindingResult result) {
		if(result.hasErrors()) {






			model.addAttribute("headline","登録");
		}

    }
}
