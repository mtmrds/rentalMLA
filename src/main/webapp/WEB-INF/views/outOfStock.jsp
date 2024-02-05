<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>在庫が不足しています</title>
</head>
<body>
	<p>商品の在庫が不足しているため、カートに商品を追加できませんでした。</p>
	<p><a href="<c:url value='search' />">検索画面に戻る</a></p>
	<p><a href="<c:url value='top' />">トップに戻る</a></p>
</body>
</html>