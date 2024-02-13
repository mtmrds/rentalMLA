<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- ログイン画面 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Music Life Agency</title>
		<style>
			.errors {
			font-family: 'Yomogi',cursive;
			color: red;
			font-weight: bold;
		}
		</style>
	</head>
	<body>
		<div class="loginpage">
			<jsp:include page="header.jsp"/>
			<form:form modelAttribute="loginModel" >
			<table border="1" frame="box" rules="none" cellpadding="15" align="center">
				<tr>
					<td colspan="2" align="center">
						<h2>ログイン</h2>
					</td>
				<tr>
					<td>
						<h3>メールアドレス:</h3>
					</td>
					<td>
						<form:input path="mail"/>
						<form:errors path="mail" element="div" cssClass="error" />
					</td>
				</tr>
				<tr>
					<td>
						<h3>パスワード:</h3>
					</td>
					<td>
						<form:password path="password" />
						<form:errors path="password" element="div" cssClass="errors"/>
					</td>
				</tr>
				<tr>
				<br>
					<td class="btn-5"colspan="2" align="center">
						<input type="submit" value="ログイン" class="btn">
					</td>
				<br>
				</tr>

				</table>

			</form:form>
			<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>