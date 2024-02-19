<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- ヘッダー(従業員) -->
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="linkpage.jsp" />
	</head>
	<div>
		<form:form modelAttribute="memberModel">
			<jsp:include page ="logotitle.jsp" />
			</div>
		 	<!-- 各種ページのリンク -->
		 	<div class="linkpage">
		 		<a href="orderHistory">発注履歴・発注取消</a>｜<a href="nagabuchi">今月の長渕剛</a>　
			 </div>
			<div class="loginname">
				<p>
					<c:if test="${not empty loginModel.name}">
						<p>お疲れ様です、㊓${loginModel.name}さん</p>
						<p><a href="logout">ログアウト</a></p>
					</c:if>
				</p>
			</div>
		 </form:form>
</html>