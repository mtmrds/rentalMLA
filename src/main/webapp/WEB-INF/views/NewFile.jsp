<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Music Life Agency</title>
<style>

.errors {
	font-family: 'Yomogi',cursive;
	color: red;
	font-weight: bold;
}
 ul{
    list-style :見栄えの指定;
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
<div class="newfile">
 	<h1>店長川上の1日</h1>
		おはようございます！店長の川上です。<br>
  		皆さんは普段どんな音楽を聴いてますか？<br>
  		意外と流行りの曲を知らない人も多いのでは？？？？？<br>
		そこで今回は2024年にいま流行っている曲をここでご紹介～！<br>
	<br>
    <h2><strong>最近流行りの今バズってる曲トップ10</strong></h2>
		<ul>
		    <li> 唱 / Ado</li>
		    <li> 晩餐歌 / tuki.</li>
		    <li> 花になって / 緑黄色社会</li>
		    <li> ランデブー / シャイトープ</li>
		    <li> ラブソング / マルシイ</li>
		    <li> ガチやべぇじゃん feat.ななもり。/ P丸様</li>
		    <li> I’m a mess / MY FIRST STORY</li>
		    <li> 全方向美少女 / 乃紫</li>
		    <li> 人マニア / 原口沙輔</li>
		    <li> LEAP HIGH! ～明日へ、めいっぱい～</li>
		</ul>

	<br>
 	<h3><strong>TikTokの人気曲ランキング</strong></h3>
		<ul>
		    <li> 唱 / Ado</li>
		    <li> アイドル / YOASOBI</li>
		    <li> SPECIALZ  / King Gnu</li>
		    <li> ランデヴー / シャイトープ</li>
		    <li> 可愛くてごめん / Honey Works</li>
		    <li> I’m a mess MY FIRST STORY</li>
		    <li> ファジーネーブル / Conton Candy</li>
		    <li> 勇者 / YOASOBI</li>
		    <li> you are my curse / nyamura</li>
		    <li> 最高到達点 SEKAI NO OWARI</li>
		</ul>

		知っている曲や気になる曲はありましたか？
		素敵な音楽ライフを！

<jsp:include page="footer.jsp" />
</div>
</body>
</html>