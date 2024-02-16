<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- ヘッダー -->
<div>
		<link href="resources/css/naga.css" rel="stylesheet">
		<!--<audio src="resources/music/naga1.m4a" type="audio/m4a" autoplay loop></audio> -->
</div>
<!-- ログイン後は名前を表示 -->
<div>
	<form:form modelAttribute="memberModel">
		<div class="nagaheader">
			<a href="top"  alt="トップページに戻る">
				<img src="resources/Nclub/liveon.png">
			</a>
			<h1>Music Life </h1><h1>Nagabuchi</h1>
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
			<p>
				<c:if test="${not empty loginModel.name}">
					<p>ようこそ、${loginModel.name}さん</p>
					<p><a href="logout">ログアウト</a></p>
					<p><a href="nagabuchi">今月の長渕剛</a></p>
				</c:if>
			</p>
		</div>
	</form:form>
</div>