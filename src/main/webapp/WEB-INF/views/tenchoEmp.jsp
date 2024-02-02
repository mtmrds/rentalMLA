<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="itemSearch.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>テストです</title>
</head>
<body>
	<div class="toppage">
			<jsp:include page="headeremp.jsp"/>
			<form:form modelAttribute="loginModel">
				<div class="title">
					<h1>レンタルサイト</h1>
				</div>
					<div class="topselect">
						<form:form modelAttribute="itemModel">
							<input type="submit" value="商品一覧検索" class="btn">
						</form:form>
						<br>
						<a href="setRegist">会員登録</a>
						<a href="login">ログイン</a>
					</div>
			</form:form>
			<jsp:include page="footer.jsp" />
		</div>
			<!-- 検証用　いずれ消します　元村 -->

				<p><a href="<c:url value='top' />">トップに戻る</a></p>
				
				
</body>
</html>