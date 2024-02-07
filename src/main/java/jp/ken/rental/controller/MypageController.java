package jp.ken.rental.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.ken.rental.dao.MembersDao;
import jp.ken.rental.entity.Members;
import jp.ken.rental.model.LoginModel;

@Controller
public class MypageController {

	@Autowired
	private MembersDao membersDao;

	@RequestMapping("/mypage")
	public String showMyPage(Model model, HttpSession session) {
		LoginModel loginModel = (LoginModel) session.getAttribute("loginModel");
		if (loginModel != null && loginModel.getMail() != null) {
			Members member = membersDao.getMembersByMail(loginModel.getMail());
			if (member != null) {
				model.addAttribute("memberModel", member.getId());
				model.addAttribute("memberModel", member.getName());
				model.addAttribute("memberModel", member.getZip());
				model.addAttribute("memberModel", member.getAddress());
				model.addAttribute("memberModel", member.getPhone());
				model.addAttribute("memberModel", member.getMail());
				model.addAttribute("memberModel", member.getBirthday());
				model.addAttribute("memberModel", member.getCard());
				model.addAttribute("memberModel", member.getPassword());
			} else {
				model.addAttribute("errorMessage","ユーザー情報が見つかりません。");
			}
		} else {
				return "redirect:/login";
		}
		return "mypage";
	}
}

