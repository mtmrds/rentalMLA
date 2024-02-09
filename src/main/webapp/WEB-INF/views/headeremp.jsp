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
			<a href="top"  alt="トップページに戻る">
				<img src="resources/image/logo.png">
				<h1>Music Life Agency</h1>
			</a>
			<a href="master">従業員画面作業へ（仮）</a>
		</div>

		 <!-- 各種ページのリンク -->
		 <div class="linkpage">

		 	<!-- <a href="mypage">マイページ</a>｜<a href="cart">カート</a>｜<a href="b">履歴管理</a>|<a href="c">在庫管理</a>｜<a href="d">督促管理</a>｜<a href="e">情報管理</a>　 -->

		 	<a href="tenzai">在庫管理</a>｜<a href="d">督促管理</a>｜<a href="e">情報管理</a>　

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