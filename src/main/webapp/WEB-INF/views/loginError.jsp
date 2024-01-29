<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<%-- ログインエラー画面 --%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>エラー画面</title>
<style>
h2{
	color: 	#ED1A3D;
}
</style>
</head>
<body>
	<header>
		<h1>ログインエラー</h1>
	</header>
	<main>
		<p class="error"><c:out value="" /></p>
		<p><a href="<c:out value="top" />">戻る</a></p>
	</main>
		<hr>
</body>
<h2>入力されたユーザは存在しません</h2>
<form:input path="name" size="20" />
<form:errors path="*" element="div" cssClass="errors" />
</body>
</html>