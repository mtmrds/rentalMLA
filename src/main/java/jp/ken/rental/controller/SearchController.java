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

@Controller
@SessionAttributes("itemModel")
public class SearchController {
	@Autowired
	private MembersDao membersDao ;

	//TopControllerでredirectをかますことでここに飛ぶ
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String toItemSearch(Model model) {
		model.addAttribute("itemModel", new ItemModel());
		model.addAttribute("headline", "商品検索");
		return "itemSearch";
	}
	@RequestMapping(value = "/search", params="SearchItem" , method = RequestMethod.POST)
	public String searchItem(@ModelAttribute ItemModel itemModel, Model model) {
		boolean itemNoIsEmpty = itemModel.getItemNo().isEmpty();
		boolean titleIsEmpty = itemModel.getTitle().isEmpty();

		if(itemNoIsEmpty && titleIsEmpty) {
			//全件検索
			List<Members> itemList = membersDao.getItemList();
			model.addAttribute("itemList", itemList);

		} else if(!itemNoIsEmpty && titleIsEmpty) {

			try {
				Integer itemNo = new Integer(itemModel.getItemNo());
				Members members = membersDao.getItemById(itemNo);

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
		return "itemSearch";
	}

/* KariConコントローラーがあるので、「itemSearch.jsp」に「cartcontent.jso」へ飛ばす内容を以下で設定。
	---------------------------------------------------------------------
   <form:form modelAttribute="itemModel" action="cart" method="GET" >
   		<form:hidden path="itemNo" value="${members.itemNo}"/>
   		<input type="submit" value="カート入れる"/>
   </form:form>
	---------------------------------------------------------------------
	以下は使わない可能性があるため、一旦コメントアウトして保持　
	上記対応は暫定対応なので、見直して変えるかも
																	/元村



	//cartに追加する処理


	@RequestMapping(value = "/addCart", method = RequestMethod.GET)
	public String toAdd() {
        return "cartcontent";
	}
	@RequestMapping(value = "/addCart", method = RequestMethod.POST)
	public String toAddCart(@ModelAttribute ItemModel itemModel, Model model) {
		return "cartcontent";
	}


		if (result.hasErrors()) {
	        return "";  //わからん😢
	    }

	    Members members = new Members();

	    members.setItemNo(Integer.parseInt(itemModel.getItemNo()));
	    members.setTitle(itemModel.getTitle());

	    int numberOfRow = membersDao.insertCart(members);

	    	if (numberOfRow == 0) {
	    		//ここが怪しい
	    		//model.addAttribute("message", "登録に失敗しました。");

	    		return "cartcontent";  //わからん😢
	    	}
	    //使う？不明なのでコメントアウト
	    //バリデーションエラーがない場合にはここでmodelにmemberModelを追加
	    //model.addAttribute("memberModel", memberModel);
	    return "redirect:/cart";
	    }
*/
}

