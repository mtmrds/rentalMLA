package jp.ken.rental.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jp.ken.rental.dao.MembersDao;
import jp.ken.rental.entity.Members;
import jp.ken.rental.model.LoginModel;

@Controller
public class LoginController2 {
	@Autowired
	private MembersDao membersDao;

	//GETリクエストでログインページにアクセス
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String toLogin(Model model) {
		model.addAttribute("LoginModel", new LoginModel());
		return "loginTop";
	}

	//POSTリクエストでログイン試行
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String toLoginTrial(@Validated @ModelAttribute LoginModel loginModel, BindingResult result, Model model) {
		 if (result.hasErrors()) {
	            model.addAttribute("message", "IDまたはパスワードが正しくありません。");
	            return "loginTop";
	        }

		boolean loginIdIsEmpty = loginModel.getLoginId().isEmpty();
		boolean passwordIsEmpty =loginModel.getPassword().isEmpty();

		//IDもパスワードも未入力の場合
		if(!loginIdIsEmpty && !passwordIsEmpty) {
			Members member = membersDao.getMembersById(loginModel.getLoginId());
		}else if(!loginIdIsEmpty && passwordIsEmpty) {
			try {
				Integer id = new Integer(loginModel.getLoginId());
				Members members = membersDao.getMembersById(id);

				if(members == null) {
					model.addAttribute("message","該当データがありません");
				}else {
					List<Members>membersList = new ArrayList<Members>();
					membersList.add(members);
					model.addAttribute("membersList",membersList);
				}
			}catch(NumberFormatException e) {
				model.addAttribute("message","IDが不正です");
			}
		}else if(loginIdIsEmpty && !passwordIsEmpty) {
			List<Members>membersList = membersDao.getListByName(loginModel.getPassword());

			if(membersList.isEmpty()) {
				model.addAttribute("message","該当データがありません");
			}else {
				model.addAttribute("membersList",membersList);
			}
		}else {
			model.addAttribute("message","IDまたはタイトルのいずれかを入力してください");
		}


		model.addAttribute("headline","商品検索");
		return "itemList";

		}
	}
