<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Yomogi&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>カート内</title>
<style>
body{
	background-image:url(resources/image/pink.jpg);
	font-family: 'Yomogi', cursive;
}
</style>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<h1>カートに入っている商品</h1>

				<table>
					<tr>
						<th>ID</th>
						<th>タイトル</th>
						<th>画像</th>
					</tr >
					<c:forEach var="members" items="${cartList}">
						<tr>
							<td><c:out value="${members.itemNo}"/></td>
							<td><c:out value="${members.title}"/></td>
							<td>
								<form:form modelAttribute="membersSearchModel">
									<form:hidden path="id" value="${members.id }"/>
									<form:hidden path="name" value="dl"/>
									<input type="submit" value="削除">
								</form:form>
							</td>
						</tr>]
					</c:forEach>
				</table>
				<p>カートに商品がありません。</p>
			<p><a href="<c:url value='search' />">検索画面に戻る</a></p>
			<p><a href="<c:url value='top' />">トップに戻る</a></p>
			<form:form modelAttribute="itemModel">
            <input type="submit"  name = "index" value="決済">
				</form:form>
    <jsp:include page="footer.jsp"/>
</body>
</html>
