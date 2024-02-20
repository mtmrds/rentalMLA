<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- ヘッダー(従業員) -->

	<head>
		<jsp:include page="linkpage.jsp" />
	</head>
	<div>
		<form:form modelAttribute="memberModel">
			<jsp:include page ="logotitle.jsp" />

		 	<!-- 各種ページのリンク -->
		 	<div class="linkpage">
		 		<a href="orderHistory">発注履歴・発注取消</a>｜<a href="search">一般レンタル</a>
			 </div>
			<div class="loginname">
				<p>
					<c:if test="${not empty loginModel.name}">
						お疲れ様です、㊓${loginModel.name}さん
						<br>
						<a href="logout">ログアウト</a>
					</c:if>
				</p>
			</div>
		 </form:form>
	</div>
