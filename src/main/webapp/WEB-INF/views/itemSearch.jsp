<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- 商品一覧画面 --%>
<!DOCTYPE html>
<html>
<head>

<!-- 文字フォント -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Yomogi&display=swap" rel="stylesheet">


<meta charset="UTF-8">
<title>レンタルサイト 商品一覧画面</title>
<!-- link href="css/shopping.css" rel="stylesheet" type="text/css" />-->
</head>

<!-- 文字フォント -->
<style>
body{
	background-image:url(resources/image/pink.jpg);

	font-family: 'Yomogi', cursive;
}
.form-row{
	font-family: 'Yomogi', cursive;

}
.for-errors{
	font-family: 'Yomogi', cursive;
}


</style>

<body>
	<jsp:include page="header.jsp"/>
	<div class="container">
	<%-- TODO:2-1 jsp:includeでヘッダー画面を読み込む --%>
	<main>
			<form:form modelAttribute="itemModel">
				<div class="form-row">
					検索条件を指定する場合は「ID」または「タイトル名」のいずれかを入力してください
				</div>
				<div class="form-row">
					<label for="id">ID</label>
					<form:input path="itemNo"/>
					<label for="name">タイトル</label>
					<form:input path="title"/>
					<input type="submit" name="SearchItem" value="検索する" class="btn">
				</div>
				<div class="form-row errors">
					<c:out value="${message}"/>
				</div>
			</form:form>
			<c:if test="${!empty itemList}">
				<table>
					<tr>
						<th>ID</th>
						<th>タイトル</th>
						<th>タイプ</th>
						<th>カテゴリー</th>
						<th>在庫</th>
						<th>カート</th>
					</tr>
					<c:forEach var="items" items="${itemList}">
						<tr>
							<td><c:out value="${items.itemNo}"/></td>
							<td><c:out value="${items.title}"/></td>
							<td><c:out value="${items.type}"/></td>
							<td><c:out value="${items.category}"/></td>
							<td><c:out value="${items.quantity}"/></td>
							<td>
								<!-- いったん下記でcartcontent.jsoに飛ばすようにしてます -->
							<form:form modelAttribute="itemModel" action="setCartAdd" method="GET" >
   								<form:hidden path="itemNo" value="${members.itemNo}"/>
   								<input type="submit" value="カート入れる"/>
  							</form:form>

							</td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</main>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<!--
		何度かページをぐるぐる回って動作をチェックしたときのトップ飛ばしです。
		デザイン作る上で必要なければ消してOKです 元村　
	-->
	<p><a href="top">トップへ</a></p>
</body>
</html>