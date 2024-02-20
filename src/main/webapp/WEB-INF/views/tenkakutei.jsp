<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- レンタル完了画面 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>発注完了画面</title>
	</head>
	<body>
		<div class="emp">
			<jsp:include page="headeremp.jsp"/>
				<div class="center2">
					<h1>発注完了</h1>

				<div class="fade-in-text">
					発注完了しました
					<img src="resources/image/お辞儀.png"/>
				</div>
				<a href="<c:url value='master' />">従業員用ページトップ</a>
				</div>
			<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>