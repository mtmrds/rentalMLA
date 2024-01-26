<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Music Life Agency</title>
<style>
.errors{
	color: #ff0000;
}
</style>
</head>
<body>
		<form:form modelAttribute="loginModel">
			<h1>ようこそMusic Life Agencyへ！</h1>
			<p>ログインIDとパスワードを入力して下さい</p>
			<h3>ログインID</h3>
		</form:form>
</body>
</html>