<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- 決済確認画面 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>決済確認画面</title>
<style>
div.center {
width:700px;
margin-right: auto;
margin-left : auto;
text-align: center;
}
</style>
	</head>
	<body>
		<div class="payment">
			<jsp:include page="header.jsp"/>
			<div class="center">

				<div class="paymenttitle">
					<h1>レンタルを確定しますか？</h1>
				</div>
				<form:form modelAttribute="itemModel">
				<table cellpadding="15" algin="center">
				<!-- タイトルと商品画像 -->
					<tr>
						<th>画像</th>
						<th>タイトル</th>
						<th>タイプ</th>
					</tr>
					<c:forEach var="listCart" items="${cartList}">
					<tr>
						<td><img src="${listCart.image }"width="100" height="150" /></td>
						<td><c:out value="${listCart.title}"/></td>
						<td><c:out value="${listCart.type}"/></td>
					</tr>
				</c:forEach>
				</table>
						<br>

						<input type="submit" name = "end" value="レンタル確定"  class="btn"/>

						<br>
				</form:form>
			</div>
			<p><a href="<c:url value='cart' />">カート確認</a></p>
			<p><a href="<c:url value='search' />">検索画面に戻る</a></p>
			<p><a href="<c:url value='top' />">トップに戻る</a></p>

			<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>