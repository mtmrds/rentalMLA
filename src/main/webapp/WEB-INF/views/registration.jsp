<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Yomogi&display=swap" rel="stylesheet">

<meta charset=UTF-8>

<title> 会員登録画面 </title>

</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class="container">

		<header><h1>☆会員登録画面☆</h1></header>
		<main>
		<form:form modelAttribute="memberModel">
			<table>
				<tr>
					<td>氏名</td>
					<td>
						<form:input path="name" size="50"/>
						<form:errors path="name" element="div" cssClass="errors"/>
					</td>
				</tr>
				<tr>
					<td>郵便番号</td><!-- ハイフンありなしは検討します  元村 -->
					<td>
						<form:input path="zip" size="50" />
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
						<form:input path="phone" size="50"/>
						<form:errors path="phone" element="span" cssClass="errors"/>
					</td>
				</tr>
				<tr>
					<td>メールアドレス</td>
					<td>
						<form:input path="mail" size="50"/>
						<form:errors path="mail" element="div" cssClass="errors"/>
					</td>
				</tr>
				<tr>
					<td>生年月日（YYYY/MM/DD）</td>
					<td>
						<form:input path="birthday" size="50" />
						<form:errors path="birthday" element="span" cssClass="errors" />
					</td>
				</tr>
				<tr>
					<td>クレジットカード</td>
					<td>
						<form:input path="card" size="50"/>
						<form:errors path="card" element="span" cssClass="errors"/>
					</td>
				</tr>
				<tr>
					<td>パスワード（英数字含む８文字以上）</td>
					<td>
						<form:input path="password" size="50"/>
						<form:errors path="password" element="div" cssClass="errors"/>
					</td>
				</tr>

				<!-- プラン追加しました　元村 -->
				<tr>
					<td>プラン</td>
					<td>
						<form:radiobutton path="plan" label="お試しプラン" value="お試しプラン" checked="checked" />
						<br>
						初月限定！<br>
						月額324円<br>
						2枚/月
					</td>
					<td>
						<form:radiobutton path="plan" label="Bronzeプラン" value="Bronzeプラン" />
						<br>
						月額1080円<br>
						6枚/月
					</td>
					<td>
						<form:radiobutton path="plan" label="Silverプラン" value="Silverプラン" />
						<br>
						月額2160円<br>
						6枚/月
					</td>
					<td>
						<form:radiobutton path="plan" label="Goldプラン" value="Goldプラン" />
						<br>
						月額5400円<br>
						無制限<br>
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="登録する" class="btn" ></td>
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