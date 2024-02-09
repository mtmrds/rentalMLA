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
	public String masterCartPost(@ModelAttribute ItemModel itemModel, Model model) {
		//historyに入る
		Members pickItem = membersDao.pickItemById(Integer.parseInt(mId));
		model.addAttribute("pickItem", pickItem);

		List<Members> tenCartList = membersDao.getTenCartList();
		model.addAttribute("cartList", tenCartList);

		int numberOfRow = membersDao.insertTenCart(pickItem);

	    //members.setItemNo(Integer.parseInt(itemModel.getItemNo()));
	    if (numberOfRow == 0) {
	    	//下記は必要に応じて使うか検討する
	        //model.addAttribute("message", "登録に失敗しました。");
	        return "tenchoEmp";
	    }
	    return "tenCartAddComp";
	}
}
