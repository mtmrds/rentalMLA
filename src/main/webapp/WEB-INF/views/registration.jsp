<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+JP:wght@500&display=swap" rel="stylesheet">
<link rel="icon" href="resources/image/favicon.png" sizes="any">
<meta charset=UTF-8>

<title> 会員登録画面 </title>
<style>
body{
   background-image:url(resources/image/pink_gold_buble.jpg);
   background-size: cover;
}
 h1{
 color: grey;
   background: #f6bfbc; /*背景色*/
  padding: 0.5em;/*文字周りの余白*/
  border-radius: 0.5em;/*角の丸み*/

  font-family: 'Monomaniac One', sans-serif;
}d
table {
	border-collapse;
  width: 100%;
}

  td, th {
	padding: 8px;
    text-align: left;
    font-weight: bold;

  }

  tr{
    line-height: 1;
  }

</style>
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