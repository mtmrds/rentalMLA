package jp.ken.rental.controller;

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
@SessionAttributes({"itemModel", "cartList"})
public class IkeCon {

	@Autowired
	private MembersDao membersDao;

/*　使わないかも
	@RequestMapping(value = "/setCartAdd", method = RequestMethod.GET)
	public String toCartConfirm(Model model) {
		//空っぽのページ（入力できる状態のページ）を表示する
        model.addAttribute("itemModel", new ItemModel());
        Members pickItem = membersDao.getItemById(Integer.parseInt(mId));
        model.addAttribute("pickItem", pickItem);
        model.addAttribute("headline", "削除ページ");
        return "cartAdd";
	}
	@RequestMapping(value = "/setCartAdd", method = RequestMethod.POST)
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
	}*/
	@RequestMapping(value = "/setCartComp", method = RequestMethod.GET)
	public String toCompRegist(Model model) {
		//引数Model model削除。下記もコメントアウト
		//model.addAttribute("memberModel", new MemberModel());
		List<Members> cartList = membersDao.getCartList();
		model.addAttribute("cartList", cartList);

        return "cartAddComp";
	}
	@RequestMapping(value = "/setCartComp", method = RequestMethod.POST)
	public String cartComp(@ModelAttribute ItemModel itemModel, Model model) {
		//history全件検索
		List<Members> cartList = membersDao.getCartList();
		model.addAttribute("cartList", cartList);
        return "cartcontent";
	}
}
