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
		Object[] parameters = {name};
		List<Members> membersList = jdbcTemplate.query(sql, parameters , membersMapper);

		return membersList;
	}

	public Members getMembersById(String string) {
		String sql = "SELECT * FROM members WHERE id=?";
		Object[] parameters = {string};
		try {
			Members members = jdbcTemplate.queryForObject(sql, parameters, membersMapper);
			return members;
		}catch(EmptyResultDataAccessException e){
			e.printStackTrace();
			return null;

		public List<Members> getListByName(String name){
			String sql = "SELECT * FROM members WHERE name LIKE ?";
			name = name.replace("%", "\\%").replace("_", "\\_");
			name = "%" + name + "%";
			Object[] parameters = { name };
			List<Members> membersList = jdbcTemplate.query(sql, parameters , membersMapper);
			return membersList;

		public Members getMembersByPassword(String string) {
			String sql = "SELECT * FROM members WHERE password=?";
			Object[] parameters = {string};
			try {
				Members members = jdbcTemplate.queryForObject(sql, parameters, membersMapper);
				return members;
			}catch(EmptyResultDataAccessException e){
				e.printStackTrace();
				return null;
			}
	}

	public int insert(Members members) {
		String sql = "INSERT INTO members(name,zip,address,phone,email,birthday,card)VALUES(?,?,?,?,?.?,?);";
		Object[] parameters = {members.getName(), members.getZip(), members.getAddress(), members.getPhone(),
				members.getEmail(), members.getBirthday(), members.getCard()};

		public Members getMembersByUserPass(String name, String password){
			String sql = "SELECT * FROM members WHERE name = ? AND password = ?;";
			Object[] parameters = { name, password };
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
		String sql = "INSERT INTO members(name,address,phone,mail,birthday,card)VALUES(?,?,?,?.?,?);";
		Object[] parameters = { members.getName(), members.getAddress(), members.getPhone(),
								members.getMail(), members.getBirthday(), members.getCard() };

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
}
