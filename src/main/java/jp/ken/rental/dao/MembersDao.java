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
	//item
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
	//↓引数がString　Stringになってたので修正
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
	//ピックした商品情報を取る
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
		String sql = "INSERT INTO movitem(item_no, title, type, category) VALUES(?, ?, ?, ?, ?)";
		Object[] parameters = { members.getItemNo(), members.getTitle(), members.getType(), members.getCategory() };

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
	//主キー（item_no）の重複はできないので、タイトル+タイプで商品を特定できるようにした
	public int insertCart(Members members) {
		String sql = "INSERT INTO history(title, type) VALUES(?, ?)";
		Object[] parameters = { members.getTitle(), members.getType() };

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
	public Members getCartListId(Members cartListNo) {
		String sql = "SELECT * FROM history WHERE item_no=?";
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
	public int remove(String string) {
		String sql = "DELETE FROM history WHERE item_no=?";
	    Object[] parameters = { string };
	    return jdbcTemplate.update(sql, parameters);
	}
	public int clearCart(Model model) {
		String sql = "DELETE FROM history";
		 return jdbcTemplate.update(sql);

	}
}