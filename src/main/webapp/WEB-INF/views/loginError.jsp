<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<%-- ログインエラー画面 --%>

<!DOCTYPE html>

<html>
<head>
<!-- 文字フォント -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kaisei+Decol&family=Monomaniac+One&display=swap" rel="stylesheet">


<meta charset="UTF-8">
<title>エラー画面</title>
<style>
h2{
	color: 	#ED1A3D;
}

<!-- 文字フォント -->
h1,h2,p{
	font-family: 'Kaisei Decol', serif;
	font-family: 'Monomaniac One', sans-serif;

}
<!-- 背景画像 -->
body{
	background-image:url(resources/image/pink_gold_buble.jpg);
}

</style>
</head>
<body>

	<header>
		<h1>ログインエラー</h1>
	</header>
	<main>
		<!--
		<p class="error"><c:out value="" /></p>
		<p><a href="<c:out value="top" />">戻る</a></p>
		-->
	</main>
		<hr>
</body>
<h2>入力されたユーザは存在しません</h2>
	<!--
	<form:input path="name" size="20" />
	<form:errors path="*" element="div" cssClass="errors" />
	-->
</html>