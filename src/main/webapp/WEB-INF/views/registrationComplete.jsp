<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 登録完了しました -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>登録完了画面</title>
	</head>
	<body>
		<div class="page">
			<jsp:include page="header.jsp"/>
				<div class="center">
					<h1>登録完了画面</h1>
						<div class="fade-in-text">
							ご登録ありがとうございました(^_-)-☆
							<img src="resources/image/お辞儀（男）.png"/>
						</div>
					<a href="<c:url value='top' />">トップに戻る</a>
				</div>
			<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>

