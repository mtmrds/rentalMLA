<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 商品一覧画面 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>レンタルサイト 商品一覧画面</title>
	</head>
	<!-- バックが従業員ページいじるために背景色変えてます　元村 -->
	<body style="background-color: gray;">
		<div class="itemsearch">
			<jsp:include page="headeremp.jsp"/>
				<main>
					<form:form modelAttribute="itemModel">
						<div >
							検索条件を指定する場合は<strong>「ID」</strong>または<strong>「タイトル名」</strong>のいずれかを入力してください
						</div>
						<div>
							<label for="id"><strong>ID</strong></label>
							<form:input path="itemNo"/>
							<label for="name"><strong>タイトル</strong></label>
							<form:input path="title"/>
							<input type="submit" value="検索する" class="btn">
						</div>
						<div>
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
  									<form:form modelAttribute="itemModel">
										<form:hidden path="itemNo" value="${items.itemNo }" />
										<form:hidden path="title" value="pick"/>
										<input type="submit" value="カートに入れる"/>
									</form:form>
								</td>
							</tr>
						</c:forEach>
					</table>
					</c:if>
				</main>
			<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>