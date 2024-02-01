package jp.ken.rental.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import jp.ken.rental.dao.MembersDao;
import jp.ken.rental.entity.Members;
import jp.ken.rental.model.ItemModel;


@Controller
@SessionAttributes("itemModel")
public class IkeCon {
	@Autowired
	private MembersDao membersDao;

	//
	@RequestMapping(value = "/setCartAdd",method = RequestMethod.GET)
	public String toCartConfirm(Model model) {
		//空っぽのページ（入力できる状態のページ）を表示する
        model.addAttribute("itemModel", new ItemModel());
        return "cartAdd";
	}
	@RequestMapping(value = "/setCartAdd",params="addCart",  method = RequestMethod.POST)
	public String toCartRegist(Model model, @Validated @ModelAttribute ItemModel itemModel, BindingResult result) {
		if (result.hasErrors()) {
	        return "cartAdd";
	    }
	    Members members = new Members();

	    members.setItemNo(Integer.parseInt(itemModel.getItemNo()));
	    members.setTitle(itemModel.getTitle());


	    int numberOfRow = membersDao.insertCart(members);
	    if (numberOfRow == 0) {
	    	//下記は必要に応じて使うか検討する
	        //model.addAttribute("message", "登録に失敗しました。");
	        return "cartAdd";
	    }
	    //下記を使うイメージが固まってないので、コメントアウトしてます
	    //バリデーションエラーがない場合にはここでmodelにmemberModelを追加
	    //model.addAttribute("memberModel", memberModel);
        return "redirect:/setCartcomp";
	}
	@RequestMapping(value = "/setCartComp", method = RequestMethod.GET)
	public String toCompRegist() {
		//引数Model model削除。下記もコメントアウト
		//model.addAttribute("memberModel", new MemberModel());
        return "cartAddComp";
	}
}
