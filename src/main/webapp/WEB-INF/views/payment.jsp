<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<!-- 文字フォント -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kaisei+Decol&family=Monomaniac+One&display=swap" rel="stylesheet">

<meta charset="UTF-8">
<title>決済確認画面</title>
<style>
<!-- 背景画像、文字フォント -->
body{
	background-image:url(resources/image/pink.jpg);
	font-family: 'Kaisei Decol', serif;
	font-family: 'Monomaniac One', sans-serif;
}
</style>
</head>

<body>
	<jsp:include page="header.jsp"/>
		<main>
		<h1>決済確認画面</h1>
	<form:form modelAttribute="itemModel">
	<table>
		<!-- タイトルと商品画像 -->
		<tr>
			<th>&nbsp;</th>
			<th>タイトル</th>
			<th>タイプ</th>
			<th>カテゴリー</th>
		</tr>
		<tr>
			<td>${ itemModel.itemNo }</td><!-- 画像の引っ張り方不明の為「itemNo」にしています -->
			<td>${ itemModel.title }</td>
			<td>${ itemModel.type }</td>
			<td>${ itemModel.category }</td>
		</tr>


		<!-- カート内の最終確認 -->



		message = "合計：<strong>" + total + "点" + "</strong>になります";


		<p>
			<a colspan="2" style="text-align:center;">
				<input type="submit" value="決済"/>
			</a>
		</p>



	</table>
</form:form>
</main>
    <jsp:include page="footer.jsp"/>
</body>
</html>