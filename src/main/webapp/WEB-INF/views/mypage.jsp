<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<!-- 昨日は第二工程で実施。他タスクを優先します。 手島 -->
<html>
<head>
<meta charset="UTF-8">
<title>マイページ</title>
<style>
body{
	background-image:url(resources/image/pink.jpg);
	font-family: 'Yomogi', cursive;
｝
	.button {
		height 20px;
		width 20px;
	}
	div {
	border: 1px solid #000;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
		<div>
			<p style="text-align: left"> 
			マイページ</p>
		</div>
		<div>
			<table>
				<tr>
					<td>会員No</td>
					<td> 会員No</td>
				</tr>
				<tr>
					<td>氏名</td>
					<td> <!-- 名前が入る --> </td>
				</tr>
				<tr>
					<td>郵便番号</td>
					<td><!-- 郵便番号 --></td>
				</tr>
				<tr>
					<td>住所</td>
					<td><!-- 住所 --></td>
				</tr>
				<tr>
					<td>電話番号（ハイフンなし・半角数字）</td>
					<td><!-- 電話番号（ハイフンなし・半角数字） -->
				</tr>
				<tr>
					<td>メールアドレス</td>
					<td><!-- メールアドレス --></td>
				</tr>
				<tr>
					<td>生年月日</td>
					<td><!-- 生年月日（YYYY/MM/DD）--></td>
				</tr>
				<tr>
					<td>クレジットカード</td>
					<td><!-- クレジットカード --></td>
				</tr>
				<tr>
					<td>パスワード</td>
					<td><!-- パスワード（英数字含む８文字以上） --></td>
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
</body>
</html>