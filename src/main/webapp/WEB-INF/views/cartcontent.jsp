<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
	<main>
		<h1>カート内一覧</h1>

		<hr size="1">
			<%
			@SupperssWarnings("unchecked")	
			ArrayList<String> cart = (ArrayList<String>)
				session.getAttribute("cart"); if(cart != null && !cart.isEmpty()) {
			%>
				<table border="1">
				<%
				for(int index = 0; index < cart.size(); index ++){
					int itemNo = Integer.ParseInt(cart.get(index));
				%>
					<thead>
					<tr>
						<th>画像</th>
						<th>商品名</th>
					</tr >
				</thead>

				<body>
				<tr>
					<td><img src="resources/image/<%= Item.item[itemNo] %> alt="  Item.item[itemNo] "></td>
					<td><%=Item.item[itemNo] %></td>
						<form action="cart" method="post">
							<input type="hidden" name="index" value="<%=index%> ">
							 <input type="submit" value="削除する">
						</form>
				</tr>
				<%
					}
				%>
				</table>
				<%
				}
				%>
				<p>カートに商品がありません。</p>
				<p>
					<a href="form">トップに戻る</a>
	</div>

	</main>
	<div id ="wapper">
	<jsp:include page="footer.jsp"></jsp:include>
	</div>

    <jsp:include page="header.jsp"/>
            <main>

            	<form method="POST" action="payment">
            		<input type="submit" value="確認する">
				</form>
            </div>
        </main>
    <jsp:include page="footer.jsp"/>

</body>
</html>
