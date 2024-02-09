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


@Controller
@SessionAttributes({"loginModel", "memberModel", "cartList"})
public class IkeCartCon {
	@Autowired
	private MembersDao membersDao;

	@RequestMapping(value = "/setCartComp", method = RequestMethod.GET)
	public String toCompRegist(Model model) {
		//引数Model model削除。下記もコメントアウト
		List<Members> cartList = membersDao.getCartList();
		model.addAttribute("cartList", cartList);
        return "cartAddComp";
	}
	@RequestMapping(value = "/setCartComp", method = RequestMethod.POST)
	public String cartComp(@ModelAttribute Model model) {
		//history全件検索
		List<Members> cartList = membersDao.getCartList();
		model.addAttribute("cartList", cartList);
        return "cartcontent";
	}
}
