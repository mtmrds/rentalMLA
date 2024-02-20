<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>決済確認画面</title>
</head>
<body>
<div class="page">
    <jsp:include page="header.jsp"/>
    <div class="center">

            <h1>レンタルを確定しますか？</h1>

        <form:form modelAttribute="memberModel" method="post">
            <table border="1">
                <!-- タイトルと商品画像 -->
                <tr>
                    <th>画像</th>
                    <th>タイトル</th>
                    <th>タイプ</th>
                </tr>
                <c:forEach var="listCart" items="${cartList}">
                    <tr>
                        <!-- <td>${listCart.itemNo }</td> -->
                        <td><img src="${listCart.image }" width="100" height="150" /></td>
                        <td><c:out value="${listCart.title}"/></td>
                        <td><c:out value="${listCart.type}"/></td>
                    </tr>
                </c:forEach>
            </table>
            <br>
            <input type="submit" name="end" value="レンタル確定" class="btn-b"/>
        </form:form>
	<br>
    <a href="<c:url value='cart' />">カート確認</a>
    |<a href="<c:url value='search' />">検索画面に戻る</a>
    |<a href="<c:url value='top' />">トップに戻る</a>
	</div>
    <jsp:include page="footer.jsp"/>
</div>
</body>
</html>