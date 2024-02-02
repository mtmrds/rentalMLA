<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- 会員登録画面 -->
<!DOCTYPE html>
<html>
					
					
	<head>
		<meta charset=UTF-8>
		<title> 会員登録画面 </title>
	</head>
	<body>
		<div class="registration">
			<jsp:include page="header.jsp"/>
			<div>
				<h1>☆会員登録画面☆</h1>
			</div>
			<main>
				<form:form modelAttribute="memberModel">
					<table border="1">
						<tr>
							<td class="regi1">氏名</td>
							<td colspan="4" class="regi2">

							<form:input path="name" size="50"/>
							例）山田 太郎
							<form:errors path="name" element="div" cssClass="errors"/>
							</td>
						</tr>
						<tr>
							<td class="regi1">郵便番号</td><!-- ハイフンありなしは検討します  元村 -->
							<td colspan="4" class="regi2">
							<form:input path="zip" size="50" />
							例）123-0000
							<form:errors path="zip" element="div" cssClass="errors" />
							</td>
						</tr>
						<tr>
							<td class="regi1">住所</td>
							<td colspan="4" class="regi2">
							<form:input path="address" size="50"/>
							例）東京都千代田区九段南1-1-1
							<form:errors path="address" element="div" cssClass="errors"/>
							</td>
						</tr>
						<tr>
							<td class="regi1">電話番号</td>
							<td colspan="4" class="regi2">
							<form:input path="phone" size="50"/>
							例）08012345678 (ハイフンなし・半角数字)
							<form:errors path="phone" element="span" cssClass="errors"/>
							</td>
						</tr>
						<tr>
							<td class="regi1">メールアドレス</td>
							<td colspan="4" class="regi2">
							<form:input path="mail" size="50"/>
							例）tarou@gamail.com
							<form:errors path="mail" element="div" cssClass="errors"/>
							</td>
						</tr>
						<tr>
							<td class="regi1">生年月日</td>
							<td colspan="4" class="regi2">
							<form:input path="birthday" size="50" />
							例）2024/02/01
							<form:errors path="birthday" element="span" cssClass="errors" />
							</td>
						</tr>
						<tr>
							<td class="regi1">クレジットカード</td>
							<td colspan="4" class="regi2">
							<form:input path="card" size="50"/>
							<form:errors path="card" element="span" cssClass="errors"/>
							</td>
						</tr>
						<tr>
							<td class="regi1">パスワード</td>
							<td colspan="4" class="regi2">
							<form:input path="password" size="50"/>
							※英数字含む８文字以上
							<form:errors path="password" element="div" cssClass="errors"/>
							</td>
						</tr>
						<tr>
							<td class="regi1">プラン</td>
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
							<td class="regi1" >
								<input type="submit"  value="登録する" class="btn" >
							</td>
						</tr>
					</table>
				</form:form>
			</main>
			<jsp:include page="footer.jsp" />
		</div>
	</body>
</html>