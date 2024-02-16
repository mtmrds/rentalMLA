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
			<div class="center">
			<h1>カート内商品</h1>
			<form:form modelAttribute="itemModel">
    			<table border="1">
    				<tr>
						<!-- <th>ID</th> -->
						<th>画像</th>
						<th>タイトル</th>
						<th>タイプ</th>
						<th>レンタル数量</th>
						<th>商品削除</th>
					</tr>
					<c:forEach var="listCart" items="${cartList}">
					<tr>
						<!-- <td>${listCart.itemNo }</td> -->
						<td><img src="${listCart.image }"width="100" height="150" /></td>
						<td><c:out value="${listCart.title}"/></td>
						<td><c:out value="${listCart.type}"/></td>
						<td><c:out value="${listCart.ordersItem}"/></td>
						<td>
							<form:hidden path="historyNo" value="${listCart.historyNo}" />
							<input type="submit" name="delete" value="削除">
						</td>
					</tr>
				</c:forEach>
			</table>

		</form:form>
		<br>
		<form:form modelAttribute="loginModel">
			<input type="submit"  name = "index" value="レンタル手続きへ" class="btn">

		</form:form>


		<p>${message}</p>
		<br>
		</div>
		<p><a href="<c:url value='top' />">トップに戻る</a></p>
		<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>
