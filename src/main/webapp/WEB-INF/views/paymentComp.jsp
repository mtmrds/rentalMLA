<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- レンタル完了画面 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>レンタル完了画面</title>
	</head>
	<body>
		<div class="paymentcomp">
			<jsp:include page="header.jsp"/>
				<div class="paymentcomptitle">
					<h1>レンタル完了画面</h1>
				</div>
				<a>レンタルありがとうございました(^_-)-☆</a>
				<p><a href="<c:url value='top' />">トップに戻る</a></p>
			<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>