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
.scroll-infinity__item{
      float: right;
    }

span {
    background-color: #ffffc1;
}



.pic-container {
    display: flex;
    justify-content: center;
    flex-direction: column;
    width: 100vw;
    height: 100vh;
    padding: 0 6rem;
    box-sizing: border-box;
    background-color: #fefefe;
    background-color: #ffffc1;

}
.size_test {
    font-size:  25px;    /* 文字サイズ指定 */
}
.errors {
	font-family: 'Yomogi',cursive;
	color: red;
	font-weight: bold;
}

:root {
    --accent-color: #db5edb;
}


.newfile {
    font-size:  30px;    /* 文字サイズ指定 */
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
<jsp:include page="header.jsp"/>
  	<li class="scroll-infinity__item"><img src="resources/image/neko.gif" /></li>
  	<li class="scroll-infinity__item"><img src="resources/image/kinoko-1.gif" /></li>
  	<li class="scroll-infinity__item"><img src="resources/image/ebi.gif" /></li>
 	<li class="scroll-infinity__item"><img src="resources/image/toraianguru-1.gif" /></li>
  	<li class="scroll-infinity__item"><img src="resources/image/再生おにぎり-1.gif" /></li>

 	<h1><span>店長川上の1日</span></h1>
		おはようございます！店長の川上です。<br>
  		皆さんは普段どんな音楽を聴いてますか？<br>
  		意外と流行りの曲を知らない人も多いのでは？？？？？<br>
		そこで今回は2024年にいま流行っている曲をここでご紹介～！<br>
	<br>
    <h2><strong><span>最近流行りの今バズってる曲トップ10</span></strong></h2>
  <div class="box1-4">
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
		    <li> LEAP HIGH! ～明日へ、めいっぱい～ /  PRODUCE 101 JAPAN THE GIRLS</li>
		</ul>
	</div>
	<br>
	    <div class="size_test">
 	<h3><strong><span>TikTokの人気曲ランキング</span></strong></h3>
		<ul>
		    <li> 唱 / Ado</li>
		    <li> アイドル / YOASOBI</li>
		    <li> SPECIALZ  / King Gnu</li>
		    <li> ランデヴー / シャイトープ</li>
		    <li> 可愛くてごめん / Honey Works</li>
		    <li> I’m a mess / MY FIRST STORY</li>
		    <li> ファジーネーブル / Conton Candy</li>
		    <li> 勇者 / YOASOBI</li>
		    <li> you are my curse / nyamura</li>
		    <li> 最高到達点 / SEKAI NO OWARI</li>
		</ul>
</div>
		知っている曲や気になる曲はありましたか？
		素敵な音楽ライフを！
	</div>
<jsp:include page="footer.jsp" />
</div>
</body>
</html>