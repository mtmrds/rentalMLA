<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<!-- 昨日は第二工程で実施。他タスクを優先します。 手島 -->
<html>
<head>
<meta charset="UTF-8">
<title>マイページ</title>
<style>
	.button {
		height 20px;
		width 20px;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
		<div>
			<p>マイページ</p>
		</div>
		<div>
			<table>
				<tr>
					<td>会員No</td>
					<td> <form:input path="id" size="50"/></td>
				</tr>
				<tr>
					<td>氏名</td>
					<td><form:input path="name" size="50"/></td>
				</tr>
				<tr>
					<td>郵便番号</td>
					<td><form:input path="zip" size="50" /></td>
				</tr>
				<tr>
					<td>住所</td>
					<td><form:input path="address" size="50"/></td>
				</tr>
				<tr>
					<td>電話番号（ハイフンなし・半角数字）</td>
					<td><form:input path="phone" size="50"/></td>
				</tr>
				<tr>
					<td>メールアドレス</td>
					<td><form:input path="mail" size="50"/></td>
				</tr>
				<tr>
					<td>生年月日</td>
					<td><form:input path="birthday" size="50" /></td>
				</tr>
				<tr>
					<td>クレジットカード</td>
					<td><form:input path="card" size="50"/></td>
				</tr>
				<tr>
					<td>パスワード</td>
					<td><form:input path="password" size="50"/></td>
				</tr>
			</table>
		</div>
		<div>
			<button type="button">更新する</button>
		</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>