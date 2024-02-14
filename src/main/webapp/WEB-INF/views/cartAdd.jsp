<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- カート選択 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>カートに入れるか選択</title>
<style>
div.center {
    width:700px;
margin-right: auto;
margin-left : auto;
text-align: center;
}
</style>
	</head>
	<body>
		<div class="cartadd">
			<jsp:include page="header.jsp"/>
			<div class="center">
			<h1>カートに商品を入れますか？</h1>
			<form:form modelAttribute="itemModel">
    			<table cellpadding="15" algin="center">
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
        		</table></div>
        	<div class="center">
        	<p><input type="submit" value="カートIN"  class="btn btn-tag" ></p>
        	</div>
        	</form:form>




			<!-- 下記は直飛びなので、商品情報が入らない -->
			<p><a href="<c:url value='search' />">検索画面に戻る</a></p>
			<p><a href="<c:url value='top' />">トップに戻る</a></p>
			<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>