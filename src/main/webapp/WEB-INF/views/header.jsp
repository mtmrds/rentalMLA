<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- ヘッダー -->
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="linkpage.jsp" />
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

			 	<!-- ログインしていない場合はログインページへのリンクを表示 -->
				<c:if test="${empty loginModel.name}">
    				<a href="login" alt="ログイン" class="btn-img">
        			<img src="resources/image/人間アイコン3.png" width="40" height="auto">ログイン
    				</a>
				</c:if>

				<!-- ログインしている場合はマイページへのリンクを表示 -->
				<c:if test="${!empty loginModel.name}">
    				<a href="mypage" alt="マイページ" class="btn-img">
        			<img src="resources/image/人間アイコン3.png" width="40" height="auto">マイページ
    				</a>
				</c:if>

 				<a href="cart" class="btn-img">
  				<img src="resources/image/カート.png" width= "60"height= "auto">カート</a>

  				<a href="b"class="btn-img">
  				<img src="resources/image/メモのアイコン3.png" width="50"height="auto">履歴管理</a>　
	 		</div>
			 <!--ログイン後だけ表示できる-->
			<div class="loginname">
				<p>

					<c:if test="${not empty loginModel.name}">
						<p>ようこそ、${loginModel.name}さん</p>
						<p><a href="logout">ログアウト</a></p>
						<p><a href="nagabuchi">今月の長渕剛</a></p>
					</c:if>
				</p>
			</div>
		</form:form>
	</header>