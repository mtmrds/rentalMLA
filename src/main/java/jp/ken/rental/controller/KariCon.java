package jp.ken.rental.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import jp.ken.rental.dao.MembersDao;
import jp.ken.rental.model.ItemModel;

@Controller
@RequestMapping("cart")
@SessionAttributes({"loginModel", "memberModel", "cartList"})

public class KariCon {

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
	        return "payment";
	    }

	    @RequestMapping(method = RequestMethod.POST, params = "end")
	    String viewCart3(Model model) {
	        model.addAttribute("membersList", membersDao.getCartList());
	        membersDao.clearCart(model);
	        return "paymentComp";
	    }
	    @RequestMapping(method = RequestMethod.POST, params = "delete")
	    String viewCart4(Model model) {
	        model.addAttribute("membersList", membersDao.getCartList());
	        membersDao.remove(model);
	        return "cartcontent";
	    }
}

