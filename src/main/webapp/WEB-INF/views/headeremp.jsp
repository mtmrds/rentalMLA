<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- ヘッダー(従業員) -->
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
		<link href="https://fonts.googleapis.com/css2?family=Yomogi&display=swap" rel="stylesheet">

		<!-- CSSスタイルシート -->
		<link href="resources/css/shopping.css" rel="stylesheet">
	</head>
	<!-- ログイン済みの場合は名前を表示 -->
	<header>
    	<form:form modelAttribute="memberModel">
			<div class="logo">
				<a href="master"  alt="トップページに戻る">
					<img src="resources/image/logo.png">
					<h1>Music Life Agency</h1>
				</a>
			</div>
		 	<!-- 各種ページのリンク -->
		 	<div class="linkpage">
		 		<a href="orderHistory">発注履歴・発注取消</a>｜<a href="d">督促管理</a>｜<a href="nagabuchi">今月の長渕剛</a>　
			 </div>
			<!-- ログイン後だけ表示できる -->
			<!-- 上記より、ログイン前提のためログアウトのみ表示 -->
			<div class="loginname">
				<p>
					<c:if test="${not empty loginModel.name}">
						<p>お疲れ様です、㊓${loginModel.name}さん</p>
						<p><a href="logout">ログアウト</a></p>
					</c:if>
				</p>
			</div>
		 </form:form>
	</header>
</html>