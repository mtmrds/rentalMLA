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
import jp.ken.rental.model.MemberModel;

@Controller
@SessionAttributes({"loginModel", "memberModel", "cartList"})
public class SetController {
	@Autowired
	private MembersDao membersDao;

	//top.jspの<a href="setRegist">新規会員登録</a>で下記に飛んでくる
	@RequestMapping(value = "/setRegist", method = RequestMethod.GET)
	public String toConfirm(Model model) {
		//空っぽのページ（入力できる状態のページ）を表示する
        model.addAttribute("memberModel", new MemberModel());
        return "registration";
	}
	@RequestMapping(value = "/setRegist", method = RequestMethod.POST)
	public String toRegist(Model model, @Validated @ModelAttribute MemberModel memberModel, BindingResult result) {
		if (result.hasErrors()) {
	        return "registration";
	    }
	    Members members = new Members();

	    members.setName(memberModel.getName());
	    members.setBirthday(Members.parseDate(memberModel.getBirthday()));
	    members.setZip(memberModel.getZip());
	    members.setAddress(memberModel.getAddress());
		members.setPhone(memberModel.getPhone());
		members.setMail(memberModel.getMail());
		members.setPassword(memberModel.getPassword());
		members.setPlan(memberModel.getPlan());
		members.setCard(memberModel.getCard());

	    int numberOfRow = membersDao.insert(members);

	    if (numberOfRow == 0) {

	        return "registration";
	    }
        return "redirect:/compRegist";
	}
	@RequestMapping(value = "/compRegist", method = RequestMethod.GET)
	public String toCompRegist() {
        return "registrationComplete";
	}
}