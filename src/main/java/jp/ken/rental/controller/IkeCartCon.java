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

	//商品をカートに入れたときの処理
	@RequestMapping(value = "/setCartComp", method = RequestMethod.GET)
	public String cartCompGet(Model model) {
		//カートに追加された商品のリストを取得し、モデルに追加
		List<Members> cartList = membersDao.getCartList();
		model.addAttribute("cartList", cartList);
        return "cartAddComp";
	}
	//cartcontent.jsp（ビュー）に遷移し、カートに追加された商品を表示する
	@RequestMapping(value = "/setCartComp", method = RequestMethod.POST)
	public String cartCompPost(@ModelAttribute Model model) {
		//カートの商品リストを取得し、モデルに追加
		List<Members> cartList = membersDao.getCartList();
		model.addAttribute("cartList", cartList);
        return "cartcontent";
	}
	//長渕系のメソッド
	@RequestMapping(value = "/nagabuchi",method = RequestMethod.GET)
	public String toNagabuchi(Model model) {
        return "nagabuchi";
	}
	@RequestMapping(value = "/tamibuchi",method = RequestMethod.GET)
	public String toTamibuchi(Model model) {
        return "tamibuchi";
	}
	@RequestMapping(value = "/Nnaga",method = RequestMethod.GET)
	public String toNaga(Model model) {
        return "Nnaga";
	}
}
