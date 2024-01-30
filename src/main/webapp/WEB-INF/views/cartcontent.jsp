<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カート内</title>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
            <main>
            <!--
            <h1>カート内一覧</h1>
            <hr size="1">
            <div>
                <% ArrayList<String> cart = (ArrayList<String>) session.getAttribute("cart"); %>
                <% if(cart != null && !cart.isEmpty()) { %>
                    <table border="1">
                        <thead>
                            <tr>
                                <th>画像</th>
                                <th>商品名</th>
                                <th>アクション</th>
                            </tr>
                        </thead>
                        <body>
                            <% for(String item : cart) { %>
                                <tr>
                                    <td><img src="resources/image/<%= //画像ソース %>" alt="<%= //画像名 %>"></td>
                                    <td><%= // %></td>
                                    <td>
                                        <form action="" method="post">
                                            <input type="hidden" name="test" value="<%= //名 %>">
                                            <input type="submit" value="削除する">
                                        </form>
                                    </td>
                                </tr>
                            <% } %>
                        </body>
                    </table>
                <% } else { %>
                    <p>カートに商品がありません。</p>
                <% } %>
            </div>
            -->
            <div>
            	<form method="POST" action="payment">
            		<input type="submit" value="確定する">
				</form>
            </div>
        </main>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
