<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>決済確認画面</title>
<style>
body{
	background-image:url(resources/image/pink.jpg);
	font-family: 'Yomogi', cursive;
}
table {
	text-align: center;
}

</style>
</head>

<body>
	<!-- カート内の最終確認 -->
	<jsp:include page="header.jsp"/>
		<main>
		<div class="payment">
		<h1>決済確認画面</h1>
		</div>
	<form:form modelAttribute="itemModel">
	<table border="1">
		<!-- タイトルと商品画像 -->
			<tr>
				<th>画像</th>
				<th>タイトル</th>
				<th>タイプ</th>
			</tr>
		<c:forEach var="listCart" items="${cartList}">

			<tr>
				<td>&nbsp;</td><!-- 画像の引っ張り方不明の為空白にしています -->
				<td><c:out value="${listCart.title}"/></td>
				<td><c:out value="${listCart.type}"/></td>
			</tr>

		</c:forEach>
		</table>

		<table>
		<tr>
			<td colspan="4"><input type="submit" name = "end" value="決済確定" /></td>
		</tr>
		</table>
</form:form>
</main>
    <jsp:include page="footer.jsp"/>
</body>
</html>