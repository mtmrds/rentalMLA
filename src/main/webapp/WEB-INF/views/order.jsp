<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品履歴一覧</title>
</head>
<body>
<jsp:include page="header.jsp"/>
	<h1>商品履歴一覧</h1>
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
		</form:form>
		<p><a href="<c:url value='top' />">トップに戻る</a></p>
	<jsp:include page="footer.jsp"/>

</body>
</html>