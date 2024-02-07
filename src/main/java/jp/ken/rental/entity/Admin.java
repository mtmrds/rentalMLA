package jp.ken.rental.entity;

import java.io.Serializable;
import java.util.Date;

public class Admin implements Serializable {

	private int id;
    private String name;
    private Date birthday;
    private String zip;
    private String address;
    private String phone;
    private String mail;
    private String password;

	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public Date getBirthday() {
		return birthday;
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
	public String getPassword() {
		return password;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
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
	public void setPassword(String password) {
		this.password = password;
	}
}
