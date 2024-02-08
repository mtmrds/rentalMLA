<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- 会員登録画面 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<title> 会員登録画面 </title>

<style>
.errors{
		font-family: 'Yomogi',cursive;
		color: red;
		font-weight: bold;
}


</style>
	</head>
	<body>
		<div class="registration">
			<jsp:include page="header.jsp"/>
			<div class="registrationtitle">
				<h1>会員登録画面</h1>
			</div>
			<main>
				<form:form modelAttribute="memberModel">
					<table border="1">
						<tr>
							<td align="center"><strong>氏名</strong></td>
							<td colspan="4">
							<form:input path="name" size="50"/><br>
							例）山田 太郎
							<br>
							<form:errors path="name" element="div" cssClass="errors"/>
							</td>
						</tr>
						<tr>
							<td align="center"><strong>郵便番号</strong></td><!-- ハイフンありなしは検討します  元村 -->
							<td colspan="4">
							<form:input path="zip" size="50" /><br>
							例）1020074
							<br>
							<form:errors path="zip" element="div" cssClass="errors" />
							</td>
						</tr>
						<tr>
							<td align="center"><strong>住所</strong></td>
							<td colspan="4">
							<form:input path="address" size="50"/><br>
							例）東京都千代田区九段南1-1-1
							<br>
							<form:errors path="address" element="div" cssClass="errors"/>
							</td>
						</tr>
						<tr>
							<td align="center"><strong>電話番号</strong></td>
							<td colspan="4">
							<form:input path="phone" size="50"/><br>
							例）08012345678 (ハイフンなし・半角数字)
							<br>
							<form:errors path="phone" element="span" cssClass="errors"/>
							</td>
						</tr>
						<tr>
							<td align="center"><strong>メールアドレス</strong></td>
							<td colspan="4">
							<form:input path="mail" size="50"/><br>
							例）tarou@gamail.com
							<br>
							<form:errors path="mail" element="div" cssClass="errors"/>
							</td>
						</tr>
						<tr>
							<td align="center"><strong>生年月日</strong></td>
							<td colspan="4">
							<form:input path="birthday" size="50" /><br>
							例）2024/02/01
							<br>
							<form:errors path="birthday" element="span" cssClass="errors" />
							</td>
						</tr>
						<tr>
							<td align="center"><strong>クレジットカード</strong></td>
							<td colspan="4">
							<form:input path="card" size="50"/>
							<br>
							<form:errors path="card" element="span" cssClass="errors"/>
							</td>
						</tr>
						<tr>
							<td align="center"><strong>パスワード</strong></td>
							<td colspan="4">
							<form:input path="password" size="50"/><br>
							※英数字含む８文字以上
							<br>
							<form:errors path="password" element="div" cssClass="errors"/>
							</td>
						</tr>
						<tr>
							<td align="center"><strong>プラン</strong></td>
							<td class="plantable">
							<form:radiobutton path="plan" label="お試しプラン" value="お試しプラン" checked="checked" />
							<br><br>
							初月限定！<br>
							月額324円<br>
							2枚/月
							</td>
							<td>
							<form:radiobutton path="plan" label="Bronzeプラン" value="Bronzeプラン" />
							<br><br>
							月額1080円<br>
							6枚/月
							</td>
							<td>
							<form:radiobutton path="plan" label="Silverプラン" value="Silverプラン" />
							<br><br>
							月額2160円<br>
							6枚/月
							</td>
							<td>
							<form:radiobutton path="plan" label="Goldプラン" value="Goldプラン" />
							<br><br>
							月額5400円<br>
							無制限<br>
							</td>
						</tr>
					</table>
							<td class="btn-1">
								<input type="submit"  value="登録する" class="btn">
							</td>

				</form:form>
			</main>
				<jsp:include page="footer.jsp" />
		</div>
	</body>
</html>