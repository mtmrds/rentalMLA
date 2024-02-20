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
import org.springframework.web.bind.support.SessionStatus;

import jp.ken.rental.dao.MembersDao;
import jp.ken.rental.entity.Members;
import jp.ken.rental.model.LoginModel;

@Controller
@SessionAttributes({"loginModel", "memberModel"})
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
	public String deleteAccount(Model model, SessionStatus sessionStatus,
								@ModelAttribute("loginModel") LoginModel loginModel) {

	    if (loginModel != null && loginModel.getMail() != null) {
	        int result = membersDao.removeMember(loginModel.getMail());

	        if (result > 0) {
	        	sessionStatus.setComplete();
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
	        Members existingMember = membersDao.getMembersByMail(loginModel.getMail());

	        if (existingMember != null) {
	            // パスワードと確認用パスワードが両方とも空でないことを確認する
	            if (!member.getPassword().isEmpty() && !confirmPassword.isEmpty()) {
	                if (member.getPassword().equals(confirmPassword)) {
	                    // パスワードが一致する場合のみ、パスワードを更新
	                    existingMember.setPassword(member.getPassword());
	                } else {
	                    model.addAttribute("errorMessage", "新しいパスワードが一致しません。");
	                    System.out.println("新しいパスワードが一致しません");
	                    return "mypage";
	                }
	            }
	            existingMember.setName(member.getName());
                existingMember.setZip(member.getZip());
                existingMember.setAddress(member.getAddress());
                existingMember.setPhone(member.getPhone());
                existingMember.setMail(member.getMail());
                existingMember.setPlan(member.getPlan());
                existingMember.setCard(member.getCard());
                existingMember.setBirthday(member.getBirthday());

	            int result = membersDao.updateMember(existingMember);

	            if (result > 0) {
	                model.addAttribute("successMessage", "会員情報を更新しました。");
	                System.out.println("更新成功");
	            } else {
	                model.addAttribute("errorMessage", "会員情報の更新に失敗しました。");
	                System.out.println("更新失敗");
	            }
	        } else {
	            model.addAttribute("errorMessage", "会員情報が見つかりません。");
	            System.out.println("会員情報が見つかりません");
	        }
	    } else {
	        System.out.println("ログインへリダイレクト");
	        return "redirect:/login";
	    }
	    System.out.println("マイページへ飛ぶ");
	    return "mypage";
	}
	@RequestMapping(value = "/showOrders", method = RequestMethod.GET)
	public String ordersItemGet(Model model) {
		model.addAttribute("ordersList", membersDao.getOrdersList());
		model.addAttribute("rentalList", membersDao.getRentalList());
		return "ordersItem";
	}
	@RequestMapping(value = "/showOrders", method = RequestMethod.POST)
	public String ordersItemPost(@RequestParam("ordersNo") Integer ordersNo) {
		membersDao.removeOrders(ordersNo);
		return "redirect:/showOrders";
	}
	@RequestMapping(value = "/showOrders", method = RequestMethod.POST)
	public String returnItemPost(@RequestParam("rentalNo") Integer rentalNo) {
		int upQuantity = membersDao.getRentalQuantity(rentalNo);
		membersDao.returnItem(rentalNo, upQuantity);
	    return "redirect:/showOrders";
	}
}