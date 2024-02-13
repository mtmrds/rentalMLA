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
  	<li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
  </ul>
  <ul class="scroll-infinity__list scroll-infinity__list--left">
  	<li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
  </ul>
  <ul class="scroll-infinity__list scroll-infinity__list--left">
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
  </ul>
</div>
</div>
		<h1>今週のおすすめ</h1>

	おはようございます！当店は今後全て長渕に変わります<br>
  	皆さんは普段どんな音楽を聴いてますか？<br>
  	意外と流行りの曲を知らない人も多いのでは？？？？？<br>
	そこで今回は2024年にいま流行っている曲をここでご紹介～！<br>
	<br>
</main>
        <jsp:include page="footer.jsp"/>
    </div>
</body>
</html>