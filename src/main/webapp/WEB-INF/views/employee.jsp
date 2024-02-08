<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 従業員用商品登録画面 -->
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>在庫管理画面</title>

<!-- 文字フォント -->
<style>
	sample1{
		font-family: 'Kaisei Decol', serif;
		font-family: 'Monomaniac One', sans-serif;

	}

<!-- 背景画像 -->
body{
	background-image:url(resources/image/pink.jpg);
}

</style>

</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class="sample1">
		<h1>商品管理画面</h1>
		<form:form modelAttribute="itemModel" >
			<div>
				<label>商品ID</label>
				<form:input path="itemNo" size="20"/>
			</div>
			<div>
				<label>タイトル</label>
				<form:input path="title" size="30"/>
			</div>
			<div>
				<p><input type="submit" value="登録する"></p>
			</div>
		</form:form>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>

