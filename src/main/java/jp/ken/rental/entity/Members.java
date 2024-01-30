package jp.ken.rental.entity;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Members implements Serializable{
	private Integer id;
	private String password;
	private String name;
	private String zip;
	private String address;
	private String phone;
	private String mail;
	private java.sql.Date birthday;
	private String card;
	//itemEntity
	private String itemNo;
	private String title;
	private String type;
	private String category;
	private String quantity;


	private static final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");

	public static java.sql.Date parseDate(String stringDate){
		try {
			java.util.Date date = dateFormat.parse(stringDate);
			long time = date.getTime();
			return new java.sql.Date(time);
		}catch(ParseException e) {
			e.printStackTrace();
			return null;
		}
	}
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public java.sql.Date getBirthday() {
		return birthday;
	}

	public void setBirthday(java.sql.Date birthday) {
		this.birthday = birthday;
	}

	public String getCard() {
		return card;
	}

	public void setCard(String card) {
		this.card = card;
	}

	public static SimpleDateFormat getDateformat() {
		return dateFormat;
	}


	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	//itemのゲッターセッター
	public String getItemNo() {
		return itemNo;
	}
	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}


}

