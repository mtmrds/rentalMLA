<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- レンタルサイトの表紙として、各ページ遷移等-->
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Music Life Agency</title>
<style>
/*流れるプランの設定*/
			@keyframes loopplan {
				from {
					transform: translateX(0);
				}
				to {
				transform: translateX(-100%);
				}
			}

			.loopplan_box {
				display: flex;
				overflow: hidden;
			}

			.loopplan_list {
				display: flex;
				list-style: none;
				padding: 0;
			}

			.loopplan_list--left {
				animation: loopplan 100s infinite linear 0.5s both;
			}

			.loopplan_list_item {
				font-family: Yomogi',cursive;
				color: grey;
				width: calc(900vw / 3);
				font-size: 50px;
			}

			/*NEWS・トピックス設定*/
			.topcontents  {
				display: flex;	/*横並び*/
				justify-content: center; /*左右中央寄せ*/
    			align-items: center;		/*上下中央寄せ*/
			}

			.news {
				margin: 2em;
				padding:2em;/*内側余白*/
				background-color:#fff;/*背景色*/
				background-color:rgba(255,255,255,0.8);
				box-shadow: 0 0 6px 1px #66CCFF, 0 0 6px 1px #66CCFF inset;/*ふわりとした影*/
				border-radius: 30px;
				height: 300px;
				width: 500px;
			}

			.topic {
				margin: 2em;
				padding:2em;/*内側余白*/
				background-color:#fff;/*背景色*/
				background-color:rgba(255,255,255,0.8);
				box-shadow: 0 0 6px 1px #66CCFF, 0 0 6px 1px #66CCFF inset;/*ふわりとした影*/
				border-radius: 30px;
				height: 300px;
				width: 500px;
			}

			.topcontent h2 {
				position: relative;
				font-size: 2em;
				border-color:black;
				position: relative;
				padding: 0.5rem 0;
				margin-bottom: 0.2rem;
				border-bottom: 5px solid;
				font-weight: bold;
				font-size: 26px;
			}

			.contents { /*これ何の設定かわかりますか？今ある？いらんなら消すよ。高島*/
				position: relative;
				display: grid;
				place-items: center;
				width: 100vw;
				height: 100vh;
				box-sizing: border-box;
				background-color: #fff;
				overflow: hidden;
			}

			/*タイトル 装飾*/
			.loading-area {
				display: flex;
				justify-content: center;
				gap: 100px;
			}

			.loading-area span {
				color:#61b0e2;
				font-size: 6.5rem;
				font-weight: bold;
				animation: rotate 2s infinite linear;
				text-transform: uppercase;
			}

			letter-spacing:-50px;
			padding-top: 60px;
			padding-bottom: 80px;
			}

			.loading-area span:nth-child(2) {
				animation-delay: 0.1s;
			}

			.loading-area span:nth-child(3) {
				animation-delay: 0.2s;
			}

			.loading-area span:nth-child(4) {
				animation-delay: 0.3s;
			}

			.loading-area span:nth-child(5) {
				animation-delay: 0.4s;
			}

			.loading-area span:nth-child(6) {
				animation-delay: 0.5s;
			}

			.loading-area span:nth-child(7) {
				animation-delay: 0.6s;
			}

			.loading-area span:nth-child(8) {
				animation-delay: 0.7s;
			}

			.loading-area span:nth-child(9) {
				animation-delay: 0.8s;
			}

			.loading-area span:nth-child(10) {
				animation-delay: 0.9s;
			}

			@keyframes rotate {
    			70% {
        		transform: rotateX(0deg);
    			}
				100% {
    			transform: rotateX(360deg);
    			}
    		}
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
  height: 300px;
}
div.center {
    text-align: center;
}
</style>
</head>
	<body>
<div class="toppage">
<div class="center">
<jsp:include page="header.jsp"/>
				<div class="loading-area">
					<span>N</span>
					<span>A</span>
					<span>G</span>
					<span>A</span>
					<span>B</span>
					<span>U</span>
					<span>C</span>
					<span>H</span>
					<span>I</span></div>
				<div class="loading-area">
					<span>T</span>
					<span>S</span>
					<span>U</span>
					<span>Y</span>
					<span>O</span>
					<span>S</span>
					<span>H</span>
					<span>I</span>
				</div>


<div class="scroll-infinity">
<div class="scroll-infinity__wrap">
  <ul class="scroll-infinity__list scroll-infinity__list--left">
  	<li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi2.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi3.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi4.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi5.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tonbo.jpg" /></li>
  </ul>
  <ul class="scroll-infinity__list scroll-infinity__list--left">
  	<li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi2.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi3.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi4.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi5.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tonbo.jpg" /></li>
  </ul>
  <ul class="scroll-infinity__list scroll-infinity__list--left">
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi2.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi3.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi4.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tuyoshi5.jpg" /></li>
    <li class="scroll-infinity__item"><img src="resources/itemimg/tonbo.jpg" /></li>
  </ul>
</div>
</div>

<body>
	<div>
		<h1>俺の最新のミュージックライフ</h1>

			<iframe width="560" height="315" src="https://www.youtube.com/embed/jY9NKOjtBq4?si=R8-rzpYs94Zj4ofY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

	</div>
	<div class="nagabuchi">
<h2>
	種子島の諸君！！！<br>
	俺の名前は長渕剛！歌手活動をしています！<br>
  	皆さんは普段どんな音楽を聴いてますか？<br>
  	長渕ですか？？剛ですか？？それともNAGABUCHI TSUYOSHIですか？？？<br>
  	意外と俺の曲ばかりで、流行りの曲を知らない人も多いのでは？？？？<br>
	そこで今回は2024年にいま長渕が個人的に流行っていると思う、<br>
	そんなおすすめの最新曲をここでご紹介するぜ！！！！<br></h2>
	<br>
    <strong><h1>最近流行りの今バズってる俺的トップ５</h1></strong>
<ul><h2>
     １：とんぼ<br>
     ２：しゃぼん玉<br>
     ３：乾杯<br>
     ４：巡恋歌<br>
     ５：しあわせになろうよ<br>
    </h2>
</ul>

<br>
  <strong><h1>TikTokで人気の俺のランキング</h1></strong>



    <strong><h1>長渕トップ３</h1></strong>

<ul><h2>
     １：とんぼ<br>
     ２：しゃぼん玉<br>
     ３：乾杯<br>
     ４：巡恋歌<br>
     ５：しあわせになろうよ<br>
    </h2>
</ul>

<h1>知っている曲や気になる曲はありましたか？ありましたよね？？？
素敵な長渕ライフを！！！！</h1>
<h2>
<a href="https://tsuyoshinagabuchi.com/fanclub/">ファンクラブはこちら</a>
<a href="https://twitter.com/nagabuchi_staff">X(旧ツイッター)はこちら</a>
<a href="https://www.instagram.com/tsuyoshi_nagabuchi/">インスタはこちら</a>
<a href="https://www.youtube.com/channel/UCsQc7RfiO8e08JXeCGmmjCA">youtubeはこちら</a></h2>

<div class="center">
<p><a href="<c:url value='top' />">トップに戻る</a></p>
</div>
<jsp:include page="footer.jsp" />
</div></div>
</body>
</html>


