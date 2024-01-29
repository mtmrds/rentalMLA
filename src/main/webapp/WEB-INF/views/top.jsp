<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+JP:wght@500&display=swap" rel="stylesheet">
<meta charset=UTF-8>
<title>Music Life Agency</title>
<style>
.errors{
	color: #ff0000;
}
body {
	color: white;
	background-color:black;

}

h1 {
	font-family: 'Noto Serif JP', serif;

}
</style>
</head>
<body>
		<form:form modelAttribute="loginModel">
			<h1>ようこそMusic Life Agencyへ！</h1>
			<p> <a href="http://localhost:8080/rental/WEB-INF/views/top.jsp">メニュー</a></p>
			<form action="/search" method="GET"></form>
		<label for="searchInput">検索:</label>
		<input type="text" id="searchInput">
		<input type="submit" value="検索する" class="btn">
			<div style="text-align: right;"></div>
			 <button type="button">新規会員登録</button>
			 <button type="button">ログイン</button>
			<button type="button">カート</button>
		</form:form>
</body>
</html>