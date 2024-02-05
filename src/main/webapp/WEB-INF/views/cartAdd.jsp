<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- カート -->
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>カートに入れるか選択</title>
<style>
body{
	background-image:url(resources/image/pink.jpg);
	font-family: 'Yomogi', cursive;
}
table {
	font-size: 20px;
	text-align:center;
}

</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<h1>カートに商品を入れますか？</h1>
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
        				<td><!-- 画像を表示させる --></td>
         				<td>${pickItem.title }</td>
         				<td>${pickItem.type }</td>
        			</tr>
        		</table>
        		<p><input type="submit" value="カートIN" ></p>
    </form:form>
	<!-- 下記は直飛びなので、商品情報が入らない -->

	<p><a href="<c:url value='search' />">検索画面に戻る</a></p>
	<p><a href="<c:url value='top' />">トップに戻る</a></p>
	<jsp:include page="footer.jsp"/>
</body>
</html>