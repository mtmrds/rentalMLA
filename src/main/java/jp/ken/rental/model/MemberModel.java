package jp.ken.rental.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import jp.ken.rental.annotation.DateFormat;
import jp.ken.rental.groups.Group1;

public class MemberModel {

	@NotEmpty(message = "氏名が未入力です")
	private String name;

	@NotEmpty(message = "郵便番号が未入力です")
	@Pattern(regexp = "^[0-9]{3}-[0-9]{4}$", message = "郵便番号を正しく入力して下さい")
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
	private String email;

	@NotEmpty(message = "誕生日が未入力です")
	@DateFormat(message = "誕生日を正しく入力して下さい",
	groups = Group1.class)
	private String birthday;

	@NotEmpty(message = "カード情報が未入力です")
	private String card;


	@Pattern(regexp = "/^(?=.*?[a-z])(?=.*?\\d)[a-z\\d]{8,100}$/i", message = "英数字を含む８文字以上でパスワードを入力して下さい", groups = Group1.class)
	@NotEmpty(message = "パスワードが未入力です")

	private String password;

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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getCard() {
		return card;
	}
	public void setCard(String card) {
		this.card = card;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
