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
								<c:if test="${!empty memberModel.id }">
									<p>${memberModel.id}</p>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><strong>氏名</strong></td>
							<td>
								<c:if test="${!empty memberModel.name }">
									<p>${memberModel.name}</p>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><strong>郵便番号</strong></td>
							<td>
								<c:if test="${!empty memberModel.zip }">
									<p>${memberModel.zip}</p>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><strong>住所</strong></td>
							<td>
								<c:if test="${!empty memberModel.address }">
									<p>${memberModel.address}</p>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><strong>電話番号</strong></td>
							<td>
								<c:if test="${!empty memberModel.phone }">
									<p>${memberModel.phone}</p>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><strong>メールアドレス</strong></td>
							<td>
								<c:if test="${!empty memberModel.mail }">
									<p>${memberModel.mail}</p>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><strong>生年月日</strong></td>
							<td>
								<c:if test="${!empty memberModel.birthday }">
									<p>${memberModel.birthday}</p>								</c:if>
							</td>
						</tr>
						<tr>
							<td><strong>クレジットカード</strong></td>
							<td>
								<c:if test="${!empty memberModel.card }">
									<p>${memberModel.card}</p>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><strong>パスワード</strong></td>
							<td>
								<c:if test="${!empty memberModel.password }">
									<p>${memberModel.password}</p>
								</c:if>
							</td>
						</tr>
					</table>
				</div>
						<input type="submit"  value="編集" class="btn">
						<input type="submit"  value="退会" class="btn">

				<jsp:include page="footer.jsp"/>
			</div>
		</form:form>
	</body>
</html>