<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap" rel="stylesheet">
<!-- ヘッダー -->
<link href="resources/css/naga.css" rel="stylesheet">

<audio src="resources/music/naga1.m4a" type="audio/m4a" autoplay loop></audio>
<!-- ログイン後は名前を表示 -->
<div>
	<form:form modelAttribute="memberModel">
		<div class="nagaheader">
			<a href="top"  alt="トップページに戻る">
				<img src="resources/Nclub/liveon.png">
			</a>
			<h1>Music Life Nagabuchi</h1>
		</div>
		<!-- 各種ページへのリンク -->
		<div class="nagalogin">
			<!-- ログインしていない場合はログインページへのリンクを表示 -->
			<c:if test="${empty loginModel.name}">
    			<a href="login" alt="ログイン" class="btn-img">
        		<img src="resources/image/人間アイコン3.png" width="40" height="auto">ログイン
    			</a>
			</c:if>
		</div>
		<!--ログイン後だけ表示できる-->
		<div class="nagalogout">

				<c:if test="${not empty loginModel.name}">
					ようこそ、${loginModel.name}さん
				<br>
					<a href="logout">ログアウト</a>
					<a href="nagabuchi">今月の長渕剛</a>
				</c:if>

		</div>
	</form:form>
</div>