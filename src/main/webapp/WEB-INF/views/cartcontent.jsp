<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="java.util.List"%>

<!-- カート内 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>カート内</title>
	</head>
	<body>
		<div class="cartcontent">
			<jsp:include page="header.jsp"/>
			<form:form modelAttribute="itemModel">
    			<table>
    				<tr>
						<th>ID</th>
						<th>タイトル</th>
						<th>画像</th>
					</tr>
					<c:forEach var="listCart" items="${cartList}">
					<tr>
						<td><c:out value="${listCart.title}"/></td>
						<td><c:out value="${listCart.type}"/></td>
						<td><c:out value="${listCart.category}"/></td>
					</tr>
				</c:forEach>
			</table>
		</form:form>
		<form:form modelAttribute="loginModel">
			<input type="submit"  name = "index" value="決済">
		</form:form>
		<a href="top">トップに戻る</a>
		<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>
