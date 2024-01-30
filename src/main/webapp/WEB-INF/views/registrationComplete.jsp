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
<link href="https://fonts.googleapis.com/css2?family=Kaisei+Decol&family=Monomaniac+One&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>登録完了画面</title>
</head>
<style>
<!-- 背景画像、文字フォント -->
body{
	background-image:url(resources/image/pink_gold_buble.jpg);
	font-family: 'Kaisei Decol', serif;
	font-family: 'Monomaniac One', sans-serif;
}
</style>
<body>

	<h1>登録完了画面</h1>

	<a>ご登録ありがとうございました(^_-)-☆</a>

	<!--<jsp:include page="footer.jsp" />-->
	<p><a href="<c:url value='top' />">トップに戻る</a></p>
</body>
</html>

