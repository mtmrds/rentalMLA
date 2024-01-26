<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>レンタルサイト ログイン画面</title>
		<h1>ようこそレンタルサイトへ！</h1>
		<p>ログインIDとパスワードを入力して下さい</p>
<style>
.errors{
	color: #ff0000;
}
</style>
</head>
<body>
	<hr />
	<h3>ログインID</h3>
	<div>
  <label for="username">Username:</label>
  <input type="text" id="username" name="username" />
	</div>
			<div class="error"></div>
	<h3>パスワード</h3>
	<div>
		<form:password path="password" />
		<form:errors path="password" element="div" cssClass="error" />
		</form:form>
		<hr />
</body>
</html>