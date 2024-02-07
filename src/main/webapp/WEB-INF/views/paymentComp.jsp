<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>レンタル完了画面</title>

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
	<div class="paymentcomp">
	<h1>レンタル完了画面</h1>
	</div>

	<a>レンタルありがとうございました(^_-)-☆</a>

	<p><a href="<c:url value='top' />">トップに戻る</a></p>
	<jsp:include page="footer.jsp"/>
</body>
</html>