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
	<div id="wapper">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
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
			<tr>
				<td>カートに商品がありません。</td>
	</form:form>



		<form:form modelAttribute="loginModel">
            		<input type="submit"  name = "index" value="決済">
        </form:form>



				<a href="top">トップに戻る</a>

    <jsp:include page="footer.jsp"/>
</body>
</html>
