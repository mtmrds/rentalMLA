package jp.ken.rental.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import jp.ken.rental.groups.Group1;

public class MemberModel {
	@NotEmpty(message = "氏名が未入力です")
	private String name;

	@NotEmpty(message = "郵便番号が未入力です")
	@Pattern(regexp = "^[0-9]{3}[0-9]{4}$", message = "郵便番号を正しく入力して下さい")
	private String zip;

	@NotEmpty(message = "住所が未入力です")
	private String address;

	@NotEmpty(message = "電話番号が未入力です")
	@Pattern(regexp = "0[0-9]{9,10}", message = "電話番号を正しく入力して下さい",
	groups = Group1.class)
	private String phone;

	@NotEmpty(message = "メールアドレスが未入力です")
	@Email(message = "メールアドレスを入力して下さい",
	groups = Group1.class)
	private String mail;

	@NotEmpty(message = "誕生日が未入力です")
	//@DateFormat(message = "誕生日を正しく入力して下さい",groups = Group1.class)
	private String birthday;

	@NotEmpty(message = "カード情報が未入力です")
	private String card;

	@Pattern(regexp = "/^(?=.*?[a-z])(?=.*?\\d)[a-z\\d]{8,100}$/i", message = "英数字を含む８文字以上でパスワードを入力して下さい", groups = Group1.class)
	@NotEmpty(message = "パスワードが未入力です")
	private String password;

	private String plan;

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

	public String getBirthday() {
		return birthday;
	}

	public String getCard() {
		return card;
	}

	public String getPassword() {
		return password;
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

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public void setCard(String card) {
		this.card = card;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPlan() {
		return plan;
	}

	public void setPlan(String plan) {
		this.plan = plan;
	}
}