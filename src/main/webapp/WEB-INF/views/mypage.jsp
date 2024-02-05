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

table tr{
  background-image: linear-gradient(40deg, #e2c6ff 0%, #a3d1ff 74%);
  }
</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
		<div>
			<p style="text-align: left">
			☆マイページ☆</p>
		</div>
		<div>
			<table border="1">
				<tr>
					<td><strong>会員No</strong></td>
					<td width="500">&nbsp;</td>
				</tr>
				<tr>
					<td><strong>氏名</strong></td>
					<td> <!-- 名前が入る --> </td>
				</tr>
				<tr>
					<td><strong>郵便番号</strong></td>
					<td><!-- 郵便番号 --></td>
				</tr>
				<tr>
					<td><strong>住所</strong></td>
					<td><!-- 住所 --></td>
				</tr>
				<tr>
					<td><strong>電話番号（ハイフンなし・半角数字）</strong></td>
					<td><!-- 電話番号（ハイフンなし・半角数字） -->
				</tr>
				<tr>
					<td><strong>メールアドレス</strong></td>
					<td><!-- メールアドレス --></td>
				</tr>
				<tr>
					<td><strong>生年月日</strong></td>
					<td><!-- 生年月日（YYYY/MM/DD）--></td>
				</tr>
				<tr>
					<td><strong>クレジットカード</strong></td>
					<td><!-- クレジットカード --></td>
				</tr>
				<tr>
					<td><strong>パスワード</strong></td>
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