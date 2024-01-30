<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+JP:wght@500&display=swap" rel="stylesheet">
</head>
<%-- header --%>
<header>
    <%-- ログイン済みの場合は名前を表示 --%>
<p>
<h1>Music Life Agency</h1>
       <c:out value="${memberModel.name}"/>さん

        <%-- Getのクエリで購入履歴かログアウトか判断させる --%>

       <a href="menue">メニュー</a>

        <!--<jsp:include page="footer.jsp" />　-->
</p>

 <style>

   h1{}
    font-family: 'Noto Serif JP', serif;


	}

 </style>
</header>