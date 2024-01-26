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
					<td>郵便番号（ハイフンあり）</td>
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
					<td>電話番号（ハイフンなし・半角数字）</td>
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
					<td>生年月日（YYYY/MM/DD）</td>
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
					<td>加入プラン選択 </td>
					<td>
						<from:radiobutton path="plan"  label="お試しプラン" value="trial" checked="true" />
						<small>
								※新規登録月限定<br>
								月額：324円		上限レンタル枚数：2枚/月
						</small>
						<from:radiobutton path="plan"  label="Bronzeプラン" value="bronze" />
						<small>
								月額：1080円		上限レンタル枚数：6枚/月
						</small>
						<from:radiobutton path="plan"  label="Silverプラン" value="silver" />
						<small>
								月額：2160円		上限レンタル枚数：12枚/月
						</small>
						<from:radiobutton path="plan"  label="Goldプラン" value="gold"  />
						<small>
								月額：5400円		上限レンタル枚数：無制限/月
						</small>
						<form:errors path="plan" element="span" cssClass="errors"/>
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="登録する"></td>
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