<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- 商品一覧検索 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>レンタルサイト 商品一覧画面</title>
	</head>
		<body>
			<div class="page">
			<jsp:include page="header.jsp"/>
			<form:form modelAttribute="itemModel">
			<div class="center">
				<h1>商品検索画面</h1>
					<div class="scroll-infinity">
						<div class="scroll-infinity__wrap">
							<jsp:include page="itemSearchimg.jsp"/>
							<jsp:include page="itemSearchimg.jsp"/>
						</div>
					</div>
						<div class="itemsearch">
							<h2>検索条件を指定する場合は
								<strong>「タイトル名」</strong>、<strong>「カテゴリー」</strong>
								のいずれかを入力してください</h2>
								<h3><strong>空欄の状態で「検索する」を押すとすべての商品を表示します</strong></h3><br>
							<label for="name"><strong>タイトル</strong></label>
							<form:input path="title"/>
							<label for="category"><strong>カテゴリ</strong></label>
							<form:input path="category"/>
							<input type="submit" value="検索する" class="btn-b"><br>
							<div>
								<c:out value="${message}"/>
							</div>
							<br>
						</div>
						</div>
			</form:form>
			<div class="center">
					<c:if test="${!empty itemList}">
						<table border="1">
							<tr>
								<th>画像</th>
								<th>タイトル</th>
								<th>タイプ</th>
								<th>カテゴリー</th>
								<th>在庫</th>
								<th>カート追加</th>
							</tr>
							<c:forEach var="items" items="${itemList}">
								<tr>
									<td><img src="${items.image }"width="100" height="150" /></td>
									<td><c:out value="${items.title}"/></td>
									<td><c:out value="${items.type}"/></td>
									<td><c:out value="${items.category}"/></td>
									<td><c:out value="${items.quantity}"/></td>
									<td>
										<c:choose>
                            				<c:when test="${empty loginModel.name}">
                                				<input type="button" value="ログインしてください" disabled="disabled"/>
                            				</c:when>
                            				<c:otherwise>
                                				<form:form modelAttribute="itemModel">
                                    				<form:hidden path="itemNo" value="${items.itemNo}"/>
                                    				<form:hidden path="title" value="pick"/>
                                    				<c:choose>
                                        				<c:when test="${items.quantity > 0}">
                                            				<input type="submit" value="カートに入れる"/>
                                        				</c:when>
                                        				<c:otherwise>
                                            				<input type="button" value="在庫切れ" disabled="disabled"/>
                                        				</c:otherwise>
                                    				</c:choose>
                                				</form:form>
                            				</c:otherwise>
                        				</c:choose>
									</td>
								</tr>
							</c:forEach>
						</table>
					</c:if>
					</div>
					<jsp:include page="footer.jsp"/>
				</div>
		</body>
</html>