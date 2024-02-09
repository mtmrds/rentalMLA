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
	<body style="background-color: gray;">
		<div class="paymentcomp">
			<jsp:include page="headeremp.jsp"/>
				<div class="paymentcomptitle">
					<h1>発注完了画面</h1>
				</div>
				<div class="fade-in-text">
					<p>店長ありがとうございました(^_-)-☆</p>
					<img src="resources/image/お辞儀.png"/>
				</div>
				<p><a href="<c:url value='master' />">戻る(仮)</a></p>
			<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>