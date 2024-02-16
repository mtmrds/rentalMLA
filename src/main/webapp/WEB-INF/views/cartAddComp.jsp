<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- カート確認 -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>カートにセット</title>
</head>
<body>
	<div class="cartaddcomp">
		<jsp:include page="header.jsp"/>
			<div class="center">
				<h1>カートに商品を入れました</h1>
				<p><a href="<c:url value='cart' />">カート確認</a>
				 | <a href="<c:url value='search' />">検索画面に戻る</a>
				 | <a href="<c:url value='top' />">トップに戻る</a></p>
			</div>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>