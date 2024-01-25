<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>レンタルサイト ログイン画面</title>
<!-- css入れないなら消してもいいかも     <link href="css/shopping.css" rel="stylesheet" type="text/css" />	 -->
</head>
<body>
	<main class="login_pane">
		<!-- login_paneは仮-->
		<h1>ようこそレンタルサイトへ！</h1>
		<p>ログインIDとパスワードを入力して下さい</p>

		<form action="./LoginServlet" method="post">
			<table class="table_form">
				<tbody>
					<tr>
						<%-- ログイン済みの場合はIDを表示 --%>
						<th>ログインID</th>
						<!-- bean(%=%の箇所)は仮-->
						<input type="text" name="id" value="<%=%>" />
						</td>
					</tr>
					<tr>
						<th>パスワード</th>
						<td><input type="password" name="pass" /></td>
					</tr>
				</tbody>
			</table>
			<div class="buttons">
				<input class="common_button" type="submit" name="submit"
					value="ログイン" />

				<%-- ログイン済みの場合はログアウトボタンを表示 --%>
				<!-- ()内のligin_stateの箇所は仮-->
				<%
				if ("login".equals(session.getAttribute("login_state"))) {
				%>
				<!-- class="common_button"の箇所は仮-->
				<input class="common_button" type="submit" name="submit"
					value="ログアウト" />
				<%
				}
				%>
			</div>
		</form>
	</main>
</body>
</html>