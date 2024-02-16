package jp.ken.rental.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionException;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.ui.Model;

import jp.ken.rental.entity.Members;

@Component
public class MembersDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private PlatformTransactionManager transactionManager;
	private RowMapper<Members> membersMapper = new BeanPropertyRowMapper<Members>(Members.class);

	public List<Members> getList(){
		String sql = "SELECT * FROM members";
		List<Members> membersList = jdbcTemplate.query(sql, membersMapper);
		return membersList;
	}
	public List<Members> getListByName(String name){
		String sql = "SELECT * FROM members WHERE name LIKE ?";
		name = name.replace("%", "\\%").replace("_", "\\_");
		name = "%" + name + "%";
		Object[] parameters = { name };
		List<Members> membersList = jdbcTemplate.query(sql, parameters , membersMapper);
		return membersList;
	}
	public Members getMembersById(String string) {
		String sql = "SELECT * FROM members WHERE id=?";
		Object[] parameters = { string };
		try {
			Members members = jdbcTemplate.queryForObject(sql, parameters, membersMapper);
			return members;
		} catch(EmptyResultDataAccessException e){
			e.printStackTrace();
		return null;
		}
	}
	public Members getMembersByPassword(String string) {
		String sql = "SELECT * FROM members WHERE password=?";
		Object[] parameters = { string };
		try {
				Members members = jdbcTemplate.queryForObject(sql, parameters, membersMapper);
				return members;
			} catch(EmptyResultDataAccessException e){
				e.printStackTrace();
				return null;
			}
	}
	//nameだった部分をmailに修正
	public Members getMembersByUserPass(String mail, String password){
			String sql = "SELECT * FROM members WHERE mail = ? AND password = ?;";
			Object[] parameters = { mail, password};
			try{
				Members user = jdbcTemplate.queryForObject(sql, parameters, membersMapper);
				return user;
			} catch(EmptyResultDataAccessException e) {
				e.printStackTrace();
				return null;
			}
	}
	public Members toSearch(String name){
		String sql = "SELECT * FROM members WHERE user_name = ?;";
		Object[] parameters = { name };
		try{
			Members memSearch = jdbcTemplate.queryForObject(sql, parameters, membersMapper);
			return memSearch;//memSearchをリターン
		} catch(EmptyResultDataAccessException e) {
			e.printStackTrace();
			return null;
		}
	}
	public Members getMembersById(Integer id) {
		String sql = "SELECT * FROM members WHERE id=?";
		Object[] parameters = { id };
		try {
			Members members = jdbcTemplate.queryForObject(sql, parameters, membersMapper);
			return members;
		} catch(EmptyResultDataAccessException e){
			e.printStackTrace();
			return null;
		}
	}
	public int insert(Members members) {
		String sql = "INSERT INTO members(name, birthday, zip, address, phone, mail, password, plan, card) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		Object[] parameters = { members.getName(), members.getBirthday(), members.getZip(), members.getAddress(),
		                        members.getPhone(), members.getMail(), members.getPassword(), members.getPlan(), members.getCard() };

		TransactionStatus transactionStatus = null;
		DefaultTransactionDefinition transactionDefinition = new DefaultTransactionDefinition();

		int numberOfRow = 0;

		try {
			transactionStatus = transactionManager.getTransaction(transactionDefinition);
			numberOfRow = jdbcTemplate.update(sql,parameters);
			transactionManager.commit(transactionStatus);
			} catch(DataAccessException e){
				e.printStackTrace();
				transactionManager.rollback(transactionStatus);
			} catch(TransactionException e) {
				e.printStackTrace();

				if(transactionStatus != null) {
					transactionManager.rollback(transactionStatus);
				}
			}
			return numberOfRow;
	}
	//item用
	public List<Members> getItemList(){
		String sql = "SELECT * FROM movitem";
		List<Members> itemList = jdbcTemplate.query(sql, membersMapper);
		return itemList;
	}
	public List<Members> getListByItemTitle(String title){
		String sql = "SELECT * FROM movitem WHERE title LIKE ?";
		title = title.replace("%", "\\%").replace("_", "\\_");
		title = "%" + title + "%";
		Object[] parameters = { title };
		List<Members> itemList = jdbcTemplate.query(sql, parameters , membersMapper);

		return itemList;
	}
	public Members getItemById(String itemNo) {
		String sql = "SELECT * FROM movitem WHERE item_no=?";
		Object[] parameters = { itemNo };
		try {
			Members members = jdbcTemplate.queryForObject(sql, parameters, membersMapper);
			return members;
		} catch(EmptyResultDataAccessException e){
			e.printStackTrace();
			return null;
		}
	}
	public Members toItemSearch(String title){
		String sql = "SELECT * FROM movitem WHERE title = ?;";
		Object[] parameters = { title };
		try{
			Members memSearch = jdbcTemplate.queryForObject(sql, parameters, membersMapper);
			return memSearch;//memSearchをリターン
		} catch(EmptyResultDataAccessException e) {
			e.printStackTrace();
			return null;
		}
	}
	//pickした商品情報を取る
	public Members pickItemById(Integer itemNo) {
		String sql = "SELECT * FROM movitem WHERE item_no=?";
		Object[] parameters = { itemNo };
		try {
			Members members = jdbcTemplate.queryForObject(sql, parameters, membersMapper);
			return members;
		} catch(EmptyResultDataAccessException e){
			e.printStackTrace();
			return null;
		}
	}
	public int insertItem(Members members) {
		String sql = "INSERT INTO movitem(item_no, title, type, category, image) VALUES(?, ?, ?, ?, ?)";
		Object[] parameters = { members.getItemNo(), members.getTitle(),
								members.getType(), members.getCategory(), members.getImage() };
		TransactionStatus transactionStatus = null;
		DefaultTransactionDefinition transactionDefinition = new DefaultTransactionDefinition();

		int numberOfRow = 0;

		try {
			transactionStatus = transactionManager.getTransaction(transactionDefinition);
			numberOfRow = jdbcTemplate.update(sql,parameters);
			transactionManager.commit(transactionStatus);
			} catch(DataAccessException e){
				e.printStackTrace();
				transactionManager.rollback(transactionStatus);
			} catch(TransactionException e) {
				e.printStackTrace();

				if(transactionStatus != null) {
					transactionManager.rollback(transactionStatus);
				}
			}
			return numberOfRow;
	}
	//cart用
	public List<Members> getCartList(){
		String sql = "SELECT * FROM history";
		List<Members> cartList = jdbcTemplate.query(sql, membersMapper);
		return cartList;
	}
	//主キー（item_no）の重複はできないので、タイトル+タイプで商品を特定
	public int insertCart(Members members) {
	    String sql = "INSERT INTO history(mail, title, type, ordersItem, image) VALUES(?, ?, ?, ?, ?)";
	    Object[] parameters = { members.getMail(), members.getTitle(), members.getType(),
	    						members.getOrdersItem(), members.getImage() };

	    TransactionStatus transactionStatus = null;
	    DefaultTransactionDefinition transactionDefinition = new DefaultTransactionDefinition();

	    int numberOfRow = 0;

	    try {
	        transactionStatus = transactionManager.getTransaction(transactionDefinition);
	        numberOfRow = jdbcTemplate.update(sql, parameters);
	        transactionManager.commit(transactionStatus);
	    } catch(DataAccessException e){
	        e.printStackTrace();
	        transactionManager.rollback(transactionStatus);
	    } catch(TransactionException e) {
	        e.printStackTrace();

	        if(transactionStatus != null) {
	            transactionManager.rollback(transactionStatus);
	        }
	    }
	    return numberOfRow;
	}
	//レンタル履歴をordersテーブルへ登録
	public int insertOrders(Members members) {
	    String sql = "INSERT INTO orders(mail, title, type, ordersItem, image) VALUES(?, ?, ?, ?, ?)";
	    Object[] parameters = { members.getMail(), members.getTitle(), members.getType(), members.getOrdersItem(), members.getImage() };

	    TransactionStatus transactionStatus = null;
	    DefaultTransactionDefinition transactionDefinition = new DefaultTransactionDefinition();

	    int numberOfRow = 0;
	    try {
	        transactionStatus = transactionManager.getTransaction(transactionDefinition);
	        numberOfRow = jdbcTemplate.update(sql, parameters);
	        transactionManager.commit(transactionStatus);
	    } catch(DataAccessException e){
	        e.printStackTrace();
	        transactionManager.rollback(transactionStatus);
	    } catch(TransactionException e) {
	        e.printStackTrace();

	        if(transactionStatus != null) {
	            transactionManager.rollback(transactionStatus);
	        }
	    }
	    return numberOfRow;
	}
	public Members getCartListId(Members cartListNo) {
		String sql = "SELECT * FROM history WHERE historyNo=?";
	    Object[] parameters = { cartListNo };
	    try {
	        Members members = jdbcTemplate.queryForObject(sql, parameters, membersMapper);
	        return members;
	    } catch(EmptyResultDataAccessException e){
	        e.printStackTrace();
	    } catch(Exception e) {
	        System.out.println("籠が空です");
	    }
	    return null;
	}
	//カートに入れる処理。在庫から減少させる。
	public boolean addToCartAndUpdateStock(int itemNo, int quantity) {
	    String getStockSql = "SELECT quantity FROM movitem WHERE item_no = ?";
	    String updateStockSql = "UPDATE movitem SET quantity = quantity - ? WHERE item_no = ?";

	    TransactionStatus transactionStatus = null;
	    DefaultTransactionDefinition transactionDefinition = new DefaultTransactionDefinition();
	    try {
	        transactionStatus = transactionManager.getTransaction(transactionDefinition);
	        // 商品の在庫を取得
	        int currentStock = jdbcTemplate.queryForObject(getStockSql, new Object[]{itemNo}, Integer.class);

	        // 在庫が選択された数量以上ある場合
	        if (currentStock >= quantity) {
	            // 在庫を減らす
	            jdbcTemplate.update(updateStockSql, quantity, itemNo);
	            transactionManager.commit(transactionStatus);
	            return true;
	        } else {
	            // 在庫がない場合はエラーメッセージを表示してfalseを返す
	            System.out.println("在庫が不足しています。");
	            return false;
	        }
	    } catch (EmptyResultDataAccessException e) {
	        e.printStackTrace();

	        // トランザクションロールバック
	        if (transactionStatus != null) {
	            transactionManager.rollback(transactionStatus);
	        }
	        return false;
	    } catch (Exception e) {
	        e.printStackTrace();

	        // トランザクションロールバック
	        if (transactionStatus != null) {
	            transactionManager.rollback(transactionStatus);
	        }
	        return false;
	        }
	}
	//カートから削除する処理。在庫を加算。
	public int remove(int historyNo) {
	    String updateStockSql = "UPDATE movitem SET quantity = quantity + (SELECT ordersItem FROM history WHERE historyNo=?)";

	    // 対応する商品の在庫を増加させる
	    jdbcTemplate.update(updateStockSql, historyNo);

	    // history テーブルから削除
	    String deleteHistorySql = "DELETE FROM history WHERE historyNo=?";
	    Object[] parameters = { historyNo };
	    return jdbcTemplate.update(deleteHistorySql, parameters);
	}
	//adminテーブルに登録されている従業員情報を取得する
	public int clearCart(Model model) {
		String sql = "DELETE FROM history";
		return jdbcTemplate.update(sql);
	}
	public Members getAdminByUser(String mail, String password) {
		String sql = "SELECT * FROM admin WHERE mail = ? AND password = ?";
		Object[] parameters = { mail, password };
		try {
		     Members admin = jdbcTemplate.queryForObject(sql, parameters, membersMapper);
		     	return admin;
		    } catch (EmptyResultDataAccessException e) {
		    	return null;
		    }
	}
	//メールアドレスでユーザー情報を特定
	public Members getMembersByMail(String mail) {
	    String sql = "SELECT * FROM members WHERE mail = ?";
	    Object[] parameters = { mail };
	    try {
	        Members member = jdbcTemplate.queryForObject(sql, parameters, membersMapper);
	        return member;
	    } catch (EmptyResultDataAccessException e) {
	        // ユーザーが見つからない場合はnullを返す
	        return null;
			}
	}
	public boolean addToUpdateStock(int itemNo) {
		String getStockSql = "SELECT quantity FROM movitem WHERE item_no = ?";
	    String updateStockSql = "UPDATE movitem SET quantity = quantity + 1 WHERE item_no = ?";

        TransactionStatus transactionStatus = null;
        DefaultTransactionDefinition transactionDefinition = new DefaultTransactionDefinition();
        try {
        	transactionStatus = transactionManager.getTransaction(transactionDefinition);
        	// 商品の在庫を取得
	        int currentStock = jdbcTemplate.queryForObject(getStockSql, new Object[]{itemNo}, Integer.class);
            // 在庫が1つ以上ある場合
            if (currentStock > 0) {
            	jdbcTemplate.update(updateStockSql, currentStock + 1, itemNo);
                transactionManager.commit(transactionStatus);
                return true;
	            } else {
	            	// 在庫がない場合はエラーメッセージを表示してfalseを返す
	                System.out.println("在庫が不足しています。");
	            return false;
	            }
	        } catch (EmptyResultDataAccessException e) {
	            e.printStackTrace();

	            if (transactionStatus != null) {
	            	transactionManager.rollback(transactionStatus);
	            }
	            return false;
	        } catch (Exception e) {
	            e.printStackTrace();

	            if (transactionStatus != null) {
	                transactionManager.rollback(transactionStatus);
	            }
	            return false;
	        }
	}
	//マイページ上で会員情報を削除する
	public int removeMember(String mail) {
		String sql = "DELETE FROM members WHERE mail=?";
		Object[] parameters = { mail };
		return jdbcTemplate.update(sql, parameters);
	}
	//マイページ上で会員情報を編集する
	public int updateMember(Members member) {
		String sql = "UPDATE members SET name=?, birthday=?, zip=?, address=?, phone=?, password=?, plan=?, card=? WHERE mail=?";
		Object[] parameters = { member.getName(), member.getBirthday(), member.getZip(), member.getAddress(),
	                            member.getPhone(), member.getPassword(), member.getPlan(), member.getCard(), member.getMail() };

	    TransactionStatus transactionStatus = null;
	    DefaultTransactionDefinition transactionDefinition = new DefaultTransactionDefinition();

	    int numberOfRow = 0;
	    try {
	        transactionStatus = transactionManager.getTransaction(transactionDefinition);
	        numberOfRow = jdbcTemplate.update(sql, parameters);
	        transactionManager.commit(transactionStatus);
		    } catch(DataAccessException e){
		    	e.printStackTrace();
		        transactionManager.rollback(transactionStatus);
		    } catch(TransactionException e) {
		        e.printStackTrace();

		        if(transactionStatus != null) {
		            transactionManager.rollback(transactionStatus);
		        }
		    }
		    return numberOfRow;
	}
	/*
	//いるかも？？item_noを使う
	public Members pickTenItemById(Members member) {
		String sql = "INSERT INTO tencart(title, type,item_no) VALUES(?, ?, ?)";
		Object[] parameters = { member.getTitle(), member.getType(),member.getItemNo() };
		try {
			Members members = jdbcTemplate.queryForObject(sql, parameters, membersMapper);
			return members;
			} catch(EmptyResultDataAccessException e){
				e.printStackTrace();
				return null;
			}
	}
	*/
	//takahiro力作！！！
	//以下は従業員用のクエリ。tencartテーブルを使用
	public List<Members> getTenCartList(){
		String sql = "SELECT * FROM tencart";
		List<Members> tenCartList = jdbcTemplate.query(sql, membersMapper);
		return tenCartList;
	}
	//従業員用カートテーブル。インサート
	public int insertTenCart(Members members) {
		String sql = "INSERT INTO tencart(title, type, item_no, orderItem, image) VALUES(?, ?, ?, ?, ?)";
	    Object[] parameters = { members.getTitle(), members.getType(), members.getItemNo(), members.getOrderItem(), members.getImage() }; // 追加

		TransactionStatus transactionStatus = null;
		DefaultTransactionDefinition transactionDefinition = new DefaultTransactionDefinition();

		int numberOfRow = 0;
		try {
			transactionStatus = transactionManager.getTransaction(transactionDefinition);
		    numberOfRow = jdbcTemplate.update(sql, parameters);
		    transactionManager.commit(transactionStatus);
		    } catch(DataAccessException e){
		        e.printStackTrace();
		        transactionManager.rollback(transactionStatus);
		    } catch(TransactionException e) {
		        e.printStackTrace();
		        if(transactionStatus != null) {
		            transactionManager.rollback(transactionStatus);
		        }
		    }
	    	return numberOfRow;
	}
	//従業員用カートテーブル
	public int clearTenCart(Model model) {
		String sql = "DELETE FROM tencart";
		 return jdbcTemplate.update(sql);
	}
	//発注確定押したらここで増やす。item_noで指定
	public int updateQuantity(int itemNo, int additionalQuantity) {
		String sql = "UPDATE movitem SET quantity = quantity + ? WHERE item_no = ?";
		Object[] parameters = { additionalQuantity, itemNo };
		try {
			return jdbcTemplate.update(sql, parameters);
		    } catch (DataAccessException e) {
		        e.printStackTrace();
		        return 0;
		    }
	}
	//従業員用カートテーブル。orderNoで指定
	public int removeTen(int orderNo) {
		String sql = "DELETE FROM tencart WHERE orderNo=?";
		Object[] parameters = { orderNo };
		return jdbcTemplate.update(sql, parameters);
	}
	// tencartテーブルから指定したorderNoの注文情報を取得するメソッド
	public Members pickTenCartByOrderNo(int orderNo) {
	    String sql = "SELECT * FROM tencart WHERE orderNo = ?";
	    Object[] parameters = { orderNo };
	    try {
	        return jdbcTemplate.queryForObject(sql, parameters, membersMapper);
	    } catch (EmptyResultDataAccessException e) {
	        e.printStackTrace();
	        return null;
	    }
	}
	// movItemのquantityを減少させるメソッド
	public int decreaseQuantity(String itemNo, int subtractedQuantity) {
	    String sql = "UPDATE movitem SET quantity = quantity - ? WHERE item_no = ?";
	    Object[] parameters = { subtractedQuantity, itemNo };
	    try {
	    	return jdbcTemplate.update(sql, parameters);
	    	} catch (DataAccessException e) {
	    		e.printStackTrace();
	    		return 0;
	    	}
	}
}
