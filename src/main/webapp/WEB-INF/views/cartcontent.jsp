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

	<div id="wapper">
		<jsp:include page="header.jsp"></jsp:include>

			<a href="form">トップに戻る</a>
	</div>



				<table>
					<tr>
						<th>ID</th>
						<th>タイトル</th>
						<th>画像</th>
					</tr >
				<c:forEach var="items" items="${itemList}">
					<tr>
						<td><c:out value="${items.itemNo}"/></td>
						<td><c:out value="${items.title}"/></td>

					</tr>
				</c:forEach>
				</table>



				<p>カートに商品がありません。</p>

			<form:form modelAttribute="loginModel">
            <input type="submit"  name = "index" value="確認する">
				</form:form>

    <jsp:include page="footer.jsp"/>

</body>
</html>
