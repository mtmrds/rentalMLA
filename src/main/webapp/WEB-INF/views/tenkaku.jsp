<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="java.util.List"%>

<!-- カート内 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>発注商品一覧</title>
	</head>
	<body style="background-color: gray;">
		<!-- <div class="cartcontent"> -->
			<jsp:include page="headeremp.jsp"/>
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
						<td><img src="${listCart.image }"width="100" height="150" /></td>
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
		<form:form modelAttribute="loginModel">
			<input type="submit"  name = "index" value="発注確定">
		</form:form>
		<a href="master">従業員画面作業へ（仮）</a>
		<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>
