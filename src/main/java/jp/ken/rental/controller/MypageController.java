package jp.ken.rental.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	        	// memberModelを追加する
	            model.addAttribute("memberModel", member);
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
	@RequestMapping(value = "/deleteAccount", method = RequestMethod.POST)
	public String deleteAccount(Model model, HttpSession session) {
	    LoginModel loginModel = (LoginModel) session.getAttribute("loginModel");

	    if (loginModel != null && loginModel.getMail() != null) {
	        int result = membersDao.removeMember(loginModel.getMail());

	        if (result > 0) {
	            // 削除成功した場合はログアウトさせる
	            session.removeAttribute("loginModel");
	            return "redirect:/login";
	        } else {
	            model.addAttribute("errorMessage", "会員情報の削除に失敗しました。");
	        }
	    } else {
	        return "redirect:/login";
	    }
	    return "mypage";
	}
	@RequestMapping(value = "/editAccount", method = RequestMethod.POST)
	public String editAccount(@ModelAttribute("memberModel") Members member, @RequestParam("confirmPassword") String confirmPassword, Model model, HttpSession session) {
	    LoginModel loginModel = (LoginModel) session.getAttribute("loginModel");

	    if (loginModel != null && loginModel.getMail() != null) {
	        // セッションから取得したメールアドレスで会員情報を取得
	        Members existingMember = membersDao.getMembersByMail(loginModel.getMail());

	        if (existingMember != null) {
	            // 取得した会員情報を更新
	            existingMember.setName(member.getName());
	            existingMember.setZip(member.getZip());
	            existingMember.setAddress(member.getAddress());
	            existingMember.setPhone(member.getPhone());
	            existingMember.setBirthday(member.getBirthday());
	            existingMember.setCard(member.getCard());

	            // 確認用パスワードが入力されている場合のみパスワードを更新する
	            if (!confirmPassword.isEmpty()) {
	                existingMember.setPassword(member.getPassword());
	            }

	            // 更新された会員情報をデータベースに保存
	            int result = membersDao.updateMember(existingMember);

	            if (result > 0) {
	                // 更新成功時の処理
	                model.addAttribute("successMessage", "会員情報を更新しました。");
	            } else {
	                // 更新失敗時の処理
	                model.addAttribute("errorMessage", "会員情報の更新に失敗しました。");
	            }
	        } else {
	            model.addAttribute("errorMessage", "会員情報が見つかりません。");
	        }
	    } else {
	        return "redirect:/login";
	    }
	    return "mypage";
	}

}