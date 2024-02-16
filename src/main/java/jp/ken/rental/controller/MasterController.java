package jp.ken.rental.controller;

import java.util.ArrayList;
import java.util.List;

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
@SessionAttributes({"loginModel","itemModel", "cartList"})
public class MasterController {
	private String mId;

	@Autowired
	private MembersDao membersDao;

	@RequestMapping(value = "/master", method = RequestMethod.GET)
	public String masterSearchGet(Model model) {
		model.addAttribute("itemModel", new ItemModel());
		model.addAttribute("headline", "商品検索");
        return "tenchoEmp";
	}
	//商品一覧を検索する処理。顧客用の検索ページをベースに作成
	@RequestMapping(value = "/master", method = RequestMethod.POST)
	public String masterSearchPost(@ModelAttribute ItemModel itemModel, Model model) {

		boolean itemNoIsEmpty = itemModel.getItemNo().isEmpty();
		boolean titleIsEmpty = itemModel.getTitle().isEmpty();

		if(itemModel.getTitle().equals("pick")) {
			mId = itemModel.getItemNo();
		    return "redirect:/adminCart";
		}
		if(itemNoIsEmpty && titleIsEmpty) {
			//全件検索
			List<Members> itemList = membersDao.getItemList();
			model.addAttribute("itemList", itemList);
		} else if(!itemNoIsEmpty && titleIsEmpty) {
			try {
				Integer itemNo = new Integer(itemModel.getItemNo());
				Members members = membersDao.pickItemById(itemNo);

				if(members == null) {
					model.addAttribute("message", "該当データがありません");
				} else {
					List<Members>itemList = new ArrayList<Members>();
					itemList.add(members);
					model.addAttribute("itemList", itemList);
				}
			} catch(NumberFormatException e) {
				model.addAttribute("message", "IDが不正です");
			}
		} else if(itemNoIsEmpty && !titleIsEmpty) {
			List<Members>itemList = membersDao.getListByItemTitle(itemModel.getTitle());

			if(itemList.isEmpty()) {
				model.addAttribute("message", "該当データがありません");
			} else {
				model.addAttribute("itemList", itemList);
			}
		} else {
			model.addAttribute("message", "IDまたはタイトルのいずれかを入力してください");
		}
		model.addAttribute("headline", "商品検索");
        return "tenchoEmp";
	}
	@RequestMapping(value = "/adminCart", method = RequestMethod.GET)
	public String masterCartGet(Model model) {
        model.addAttribute("itemModel", new ItemModel());
        Members pickItem = membersDao.pickItemById(Integer.parseInt(mId));
        model.addAttribute("pickItem", pickItem);
        //model.addAttribute("headline", "カートイン");
        return "tenCartAdd";
	}
	@RequestMapping(value = "/adminCart", method = RequestMethod.POST)
	String masterCartPost(Model model, @RequestParam("itemNo") Integer itemNo,
							@RequestParam("orderItem") Integer orderItem){

		// itemNo と orderItem が null でないことをチェック
		if (itemNo != null && orderItem != null) {
			// updateQuantity メソッドを呼び出して数量を更新
	        int updatedRows = membersDao.updateQuantity(itemNo, orderItem);

	        if (updatedRows > 0) {
	            // 更新が成功した場合はtenkakuteiにリダイレクト
	        	//動作確認用のプリントライン
	        	//System.out.println(itemNo);
	        	//System.out.println(orderItem);
	        	// 商品情報を取得し、注文情報を新規登録する
	        	Members members = membersDao.pickItemById(itemNo);
	        	int numberOfRowsAffected = 0;

	        	if (members != null) {
	        		members.setOrderItem(orderItem);
	        		// 注文情報をデータベースに登録する
	        		numberOfRowsAffected = membersDao.insertTenCart(members);

	        		if (numberOfRowsAffected > 0) {
			        	// 登録が成功した場合はtenkakuteiにリダイレクト
			        	return "tenkakutei";
			        } else {
			        	// 登録に失敗した場合はリダイレクト
			        	//動作確認用のプリントライン
			        	//System.out.println("登録失敗");
			        	return "tencho_order";
			        }
	        	} else {
	        		// 商品情報の取得に失敗した場合はリダイレクト
	        		//動作確認用のプリントライン
	        		//System.out.println("商品情報取得失敗");
	        		return "tencho_order";
	        	}
	        } else {
	            // 更新に失敗した場合はリダイレクト
	        	//動作確認用のプリントライン
	        	//System.out.println("更新失敗");
	        	return "tencho_order";
	        }
	    } else {
	    	// itemNo または orderItem が提供されていない場合はリダイレクト
	    	//動作確認用のプリントライン
	    	//System.out.println("パラメータ系のエラー？");
	    	return "tencho_order";
        }
	}
	//従業引用操作で使う
	@RequestMapping(value = "/orderHistory", method = RequestMethod.GET)
	String viewTenCart(Model model) {
		model.addAttribute("tenCartList", membersDao.getTenCartList());
	    return "tencho_order";
	}
	//発注を取り消すときの処理
	@RequestMapping(value = "/orderHistory", method = RequestMethod.POST)
	public String removeOrder(@RequestParam("orderNo") Integer orderNo) {
	    // tencartテーブルから注文情報を取得
	    Members order = membersDao.pickTenCartByOrderNo(orderNo);
	    if (order != null) {
	        // movItemのquantityを減少させる
	        membersDao.decreaseQuantity(order.getItemNo(), order.getOrderItem());
	        // tencartテーブルから注文情報を削除
	        membersDao.removeTen(orderNo);
	    }
	    // 成功時は再度カートのページにリダイレクト
	    return "redirect:/orderHistory";
	}
}