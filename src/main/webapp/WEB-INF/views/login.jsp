<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- ログイン画面 -->
<!DOCTYPE html>
	<html>
		<head>
		<meta charset="UTF-8">
		<title>Music Life Agency</title>
<style>

body{
   background-image:url(resources/image/pink.jpg);
   background-size: cover;
   font-family: 'Yomogi', cursive;


}

}
h2{
	color: grey;
	background: linear-gradient(transparent 70%, #feefb6 90%);

}

table {
    margin: 150px auto;
    background-color: #f39f86;
    background-image: linear-gradient(315deg, #f09199 10%, #f6bfbc 70%);
    color: #fff;
    padding: 2em;

}

</style>
</head>
<body>
	<div class="loginpage">
	<div class="loginpagelink">
		<jsp:include page="header.jsp"/>
	</div>
	<!-- <h1>☆ログイン画面☆</h1>削除-->
	<form:form modelAttribute="loginModel" >
		<table>
			<tr>
				<td colspan="2">
					<h2>ログイン</h2>
				</td>
			<tr>
				<td>
					<h3>メールアドレス:</h3>
				</td>
				<td>
					<form:input path="mail"/>
				</td>
				<td>
					<form:errors path="mail" element="div" cssClass="error" />
				</td>
			</tr>
			<tr>
				<td>
					<h3>パスワード:</h3>
				</td>
				<td>
					<form:password path="password" />
				</td>
				<td>
					<form:errors path="password" element="div" cssClass="error" />
				</td>
			</tr>
			<tr>
				<td colspan="1">
					<input type="submit" value="ログイン">
				</td>
			</tr>
		</table>
	</form:form>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>