<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- 決済確認画面 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>決済確認画面</title>
	</head>
	<body>
		<div class="payment">
			<jsp:include page="header.jsp"/>
			<main>
				<div class="paymenttitle">
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
				<!-- 表の内容がないのでコメントにしてます
				 <table>
					<tr>
						<td colspan="4">-->

						<br>

						<input type="submit" name = "end" value="決済確定"  class="btn"/>

						<br>
					<!--  </td>
					</tr>
				</table>	-->
				</form:form>
			<p><a href="<c:url value='cart' />">カート確認</a></p>
			<p><a href="<c:url value='search' />">検索画面に戻る</a></p>
			<p><a href="<c:url value='top' />">トップに戻る</a></p>
			</main>
			<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>