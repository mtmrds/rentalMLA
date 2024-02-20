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

	//マイページを表示するGETリクエストを処理。セッションからログイン情報を取得し、ユーザーの情報を表示
	//HttpSessionからloginModelという名前の属性を取得
	//getAttributeメソッドでセッションから指定された名前の属性を取得
	//HttpSessionオブジェクトであるsessionから、"loginModel"という名前の属性を取得し、LoginModel型の変数loginModelにキャスト
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String showMyPage(Model model, HttpSession session) {
	    LoginModel loginModel = (LoginModel)session.getAttribute("loginModel");
	    //ログインモデルがnullでないかつメールアドレスがnullでない場合に、メールアドレスを使用してユーザーをデータベースから検索
	    if (loginModel != null && loginModel.getMail() != null) {
	    	//loginModelがnullでない場合は、getMail()メソッドを使用してログインモデルからメールアドレスを取得
	    	//メールアドレスがnullでない場合、そのメールアドレスを持つユーザーをデータベースから取得
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
	//アカウントを削除するPOSTリクエストを処理。ログイン中のユーザーのアカウントを削除し、セッションをクリアしてログインページにリダイレクト
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
	//アカウント情報を編集するPOSTリクエストを処理。ユーザーの新しい情報を取得し、データベースに保存。
	//パスワードが一致しない場合やデータベースの更新に失敗した場合にエラーメッセージを表示
	//@RequestParam("confirmPassword") String confirmPassword　→　確認用のパスワードを表すパラメータ。
	//このパラメータは、新しいパスワードと一致するかどうかを確認するために使用。
	@RequestMapping(value = "/editAccount", method = RequestMethod.POST)
	public String editAccount(@ModelAttribute("memberModel") Members member,
								@RequestParam("confirmPassword") String confirmPassword,
								Model model, HttpSession session) {
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
	            //ユーザーが提供した新しいアカウント情報を、既存のメンバーオブジェクトに設定
	            //memberオブジェクトから取得した値を、既存のexistingMemberオブジェクトの対応するフィールドに設定
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
	//レンタル商品の履歴とレンタル中の商品を表示する
	@RequestMapping(value = "/showOrders", method = RequestMethod.GET)
	public String ordersItemGet(Model model) {
		model.addAttribute("ordersList", membersDao.getOrdersList());
		model.addAttribute("rentalList", membersDao.getRentalList());
		return "ordersItem";
	}
	//レンタル中の商品履歴を削除する
	//@RequestParam("ordersNo") Integer ordersNoは、リクエストパラメータから注文番号（ordersNo）を受け取る
	@RequestMapping(value = "/showOrders", method = RequestMethod.POST, params = "dl")
	public String ordersItemPost(@RequestParam("ordersNo") Integer ordersNo) {
		membersDao.removeOrders(ordersNo);
		return "redirect:/showOrders";
	}
	//レンタル中の商品を返却し、myrentalテーブルから削除する。movItemテーブルの商品在庫を返却分追加する
	//@RequestParam("rentalNo") Integer rentalNoは、リクエストパラメータから注文番号（rentalNo）を受け取る
	@RequestMapping(value = "/showOrders", method = RequestMethod.POST, params = "back")
	public String returnItemPost(@RequestParam("rentalNo") Integer rentalNo) {
		int upQuantity = membersDao.getRentalQuantity(rentalNo);
		membersDao.returnItem(rentalNo, upQuantity);
	    return "redirect:/showOrders";
	}
}