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
    			<table border="1">
    				<tr>
						<th>&nbsp;</th>
						<th>画像</th>
						<th>タイトル</th>
						<th>タイプ</th>
						<th>&nbsp;</th>
					</tr>
					<c:forEach var="listCart" items="${cartList}">
					<tr>
						<td>${listCart.itemNo }</td>
						<td>&nbsp;</td>
						<td><c:out value="${listCart.title}"/></td>
						<td><c:out value="${listCart.type}"/></td>
						<td>
							<form:hidden path="cNo" value="${listCart.cNo}" />
							<input type="submit" name="delete" value="削除">
						</td>
					</tr>
				</c:forEach>
			</table>
		</form:form>
		<br>
		<form:form modelAttribute="loginModel">
			<input type="submit"  name = "index" value="決済" class="btn">
		</form:form>
		<br>
		<a href="top">トップに戻る</a>
		<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>
