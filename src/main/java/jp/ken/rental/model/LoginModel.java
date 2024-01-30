package jp.ken.rental.model;

import java.io.Serializable;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import jp.ken.rental.groups.Group1;

public class LoginModel implements Serializable {
	//一般的に、メールアドレス+パスワードでログイン認証するパターンが多いので、それでいいかも？
	//ので、loginIdは一旦コメントアウトします(jspも調整します) 元村

	/*
	@NotEmpty(message = "ログインIDは必須です。")
	private String loginId;
	*/

	@NotEmpty(message = "メールアドレスが未入力です")
	@Email(message = "メールアドレスを入力して下さい",
	groups = Group1.class)
	private String mail;


	@NotEmpty(message = "パスワードは必須です。")
	private String password;

	private String name;


	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
