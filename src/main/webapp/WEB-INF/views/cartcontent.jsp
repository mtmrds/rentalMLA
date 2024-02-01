<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カート内</title>
<style>
td{
text-align:center:
}
</style>
</head>
<body>

	<div id ="wapper">
	<jsp:include page="header.jsp"></jsp:include>

		<h1>カート内一覧</h1>


<%-- わかんないんでとりあえずコメントアウト
	<hr size="1">
			<% List<String> cart =(List<String>) session.getAttribute("cartList"); %>

			 <% if(cart != null && !cart.isEmpty()) { %>


				<table border="1">
				<%
				for(int index = 0; index < cart.size(); index ++){
					int itemNo = Integer.ParseInt(cart.get(index));
				%>
--%>			<table>
					<tr>
						<th>画像</th>
						<th>商品名</th>
					</tr >

				</table>
				<%--
				}
				--%>
				<p>カートに商品がありません。</p>


			<form:form modelAttribute="loginModel">
            <input type="submit"  name = "index" value="確認する">
				</form:form>


    <jsp:include page="footer.jsp"/>


</body>
</html>
