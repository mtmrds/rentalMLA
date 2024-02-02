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

<!-- 文字フォント -->
h1,h2,p{
	font-family: 'Yomogi', cursive;

}
<!-- 背景画像 -->
body{
	background-image:url(resources/image/pink.jpg);
}

</style>
</head>
<body>
	<jsp:include page="header.jsp"/>

		<h1>ログインエラー</h1>

	<main>
		<!--
		<p class="error"><c:out value="" /></p>
		<p><a href="<c:out value="top" />">戻る</a></p>
		-->
	</main>
		<h2>入力されたユーザは存在しません</h2>
	<!--
	<form:input path="name" size="20" />
	<form:errors path="*" element="div" cssClass="errors" />

</body>
<h2>入力されたユーザは存在しません</h2>
	<!--
	<form:input path="name" size="20" />
	<form:errors path="*" element="div" cssClass="errors" />
	-->
	<jsp:include page="footer.jsp" />
</html>