<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<!-- 文字フォント  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Yomogi&display=swap" rel="stylesheet">

<meta charset="UTF-8">
<title>カートにセット</title>
<!-- 背景画像、文字フォント -->
<style>
body{
	background-image:url(resources/image/pink.jpg);
	font-family: 'Yomogi', cursive;

}
</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<h1>カートに商品を入れました</h1>


	<p><a href="<c:url value='cart' />">カート確認</a></p>
	<p><a href="<c:url value='search' />">検索画面に戻る</a></p>
	<p><a href="<c:url value='top' />">トップに戻る</a></p>
	<jsp:include page="footer.jsp"/>
</body>
</html>