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
import jp.ken.rental.model.ItemModel;

@Controller
@RequestMapping("cart")
@SessionAttributes({"loginModel", "memberModel"})

public class KariCon {
	private String memId;//m_idフィールドの追加。削除と更新で使う

	    @Autowired
	    private MembersDao membersDao ;

	    @ModelAttribute
	    ItemModel itemModel() {
	        return new ItemModel();
	    }

	    @RequestMapping(method = RequestMethod.GET)
	    String viewCart(Model model) {
	        model.addAttribute("membersList", membersDao.getCartList());
	        return "cartcontent";
	    }

	    @RequestMapping(method = RequestMethod.POST, params = "index")
	    String viewCart2(Model model) {
	        model.addAttribute("membersList", membersDao.getCartList());
	        return "footer";
	    }

	    @RequestMapping(method = RequestMethod.POST)
	    String removeFromCart(@Validated ItemModel itemModel , BindingResult bindingResult, Model model) {
	        	if (bindingResult.hasErrors()) {
	            model.addAttribute("error", "商品がチェックされていません");
	            return viewCart(model);
	        }
	        membersDao.remove(itemModel.getItemNo());
	        return "redirect:/cartcontent";
	    }
}

