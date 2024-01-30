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

}

