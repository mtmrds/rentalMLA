package jp.ken.rental.controller;

import java.util.List;

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
import jp.ken.rental.model.ItemModel;

@Controller
@SessionAttributes({"loginModel", "cartList", "membersList", "memberModel"})
public class CartCon {
	@Autowired
	private MembersDao membersDao ;

	@ModelAttribute
	ItemModel itemModel() {
	return new ItemModel();
	}
	//カートに入れるボタンを押下した後、cartcontent.jsp上で表示したい
	//よって、以下内容で、追加された商品情報を表示します（cartListを利用する）
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	String viewCart(Model model) {
		model.addAttribute("cartList", membersDao.getCartList());
		return "cartcontent";
	}
	//レンタル確定操作を行う画面へ飛ばす
	@RequestMapping(value = "/cart", method = RequestMethod.POST, params = "index")
	String viewCart2(Model model) {
		model.addAttribute("membersList", membersDao.getCartList());

		if (membersDao.getCartList().isEmpty()) {
			model.addAttribute("message", "買い物カゴが空です");
			return "cartcontent";
		}
		return "rentalCheck";
	}
	@RequestMapping(value = "/cart", method = RequestMethod.POST, params = "end")
	String rentalConfirm(@ModelAttribute("cartList") List<Members> cartList, Model model, SessionStatus sessionStatus) {

	    // カートが空の場合はエラーメッセージを表示してカートコンテンツページにリダイレクト
	    if (cartList == null || cartList.isEmpty()) {
	        model.addAttribute("message", "カートが空です");
	        return "redirect:/cart";
	    }

	    // カート内の商品情報をorderテーブルに挿入する処理を実行
	    try {
	        for (Members member : cartList) {
	            // orderテーブルに商品情報を挿入する処理を実行
	            membersDao.insertOrders(member);
	            membersDao.insertRental(member);
	        }
	        // カート内の商品情報をセッションから削除。cartList属性のみをセッションから削除
	        // レンタル確定後はカートを空っぽにするため、削除処理を実行
	        model.asMap().remove("cartList");
	        membersDao.clearCart(model);
	        // レンタル確定ページにとばす
	        return "rentalComp";
	    } catch (Exception e) {
	        // エラーメッセージを設定してカートコンテンツページにリダイレクト
	        model.addAttribute("errorMessage", "注文の確定中にエラーが発生しました。");
	        return "redirect:/cart";
	    }
	}
	@RequestMapping(value = "/cart", method = RequestMethod.POST, params = "delete")
	String viewCart4(@RequestParam("delete") String delete, @RequestParam("historyNo") int historyNo, Model model) {
	    if (delete != null && delete.equals("削除")) {
	        // 削除する商品の数量を取得
	        int removedQuantity = membersDao.getRemovedQuantity(historyNo);
	        // 在庫を増やす処理
	        membersDao.remove(historyNo, removedQuantity);
	    }
	    model.addAttribute("cartList", membersDao.getCartList());
	    return "cartcontent";
	}
}

