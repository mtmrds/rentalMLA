<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- カート選択 -->
<!DOCTYPE html>
<html>
	<head>
	<meta charset=UTF-8>
		<title>TAMIBUCHITSUYOSI</title>

	</head>
<body>
	<div class="page">
		<jsp:include page="header.jsp"/>
			<div class="loading-area">
				<span>正</span>
				<span>解</span>
				<span>！</span>
				<span>！</span>
				<span>！</span>
				<span>！</span></div>
			<div class="loading-area">
				<span>お</span>
				<span>め</span>
				<span>で</span>
				<span>と</span>
				<span>う</span>
				<span>！</span>
			</div>


			<p><a href="<c:url value='top' />">トップに戻る</a></p>
			<jsp:include page="footer.jsp"/>

	</body>
</html>