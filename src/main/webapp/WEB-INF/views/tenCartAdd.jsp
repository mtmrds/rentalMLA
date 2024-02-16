<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- カート選択 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>カートに入れるか選択</title>
	</head>
		<body style="background-color: gray;">
			<div class="cartadd">
				<jsp:include page="headeremp.jsp"/>
				<h1>発注する商品の数量を入力してください</h1>
				<form:form modelAttribute="itemModel">
  					<table border="1">
        			<!-- タイトルと商品画像 -->
        				<tr>
            				<th>ID</th>
            				<th>画像</th>
            				<th>タイトル</th>
            				<th>タイプ</th>
        				</tr>
        				<tr>
            				<td>${pickItem.itemNo }</td>
            				<td><img src="${pickItem.image }"width="100" height="150" /></td>
            				<td>${pickItem.title }</td>
            				<td>${pickItem.type }</td>
        				</tr>
    				</table>
    				商品ID：${pickItem.itemNo }
    				<input type="hidden" id="itemNo" name="itemNo" value="${pickItem.itemNo}">
    				<label for="additionalQuantity">数量:</label>
    				<input type="text" id="orderItem" name="orderItem"><br><br>
    				<input type="submit" value="発注確定">
				</form:form>
				<p><a href="<c:url value='master' />">トップに戻る</a></p>
			<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>