<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カート内</title>
<style>
td {
	text-align: center:
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<form method="POST" action="cart">
		<input type="submit" value="確認する">
	</form>
	<table>
	<tr>
		<th>ID</th>
		<th>タイトル</th>
		<th>画像</th>
	</tr >
	<tr>
		<c:forEach var="items" items="${CartList}">
			<td><c:out value="${items.itemNo}" /></td>
			<td><c:out value="${items.title}" /></td>
		</c:forEach>
	</table>
		<p><a href="<c:url value='top' />">トップに戻る</a></p>
			<form:form modelAttribute="loginModel">
            	<input type="submit"  name = "index" value="確認する">
			</form:form>
	<jsp:include page="footer.jsp" />
</body>
</html>
