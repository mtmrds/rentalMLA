<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>発注商品一覧</title>
</head>
<body style="background-color: gray;">
    <jsp:include page="headeremp.jsp"/>

    <form:form modelAttribute="itemModel">
        <table border="1">
            <tr>
                <th>&nbsp;</th>
                <th>画像</th>
                <th>タイトル</th>
                <th>タイプ</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach var="listTenCart" items="${tenCartList}">
                <tr>
                    <td>${listTenCart.itemNo }</td>
                    <td>&nbsp;</td>
                    <td><c:out value="${listTenCart.title}"/></td>
                    <td><c:out value="${listTenCart.type}"/></td>
                    <td>
                        <form:hidden path="tNo" value="${listTenCart.tNo}" />
                        <input type="submit" name="delete" value="削除">
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form:form>

    <!-- プルダウンメニューを追加 -->
    <form:form modelAttribute="itemModel">
        <select name="quantity">
            <option value="1">1個</option>
            <option value="2">2個</option>
            <!-- 必要な個数の範囲を選択肢として追加してください -->
        </select>
        <input type="submit" name="end" value="発注確定">
    </form:form>

    <a href="master">従業員画面作業へ（仮）</a>
    <jsp:include page="footer.jsp"/>
</body>
</html>
