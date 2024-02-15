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
<style>
/* cssへ移動
@keyframes infinity2-scroll-left {
from {
  transform: translateX(0);
}
 to {
  transform: translateX(-100%);
}
}
.scroll-infinity2__wrap {
  display: flex;
  overflow: hidden;
}
.scroll-infinity2__list {
  display: flex;
  list-style: none;
  padding: 0
}
.scroll-infinity2__list--left {
  animation: infinity-scroll-left 20s infinite linear 0.5s both;
}
.scroll-infinity2__item {
  width: calc(70vw / 6);
}
.scroll-infinity2__item>img {
  width: 100%;
  height: 300px;
}
*/

div.center {
width:700px;
margin-right: auto;
margin-left : auto;
text-align: center;
}


</style>

</head>
<body>
    <div class="itemsearch">
        <jsp:include page="header.jsp"/>

<div class="center">
<h1>MUSICLIFE　商品検索画面</h1>
</div>
<div class="scroll-infinity">
<div class="scroll-infinity__wrap">



<div class="scroll-infinity2">
<div class="scroll-infinity2__wrap">
  <jsp:include page="itemSearchimg.jsp"/>
</div>
</div>
</div><br>
		<form:form modelAttribute="itemModel">
        <div class="center">
           <div>
                <h2>検索条件を指定する場合は<strong>「ID」</strong>または<strong>「タイトル名」</strong><br>
                のいずれかを入力してください</h2>
           </div>
           <br>
            <div>
                 <label for="id"><strong>ID</strong></label>
                 <form:input path="itemNo"/>
                 <label for="name"><strong>タイトル</strong></label>
                 <form:input path="title"/>
                 <input type="submit" value="検索する" class="btn">
           </div>
           <br>
           <div>
                 <c:out value="${message}"/>
           </div>
        </form:form>
            <c:if test="${!empty itemList}">

                <table border="1" cellpadding="15" algin="center">

                    <tr>
                        <th>ID</th>
                        <th>画像</th>
                        <th>タイトル</th>
                        <th>タイプ</th>
                        <th>カテゴリー</th>
                        <th>在庫</th>
                        <th>カート</th>
                    </tr>
                    <c:forEach var="items" items="${itemList}">
                        <tr>
                            <td><c:out value="${items.itemNo}"/></td>
                            <td><img src="${items.image }"width="100" height="150" /></td>
                            <td><c:out value="${items.title}"/></td>
                            <td><c:out value="${items.type}"/></td>
                            <td><c:out value="${items.category}"/></td>
                            <td><c:out value="${items.quantity}"/></td>
                            <td>
								<form:form modelAttribute="itemModel">
								<form:hidden path="itemNo" value="${items.itemNo }" />
								<form:hidden path="title" value="pick"/>
								<c:choose>
								<c:when test="${items.quantity > 0}">
								<input type="submit" value="カートに入れる" />
								</c:when>
								<c:otherwise>
								<input type="button" value="在庫切れ" disabled="disabled"/>
								</c:otherwise>
								</c:choose>
								</form:form>
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