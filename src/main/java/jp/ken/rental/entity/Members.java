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
	private String plan;
	//itemEntity
	private String itemNo;
	private String title;
	private String type;
	private String category;
	private Integer quantity;

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

	public String getPassword() {
		return password;
	}

	public String getName() {
		return name;
	}

	public String getZip() {
		return zip;
	}

	public String getAddress() {
		return address;
	}

	public String getPhone() {
		return phone;
	}

	public String getMail() {
		return mail;
	}

	public java.sql.Date getBirthday() {
		return birthday;
	}

	public String getCard() {
		return card;
	}

	public String getPlan() {
		return plan;
	}

	public String getItemNo() {
		return itemNo;
	}

	public String getTitle() {
		return title;
	}

	public String getType() {
		return type;
	}

	public String getCategory() {
		return category;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public static SimpleDateFormat getDateformat() {
		return dateFormat;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public void setBirthday(java.sql.Date birthday) {
		this.birthday = birthday;
	}

	public void setCard(String card) {
		this.card = card;
	}

	public void setPlan(String plan) {
		this.plan = plan;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
}