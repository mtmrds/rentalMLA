<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Music Life Agency</title>
<style>

body{
   background-image:url(resources/image/ピンク.jpg);
   background-size: cover;


}
 h1{
 background: #ffffff;/*背景色*/
  padding: 0.5em;/*文字まわり（上下左右）の余白*/
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
	<h1>ログイン画面</h1>
	<form:form modelAttribute="loginModel" >

			<table>
				<tr>
					<td><h2>ログイン</h2></td>
					<td>
						<form:input path="loginId"/>
					</td>
					<td>
						<form:errors path="loginId" element="div" cssClass="error" />
					</td>
				</tr>
				<tr>
					<td><h2>パスワード</h2></td>
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
</body>
</html>