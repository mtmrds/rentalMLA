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
					<p><a href="logout">ログアウト</a></p>
				</div>
				<div>
					<table border="1">
						<tr>
							<td><strong>会員No</strong></td>
							<td>

									<p>${memberId}</p>
							</td>
						</tr>
						<tr>
							<td><strong>氏名</strong></td>
							<td>
									<p>${memberName}</p>
							</td>
						</tr>
						<tr>
							<td><strong>郵便番号</strong></td>
							<td>
									<p>${memberZip}</p>
							</td>
						</tr>
						<tr>
							<td><strong>住所</strong></td>
							<td>
									<p>${memberAddress}</p>
							</td>
						</tr>
						<tr>
							<td><strong>電話番号</strong></td>
							<td>
									<p>${memberPhone}</p>
							</td>
						</tr>
						<tr>
							<td><strong>メールアドレス</strong></td>
							<td>
									<p>${memberMail}</p>
							</td>
						</tr>
						<tr>
							<td><strong>生年月日</strong></td>
							<td>
									<p>${memberBirthday}</p>
							</td>
						</tr>
						<tr>
							<td><strong>クレジットカード</strong></td>
							<td>
									<p>${memberCard}</p>
							</td>
						</tr>
						<tr>
							<td><strong>パスワード</strong></td>
							<td>
									<p>${memberPassword}</p>
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
			</div>
		</form:form>
	</body>
</html>