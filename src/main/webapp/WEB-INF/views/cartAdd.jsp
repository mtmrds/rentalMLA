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
	<body>
	<div class="page">
		<jsp:include page="header.jsp"/>
			<div class="center">
				<h1>カートに商品を入れますか？</h1>
				<form:form modelAttribute="itemModel">
				<!-- タイトルと商品画像 -->
				<table border="1">
					<tr>
						<th>ID</th>
						<th>画像</th>
						<th>タイトル</th>
						<th>タイプ</th>
						<th>レンタル数量</th>
					</tr>
					<tr>
						<td>${pickItem.itemNo }</td>
						<td><img src="${pickItem.image }"width="100" height="150" /></td>
						<td>${pickItem.title }</td>
						<td>${pickItem.type }</td>
						<td>
							<form:select path="quantity">
								<form:options items="${quantityOptions}" />
							</form:select>
						</td>
					</tr>
				</table>
				<p><input type="submit" value="カートIN"  class="btn-b" ></p>
				</form:form>

			<a href="<c:url value='search' />">検索画面に戻る</a>
			<a href="<c:url value='top' />">トップに戻る</a>
			</div>
			<jsp:include page="footer.jsp"/>
	</div>
	</body>
</html>