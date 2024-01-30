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
.error{
		color: #ff0000;
}
</style>
</head>
<body>
	<h1>ログイン画面</h1>
	<form:form modelAttribute="loginModel" >

			<table>
				<tr>
					<td>ログイン</td>
					<td>
						<form:input path="loginId"/>
					</td>
					<td>
						<form:errors path="loginId" element="div" cssClass="error" />
					</td>
				</tr>
				<tr>
					<td>パスワード</td>
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