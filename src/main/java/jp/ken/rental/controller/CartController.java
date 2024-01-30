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
@SessionAttributes({"loginModel", "memberModel"})
public class CartController {
	@Autowired
	private MembersDao membersDao ;

	@RequestMapping(value = "/cart",method = RequestMethod.GET)
	public String toCart(Model model) {

		model.addAttribute("itemModel", new ItemModel());
		return "cartcontent";
	}
/*これからしたまだ何もしてないから編集する*/
	@RequestMapping(value = "/cart",method = RequestMethod.POST)
	public String cartMembers(@ModelAttribute ItemModel itemModel, Model model) {
		boolean itemNoIsEmpty = itemModel.getItemNo().isEmpty();
		boolean titleIsEmpty = itemModel.getTitle().isEmpty();


		if(itemNoIsEmpty && titleIsEmpty) {

			List<Members> membersList= membersDao.getList();
			model.addAttribute("membersList",membersList);

		} else if(!itemNoIsEmpty && titleIsEmpty) {

			try {
				Integer id = new Integer(itemModel.getItemNo());
				Members members = membersDao.getMembersById(id);

				if(members == null) {
					model.addAttribute("message","該当データがありません");
				} else {
					List<Members>membersList = new ArrayList<Members>();
					membersList.add(members);
					model.addAttribute("membersList",membersList);
				}
			} catch(NumberFormatException e) {
				model.addAttribute("message","IDが不正です");
			}
		} else if(itemNoIsEmpty && !titleIsEmpty) {
			List<Members>membersList = membersDao.getListByName(itemModel.getTitle());

			if(membersList.isEmpty()) {
				model.addAttribute("message","該当データがありません");
			} else {
				model.addAttribute("membersList",membersList);
			}
		} else {
			model.addAttribute("message","IDまたはタイトルのいずれかを入力してください");
		}
		model.addAttribute("headline","商品検索");
		return "cartcontent";
	}

}