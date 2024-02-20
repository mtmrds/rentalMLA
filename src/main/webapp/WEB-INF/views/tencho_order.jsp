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
	<body>
		<div class="emp">
    	<jsp:include page="headeremp.jsp"/>
    	<div class="center2">
	    <form:form modelAttribute="itemModel">
    	   	<table>
            	<tr>
           			<th>ID</th>
               		<th>画像</th>
               		<th>タイトル</th>
               		<th>タイプ</th>
               		<th>発注数</th>
               		<th>発注日時</th>
               		<th>取消処理</th>
           		</tr>
           		<c:forEach var="listTenCart" items="${tenCartList}">
               		<tr>
                   		<td>${listTenCart.itemNo }</td>
                   		<td><img src="${listTenCart.image }"width="100" height="150" /></td>
                   		<td><c:out value="${listTenCart.title}"/></td>
                   		<td><c:out value="${listTenCart.type}"/></td>
                		<td><c:out value="${listTenCart.orderItem}"/></td>
                		<td><c:out value="${listTenCart.orderDate}"/></td>
                   		<td>
                       		<form:hidden path="orderNo" value="${listTenCart.orderNo}" />
                       		<input type="submit" name="delete" value="発注を取り消す">
                   		</td>
               		</tr>
           		</c:forEach>
       		</table>
    	</form:form>
    	<a href="master">従業員画面作業へ</a>
    	</div>
    	<jsp:include page="footer.jsp"/>
    	</div>
	</body>
</html>