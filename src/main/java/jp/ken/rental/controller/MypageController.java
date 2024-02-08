package jp.ken.rental.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import jp.ken.rental.dao.MembersDao;
import jp.ken.rental.entity.Members;
import jp.ken.rental.model.LoginModel;

@Controller
@SessionAttributes("loginModel")
public class MypageController {
	@Autowired
	private MembersDao membersDao;

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String showMyPage(Model model, HttpSession session) {
	    LoginModel loginModel = (LoginModel)session.getAttribute("loginModel");

	    if (loginModel != null && loginModel.getMail() != null) {
	        Members member = membersDao.getMembersByMail(loginModel.getMail());

	        if (member != null) {
	            model.addAttribute("memberId", member.getId());
	            model.addAttribute("memberName", member.getName());
	            model.addAttribute("memberZip", member.getZip());
	            model.addAttribute("memberAddress", member.getAddress());
	            model.addAttribute("memberPhone", member.getPhone());
	            model.addAttribute("memberMail", member.getMail());
	            model.addAttribute("memberBirthday", member.getBirthday());
	            model.addAttribute("memberCard", member.getCard());
	            model.addAttribute("memberPassword", member.getPassword());
	        } else {
	            model.addAttribute("errorMessage","ユーザー情報が見つかりません。");
	        }
	    } else {
	        return "redirect:/login";
	    }
	    return "mypage";
	}
}