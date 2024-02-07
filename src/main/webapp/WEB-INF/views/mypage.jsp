<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- マイページ -->
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>マイページ</title>
	</head>
	<body>
		<form:form modelAttribute="memberModel">
		<form:form modelAttribute="loginModel">
			<div class="mypage">
				<jsp:include page="header.jsp"/>
				<div>
					<p class="mypagetitle">☆マイページ☆</p>
				</div>
				<div>
					<table border="1">
						<tr>
							<td><strong>会員No</strong></td>
							<td>
								<c:if test="${not empty memberModel.id }">
									<p>${memberModel.id}</p>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><strong>氏名</strong></td>
							<td>
								<c:if test="${not empty loginModel.name }">
									<p>${loginModel.name}</p>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><strong>郵便番号</strong></td>
							<td>
								<c:if test="${not empty memberModel.zip }">
									<p>${memberModel.zip}</p>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><strong>住所</strong></td>
							<td>
								<c:if test="${not empty memberModel.address }">
									<p>${memberModel.address}</p>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><strong>電話番号</strong></td>
							<td>
								<c:if test="${not empty memberModel.phone }">
									<p>${memberModel.phone}</p>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><strong>メールアドレス</strong></td>
							<td>
								<c:if test="${not empty memberModel.mail }">
									<p>${memberModel.mail}</p>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><strong>生年月日</strong></td>
							<td>
								<c:if test="${not empty memberModel.birthday }">
									<p>${memberModel.birthday}</p>								</c:if>
							</td>
						</tr>
						<tr>
							<td><strong>クレジットカード</strong></td>
							<td>
								<c:if test="${not empty memberModel.card }">
									<p>${memberModel.card}</p>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><strong>パスワード</strong></td>
							<td>
								<c:if test="${not empty memberModel.password }">
									<p>${memberModel.password}</p>
								</c:if>
							</td>
						</tr>
					</table>
				</div>
				<div>
					<button type="button">編集</button>
				</div>
				<div>
					<button type="button">退会</button>
				</div>
			<jsp:include page="footer.jsp"/>
		</form:form>
		</form:form>
	</body>

</html>