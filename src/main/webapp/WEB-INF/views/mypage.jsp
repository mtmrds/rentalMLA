<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<!-- 明日内部の記述とボタンの機能追加を行います。手島 -->
<html>
<head>
<meta charset="UTF-8">
<title>マイページ</title>
<style>
</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
		<div>
			<p>マイページ</p>
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
			<!-- 明日ここにボタン作ります -->
		</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>