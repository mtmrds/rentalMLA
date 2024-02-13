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
<style>
@keyframes infinity-scroll-left {
from {
  transform: translateX(0);
}
  to {
  transform: translateX(-100%);
}
}
.scroll-infinity__wrap {
  display: flex;
  overflow: hidden;
}
.scroll-infinity__list {
  display: flex;
  list-style: none;
  padding: 0
}
.scroll-infinity__list--left {
  animation: infinity-scroll-left 20s infinite linear 0.5s both;
}
.scroll-infinity__item {
  width: calc(70vw / 6);
}
.scroll-infinity__item>img {
  width: 100%;
}

</style>

</head>
<body>
    <div class="itemsearch">
        <jsp:include page="header.jsp"/>

<main>
<div class="scroll-infinity">
<div class="scroll-infinity__wrap">
  <ul class="scroll-infinity__list scroll-infinity__list--left">
  	<li class="scroll-infinity__item"><img src="resources/itemimg/tonbo.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/1tokyo.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/2sousou.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/3kusuriya.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/4go-rudennkamui.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/5kamera.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/masausa.jpg" /></li>
  </ul>
  <ul class="scroll-infinity__list scroll-infinity__list--left">
  	<li class="scroll-infinity__item"><img src="resources/itemimg/tonbo.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/1tokyo.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/2sousou.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/3kusuriya.jpg"  /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/4go-rudennkamui.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/5kamera.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/6mimiwo.jpg" /></li>
  </ul>
  <ul class="scroll-infinity__list scroll-infinity__list--left">
    <li class="scroll-infinity__item"><img src="resources/itemimg/tonbo.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/1tokyo.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/2sousou.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/3kusuriya.jpg"  /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/4go-rudennkamui.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/5kamera.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/6mimiwo.jpg" /></li>
  </ul>
</div>
</div>
		<form:form modelAttribute="itemModel">
           <div>
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

                         <c:choose>
                             <c:when test="${items.quantity > 0}">
                             <input type="submit" value="カートに入れる"/>
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
</main>
        <jsp:include page="footer.jsp"/>
    </div>
</body>
</html>