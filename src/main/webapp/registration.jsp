<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>会員登録画面</title>
<link rel="stylesheet" href="/rentaIMLA/resources/styles.css">
</head>
<body>
	<div class="container">
	<jsp:include page="header.jsp"/>
		<header><h1>会員登録画面</h1></header>
		<main>
		<form:form modelAttribute="MemberModel">
			<table>
				<tr>
					<td>氏名</td>
					<td>
						<form:input path="name" size="25"/>
						<form:errors path="name" element="div" cssClass="errors"/>
					</td>
				</tr>
				<tr>
					<td>郵便番号</td>
					<td>
						<form:input path="zip" size="25" />
						<form:errors path="zip" element="div" cssClass="errors" />
					</td>
				</tr>
				<tr>
					<td>住所</td>
					<td>
						<form:input path="address" size="50"/>
						<form:errors path="address" element="div" cssClass="errors"/>
					</td>
				</tr>
				<tr>
					<td>電話番号</td>
					<td>
						<form:input path="phone" size="15"/>
						<form:errors path="phone" element="span" cssClass="errors"/>
					</td>
				</tr>

				<tr>
					<td>メールアドレス</td>
					<td>
						<form:input path="mail" size="25"/>
						<form:errors path="mail" element="div" cssClass="errors"/>
					</td>
				</tr>
				<tr>
					<td>生年月日</td>
					<td>
						<form:input path="birthday" />
						<form:errors path="bairthday" element="span" cssClass="errors" />
					</td>
				</tr>
				<tr>
					<td>クレジットカード</td>
					<td>
						<form:input path="card" size="15"/>
						<form:errors path="card" element="span" cssClass="errors"/>
					</td>
				</tr>
				<tr>
					<td>加入プラン選択</td>
					<td>
						<from:radiobutton path="plan"  label="お試しプラン" value="trial" checked="true" />
						<from:radiobutton path="plan"  label="Bronzeプラン" value="bronze" />
						<from:radiobutton path="plan"  label="Silverプラン" value="silver" />
						<from:radiobutton path="plan"  label="Goldプラン" value="gold"  />
						<form:errors path="plan" element="span" cssClass="errors"/>
					</td>
				</tr>
			</table>
		</form:form>
		</main>

		<footer>
			<div class="copyright">
				<jsp:include page="footer.jsp" />
			</div>
		</footer>
	</div>
</body>
</html>