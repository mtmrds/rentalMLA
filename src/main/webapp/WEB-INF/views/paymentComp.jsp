<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- レンタル完了画面 -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>レンタル完了画面</title>
	<link href="resources/css/shopping.css" rel="stylesheet">
</head>
<body>
	<div class="paymentcomp">
		<jsp:include page="header.jsp"/>
			<div class="paymentcomptitle">
				<h1>レンタル完了画面</h1>
			</div>
			<div class="fade-in-text">
				<p>レンタルありがとうございました(^_-)-☆</p>
				<img src="resources/image/お辞儀.png"/>
			</div>

			<p><a href="<c:url value='search' />">検索画面に戻る</a>
			|<a href="<c:url value='top' />">トップに戻る</a></p>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>