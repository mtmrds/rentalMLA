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
    String viewTenCart(Model model) {
        model.addAttribute("tenCartList", membersDao.getTenCartList());
        return "tencho_order";
    }

    @RequestMapping(value = "/tenzai", method = RequestMethod.POST, params = "index")
    String viewTenCart2(ItemModel itemModel, Model model) {
        try {
            mId = itemModel.getItemNo();
            Integer itemNo = Integer.valueOf(mId);
            if (itemNo == null) {
                throw new NumberFormatException("商品番号が数値ではありません。");
            }
            Members pickItem = membersDao.pickItemById(itemNo);
            if (pickItem != null) {
                model.addAttribute("pickItem", pickItem);
                List<Members> tenCartList = membersDao.getTenCartList();
                model.addAttribute("tencartList", tenCartList);
                int numberOfRow = membersDao.insertTenCart(pickItem);
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
    String viewCart3(@RequestParam(required = false) Integer itemNo, @RequestParam(required = false) Integer additionalQuantity, Model model) {
        if (itemNo != null && additionalQuantity != null) {
            model.addAttribute("membersList", membersDao.getTenCartList());
            membersDao.clearTenCart(model);
            membersDao.updateQuantity(itemNo, additionalQuantity);
            return "tenkakutei";
        } else {
            // itemNo または additionalQuantity のいずれかが提供されていない場合の処理
            return "errorPage"; // エラーページにリダイレクトするなど
        }
    }

    @RequestMapping(value = "/tenzai", method = RequestMethod.POST, params = "delete")
    String viewCart4(@RequestParam("delete") String delete, @RequestParam("tNo") int tNo, Model model) {
        if (delete != null && delete.equals("削除")) {
            membersDao.removeTen(tNo);
        }
        model.addAttribute("cartList", membersDao.getTenCartList());
        return "tencho_order";
    }
    @RequestMapping(value = "/tenzai", method = RequestMethod.POST)
    String handleTenZaiPost(Model model, @RequestParam("itemNo") Integer itemNo, @RequestParam("additionalQuantity") Integer additionalQuantity) {
        // itemNo と additionalQuantity が null でないことをチェック
        if (itemNo != null && additionalQuantity != null) {
            // updateQuantity メソッドを呼び出して数量を更新
            int updatedRows = membersDao.updateQuantity(itemNo, additionalQuantity);
            if (updatedRows > 0) {
                // 更新が成功した場合はtenkakuteiにリダイレクト
                return "tenkakutei";
            } else {
                // 更新に失敗した場合はリダイレクト
                return "tencho_order";
            }
        } else {
            // itemNo または additionalQuantity が提供されていない場合はリダイレクト
            return "tencho_order";
        }
    }
}