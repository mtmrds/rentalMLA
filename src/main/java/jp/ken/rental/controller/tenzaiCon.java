package jp.ken.rental.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import jp.ken.rental.dao.MembersDao;
import jp.ken.rental.entity.Members;
import jp.ken.rental.model.ItemModel;

@Controller
@SessionAttributes({"loginModel","itemModel", "cartList"})
public class tenzaiCon {
    private String mId;

    @Autowired
    private MembersDao membersDao ;

    @ModelAttribute
    ItemModel itemModel() {
        return new ItemModel();
    }

    @RequestMapping(value = "/tenzai", method = RequestMethod.GET)
    String viewCart(Model model) {
        model.addAttribute("cartList", membersDao.getCartList());
        return "tencho_order";
    }

    @RequestMapping(value = "/tenzai", method = RequestMethod.POST, params = "index")
    String viewCart2(ItemModel itemModel, Model model) {
        try {
            String mId = itemModel.getItemNo();
            Integer itemNo = Integer.valueOf(mId);
            if (itemNo == null) {
                throw new NumberFormatException("商品番号が数値ではありません。");
            }
            Members pickItem = membersDao.pickItemById(itemNo);
            if (pickItem != null) {
                model.addAttribute("pickItem", pickItem);
                List<Members> cartList = membersDao.getCartList();
                model.addAttribute("cartList", cartList);
                int numberOfRow = membersDao.insertCart(pickItem);
                if (numberOfRow == 0) {
                    return "tenchoEmp";
                }
                return "tenkaku";
            } else {
                model.addAttribute("message", "商品が見つかりませんでした。");
                return "tenchoEmp";
            }
        } catch (NumberFormatException e) {
            System.out.println("商品番号が不正です。");
            e.printStackTrace();
            return "tenkaku";
        }
    }

    @RequestMapping(value = "/tenzai", method = RequestMethod.POST, params = "end")
    String viewCart3(Model model) {
        model.addAttribute("membersList", membersDao.getCartList());
        membersDao.clearCart(model);
        int itemNo = 1; // 商品番号
        int additionalQuantity = 1; // 追加する数量
        membersDao.updateQuantity(itemNo, additionalQuantity);
        return "tenkaku";
    }

    @RequestMapping(value = "/tenzai", method = RequestMethod.POST, params = "delete")
    String viewCart4(@RequestParam("delete") String delete, @RequestParam("cNo") int cNo, Model model) {
        if (delete != null && delete.equals("削除")) {
            membersDao.remove(cNo);
        }
        model.addAttribute("cartList", membersDao.getCartList());
        return "tencho_order";
    }
}