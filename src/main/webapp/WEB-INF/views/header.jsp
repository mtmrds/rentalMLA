<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- ヘッダー -->
	<head>
		<jsp:include page="linkpage.jsp" />
	</head>
	<!-- ログイン後は名前を表示 -->
	<div>
		<form:form modelAttribute="memberModel">
			<jsp:include page ="logotitle.jsp" />

			<!-- 各種ページへのリンク -->
			<jsp:include page ="linkmemu.jsp" />

			 <!--ログイン後だけ表示できる-->
			<div class="loginname">
				<br>
				<c:if test="${!empty loginModel.name}">
					ようこそ、${loginModel.name}さん<br>
						<a href="logout">ログアウト</a><br>
						<a href="nagabuchi">今月の長渕剛</a>
						<a href="Nnaga">おすすめ</a>
					</c:if>
			</div>
		</form:form>
	</div>