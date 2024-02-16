package jp.ken.rental.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import jp.ken.rental.dao.MembersDao;
import jp.ken.rental.entity.Members;
import jp.ken.rental.model.ItemModel;
import jp.ken.rental.model.LoginModel;

@Controller
@SessionAttributes({"loginModel", "itemModel", "cartList"})
public class SearchController {
	private String mId;

	@Autowired
	private MembersDao membersDao ;

	//TopControllerでredirectをかますことでここに飛ぶ
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String searchItemGet(Model model) {
		model.addAttribute("itemModel", new ItemModel());
		model.addAttribute("headline", "商品検索");
		return "itemSearch";
	}
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String searchItemPost(@ModelAttribute ItemModel itemModel, Model model) {
		boolean itemNoIsEmpty = itemModel.getItemNo().isEmpty();
		boolean titleIsEmpty = itemModel.getTitle().isEmpty();

		if(itemModel.getTitle().equals("pick")) {
			mId = itemModel.getItemNo();


		    return "redirect:/setCartAdd";
		}
		if(itemNoIsEmpty && titleIsEmpty) {
			//全件検索
			List<Members> itemList = membersDao.getItemList();
			model.addAttribute("itemList", itemList);
			//System.out.println("原因1");//全件検索の成功

		} else if(!itemNoIsEmpty && titleIsEmpty) {

			try {
				Integer itemNo = new Integer(itemModel.getItemNo());
				Members members = membersDao.pickItemById(itemNo);

				if(members == null) {
					model.addAttribute("message", "該当データがありません");
					System.out.println("原因2");
				} else {
					List<Members>itemList = new ArrayList<Members>();
					itemList.add(members);
					model.addAttribute("itemList", itemList);
				}
			} catch(NumberFormatException e) {
				model.addAttribute("message", "IDが不正です");
				System.out.println("原因3");
			}
		} else if(itemNoIsEmpty && !titleIsEmpty) {
			List<Members>itemList = membersDao.getListByItemTitle(itemModel.getTitle());

			if(itemList.isEmpty()) {
				model.addAttribute("message", "該当データがありません");
				System.out.println("原因4");
			} else {
				model.addAttribute("itemList", itemList);
			}
		} else {
			model.addAttribute("message", "IDまたはタイトルのいずれかを入力してください");
			System.out.println("原因6");
		}
		model.addAttribute("headline", "商品検索");

		return "itemSearch";
	}
	@RequestMapping(value = "/setCartAdd", method = RequestMethod.GET)
	public String toCartGet(Model model) {
        model.addAttribute("itemModel", new ItemModel());
        Members pickItem = membersDao.pickItemById(Integer.parseInt(mId));
        model.addAttribute("pickItem", pickItem);
        //jspのプルダウンの選択肢の数量を準備
      	List<Integer> quantityOptions = new ArrayList<Integer>();
      	// 1から10までの数値を選択肢として設定
        for (int i = 1; i <= 10; i++) {
        	quantityOptions.add(i);
        }
        model.addAttribute("quantityOptions", quantityOptions);
        //model.addAttribute("headline", "カートイン");
        return "cartAdd";
	}
	@RequestMapping(value = "/setCartAdd", method = RequestMethod.POST)
	public String toCartPost(@ModelAttribute("loginModel") LoginModel loginModel,
            					@ModelAttribute ItemModel itemModel, Model model) {
		// ログイン情報を取得
	    String memberMail = loginModel.getMail();
	    // 商品の在庫を減らし、カートに追加する
	    membersDao.addToCartAndUpdateStock(Integer.parseInt(mId), itemModel.getQuantity());
	    // 商品情報を取得
	    Members pickItem = membersDao.pickItemById(Integer.parseInt(mId));
	    // 注文情報を設定
	    pickItem.setOrdersItem(itemModel.getQuantity());
	    // 会員IDを設定
	    pickItem.setMail(memberMail);

	    // historyテーブルに商品情報を登録
	    int numberOfRow = membersDao.insertCart(pickItem);

	    if (numberOfRow == 0) {
	        // 登録に失敗した場合の処理
	        return "top";
	    }
	    return "cartAddComp";
	}
}

