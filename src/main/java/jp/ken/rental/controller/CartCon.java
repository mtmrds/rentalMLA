package jp.ken.rental.controller;

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
import jp.ken.rental.model.ItemModel;

@Controller
@RequestMapping("cart")
@SessionAttributes({"loginModel", "memberModel", "cartList"})
public class CartCon {
	@Autowired
	private MembersDao membersDao ;

	@ModelAttribute
	ItemModel itemModel() {
	return new ItemModel();
	}
	//カートに入れるボタンを押下した後、cartcontent.jsp上で表示したい
	//よって、以下内容で、追加された商品情報を表示します（cartListを利用する）
	@RequestMapping(method = RequestMethod.GET)
	String viewCart(Model model) {
		model.addAttribute("cartList", membersDao.getCartList());
		return "cartcontent";
	}
	@RequestMapping(method = RequestMethod.POST, params = "index")
	String viewCart2(Model model) {
		model.addAttribute("membersList", membersDao.getCartList());

		if (membersDao.getCartList().isEmpty()) {
			model.addAttribute("message", "買い物カゴが空です");
			return "cartcontent";
		}
		return "payment";
	}
	//レンタル完了時にその履歴をordersテーブルに登録する
	//@RequestParamアノテーションを使用して各リクエストパラメータを直接メソッドの引数として受け取る。
	//その後、これらのパラメータを使用してMembersオブジェクトを作成。
	//フォームデータを直接メソッドの引数として受け取るため、コードが簡潔かも。
	@RequestMapping(method = RequestMethod.POST, params = "end")
	String viewCart3(@RequestParam("end") String end, @RequestParam("mail") String mail, @RequestParam("title") String title,
						@RequestParam("type") String type, @RequestParam("ordersItem") String ordersItem,
						@RequestParam("image") String image, Model model) {

		 // Membersオブジェクトを作成し、値を設定
		Members members = new Members();
	    members.setMail(mail);
	    members.setTitle(title);
	    members.setType(type);
	    // Stringからintに変換して設定
	    members.setOrdersItem(Integer.parseInt(ordersItem));
	    members.setImage(image);

	    // レンタル履歴をordersテーブルに登録
	    membersDao.insertOrders(members);
	    // カートをクリア
	    membersDao.clearCart(model);

	    return "paymentComp";
	}
	@RequestMapping(method = RequestMethod.POST, params = "delete")
	String viewCart4(@RequestParam("delete") String delete, @RequestParam("historyNo") int historyNo, Model model) {

		if (delete != null && delete.equals("削除")) {
	    // ボタンが押された場合の処理
	            membersDao.remove(historyNo);
	    }
		model.addAttribute("cartList", membersDao.getCartList());
		return "cartcontent";
	}
}

