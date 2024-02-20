<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品履歴一覧</title>
</head>
<body>
<jsp:include page="header.jsp"/>
    <h1>商品履歴一覧</h1>
    <form:form modelAttribute="itemModel">
        <table border="1">
            <tr>
                <th>レンタル番号</th>
                <th>画像</th>
                <th>タイトル</th>
                <th>タイプ</th>
                <th>レンタル数</th>
                <th>レンタル手続き完了日時</th>
                <th>履歴削除</th>
            </tr>
            <c:forEach var="listCart" items="${ordersList}">
                <tr>
                    <td>${listCart.ordersNo }</td>
                    <td><img src="${listCart.image }" width="100" height="150" /></td>
                    <td><c:out value="${listCart.title}"/></td>
                    <td><c:out value="${listCart.type}"/></td>
                    <td><c:out value="${listCart.ordersItem}"/></td>
                    <td><c:out value="${listCart.ordersDate}"/></td>
                    <td>
                        <form action="showOrders" method="post">
                            <input type="hidden" name="ordersNo" value="${listCart.ordersNo}" />
                            <input type="submit" name="dl" value="削除">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <h2>レンタル中の商品</h2>
        <c:if test="${not empty rentalList}">
            <table border="1">
                <tr>
                    <th>レンタル番号</th>
                    <th>画像</th>
                    <th>タイトル</th>
                    <th>タイプ</th>
                    <th>レンタル数</th>
                    <th>レンタル手続き完了日時</th>
                    <th>返却処理</th>
                </tr>
                <c:forEach var="listRental" items="${rentalList}">
                    <tr>
                        <td>${listRental.rentalNo }</td>
                        <td><img src="${listRental.image }" width="100" height="150" /></td>
                        <td><c:out value="${listRental.title}"/></td>
                        <td><c:out value="${listRental.type}"/></td>
                        <td><c:out value="${listRental.ordersItem}"/></td>
                        <td><c:out value="${listRental.ordersDate}"/></td>
                        <td>
                            <form action="showOrders" method="post">
                                <input type="hidden" name="rentalNo" value="${listRental.rentalNo}" />
                                <input type="submit" name="back" value="返却">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <c:if test="${empty rentalList}">
            <p>現在レンタルしている商品はありません。</p>
        </c:if>
    </form:form>
    <p><a href="<c:url value='top' />">トップに戻る</a></p>
    <jsp:include page="footer.jsp"/>
</body>
</html>