<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Yomogi&display=swap" rel="stylesheet">

<meta charset=UTF-8>
<title>Music Life Agency</title>
<style>
.errors {
	color: #ff0000;
}
</style>
</head>
<body>
	<div class="toppage">
	<!-- 当jspをレンタルサイトの表紙として、各ページ遷移等の起点にしたい感じっす 元村 -->
	<jsp:include page="header.jsp"/>
	<form:form modelAttribute="loginModel">
	<div class="title">
		<h1>レンタルサイト</h1>
	</div>
		<!-- メニュボタン削除 -->
		<div style="text-align: center" class="top">
			<!--
			     バインディングオブジェクト(ItemModel)を使いたいので、
				 action="search"だった部分をモデルアトリへ変更しています 元村
			-->
			<form:form modelAttribute="itemModel">
				<label for="searchInput">検索:</label>
				<input type="text" id="searchInput">
				<input type="submit" value="検索する" class="btn">
			</form:form>
			<!-- div style="text-align: right;">-->
			<br>
			<a href="setRegist">会員登録</a>
			<a href="login">ログイン</a>
			<a href="cart">カート</a>
		</div>
	</form:form>
	<jsp:include page="footer.jsp" />
	</div>
</body>
</html>