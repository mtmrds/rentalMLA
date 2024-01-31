<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Yomogi&display=swap" rel="stylesheet">

<meta charset="UTF-8">
<title>Music Life Agency</title>
<style>

body{
   background-image:url(resources/image/pink.jpg);
   background-size: cover;
   font-family: 'Yomogi', cursive;


}
 h1{
 	color: grey;
   	background: #f6bfbc; /*背景色*/
  	padding: 0.5em;/*文字周りの余白*/
  	border-radius: 0.5em;/*角の丸み*/
  	font-family: 'Monomaniac One', sans-serif;
  	font-size: 35px;
}
h2{
	color: grey;
	background: linear-gradient(transparent 70%, #feefb6 90%);

}
h3{
	color: grey;
	font-family: 'Yomogi', cursive;
}
.error{
		color: #ff0000;
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
	<jsp:include page="header.jsp"/>
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
</body>
</html>