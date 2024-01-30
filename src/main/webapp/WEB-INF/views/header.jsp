<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<!-- 社名ロゴフォント -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Sacramento&display=swap" rel="stylesheet">

<!-- その他文字フォント -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Monomaniac+One&display=swap" rel="stylesheet">

</head>
<%-- header --%>
<style>

.logo{
	display: flex;
}
.logo h1{
    font-family: 'Sacramento', cursive;
    font-size: 30px;
    }
.logo img{
 	height: 50px;
	width: 50px;
 }

p{
	font-family: 'Kaisei Decol', serif;
	font-family: 'Monomaniac One', sans-serif;
	text-align: right;
	font-size: 25px;
}

</style>
<header>
    <%-- ログイン済みの場合は名前を表示 --%>


<div class="logo">
		<img src="resources/image/logo.png">
		<h1>Music Life Agency</h1>

</div>
  	<p>
       <c:out value="${memberModel.name}"/>さん
        <%-- Getのクエリで購入履歴かログアウトか判断させる --%>
	</p>

      <!-- メニューボタン削除 -->

        <!--<jsp:include page="footer.jsp" />　-->

</header>