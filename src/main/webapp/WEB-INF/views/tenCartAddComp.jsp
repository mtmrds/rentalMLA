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
	<body style="background-color: gray;">
		<div class="cartaddcomp">
			<jsp:include page="headeremp.jsp"/>
				<h1>カートに商品を入れました</h1>
				<p><a href="<c:url value='adminCart' />">発注カート確認</a></p>
				<p><a href="<c:url value='master' />">店員トップ</a></p>
			<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>