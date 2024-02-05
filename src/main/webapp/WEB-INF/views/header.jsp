<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- ヘッダー -->
<!DOCTYPE html>
<html>
	<head>
		<!--  ファビコン -->

		<!-- 出なくなったから再設定 -->

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

	<!-- ログイン後は名前を表示 -->
	<header>
		<form:form modelAttribute="memberModel">
			<div class="logo">
				<a href="top"  alt="トップページに戻る">
					<img src="resources/image/logo.png">
					<h1>Music Life Agency</h1>
				</a>
			</div>

			 <!-- 各種ページへのリンク -->
			 <div class="linkpage">
				<a href="mypage" alt="マイページ">マイページ</a>｜<a href="cart">カート</a>｜<a href="b">履歴管理</a>　
	 		</div>

			 <!--ログイン後だけ表示できる-->
			<div class="loginname">
				<p>
					<c:if test="${not empty loginModel.name}">
						<p>ようこそ、${loginModel.name}さん</p>
					</c:if>
				</p>
			</div>
		</form:form>
	</header>
</html>