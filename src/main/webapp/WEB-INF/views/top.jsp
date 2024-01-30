<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Monomaniac+One&display=swap" rel="stylesheet">



<meta charset=UTF-8>
<title>Music Life Agency</title>
<style>
.errors{
	color: #ff0000;
}
body {
    color: grey;
    background-image:url(resources/image/pink_gold_buble.jpg);
  	font-family: 'Monomaniac One', sans-serif;
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
}


h1{
		font-family: 'Monomaniac One', sans-serif;
		text-align: center;
		font-size: 80px;

}
.top{
	font-family: 'Monomaniac One', sans-serif;
	font-size: 25px;

}
</style>
</head>
<body>
		<jsp:include page="header.jsp"/>

	<!-- 当jspをレンタルサイトの表紙として、各ページ遷移等の起点にしたい感じっす 元村 -->

		<form:form modelAttribute="loginModel">

		<!--　ログインした後の名前を表示する機能を実装 -->
		<c:if test="${not empty loginModel.name}">
		<p>ようこそ、${loginModel.name}さん</p>
		</c:if>

		<h1>☆レンタルサイト☆</h1>
		<!-- メニュボタン削除 -->

		<div style="text-align: center" class="top">

		<form action="/search" method="GET"></form>
		<label for="searchInput">検索:</label>
		<input type="text" id="searchInput">
		<input type="submit" value="検索する" class="btn">
			<!-- div style="text-align: right;">-->
			<br>
			<a href="setRegist">新規会員登録</a>
			<a href="login">ログイン</a>

      <a href="cart">カート</a>
			</div>

		</form:form>

</body>
</html>