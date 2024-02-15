<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- ヘッダー(従業員) -->

	<head>
		<jsp:include page="linkpage.jsp" />
	</head>

	<!-- ログイン済みの場合は名前を表示 -->
	<header>
    	<form:form modelAttribute="memberModel">
			<jsp:include page ="logotitle.jsp" />

		 <!-- 各種ページのリンク -->
		 <div class="linkpage">

		 	<!-- <a href="mypage">マイページ</a>｜<a href="cart">カート</a>｜<a href="b">履歴管理</a>|<a href="c">在庫管理</a>｜<a href="d">督促管理</a>｜<a href="e">情報管理</a>　 -->

		 	<a href="tenzai">在庫管理</a>｜<a href="d">督促管理</a>｜<a href="nagabuchi">今月の長渕剛</a>

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
