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
p{
	font-size: 30px;
}

.nagabuchi{
	text-align: center;
}

.nagabuchi h1,h2,h3,h4,h5{
	font-size: 40px;
}
</style>
</head>
<body>

	<div class="page">
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
					<span>I</span>
		</div>
		<div class="loading-area">
					<span>T</span>
					<span>S</span>
					<span>U</span>
					<span>Y</span>
					<span>O</span>
					<span>S</span>
					<span>H</span>
					<span>I</span>
		</div><br>
<div class="scroll-infinity">
<div class="scroll-infinity__wrap">
<jsp:include page="nagabuchiimg.jsp"/>
</div>
</div>
<br>
		<div class="nagabuchi">

				<h1>俺の最新のミュージックライフ</h1>
				<iframe width="560" height="315" src="https://www.youtube.com/embed/jY9NKOjtBq4?si=R8-rzpYs94Zj4ofY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

				<p>
					種子島の諸君！！！<br>
					俺の名前は長渕剛！歌手活動をしています！<br>
  					皆さんは普段どんな音楽を聴いてますか？<br>
  					長渕ですか？？剛ですか？？それともNAGABUCHI TSUYOSHIですか？？？<br>
  					意外と俺の曲ばかりで、流行りの曲を知らない人も多いのでは？？？？<br>
					そこで今回は2024年にいま長渕が個人的に流行っていると思う、<br>
					そんなおすすめの最新曲をここでご紹介するぜ！！！！<br>
				</p><br>

    			<h2><strong>最近流行りの今バズってる俺的トップ５</strong></h2>
					<p>
     					１：とんぼ<br>
     					２：しゃぼん玉<br>
     					３：乾杯<br>
     					４：巡恋歌<br>
     					５：しあわせになろうよ<br>
    				</p>
				<br>
				<h3><strong>TikTokで人気の俺のランキング</strong></h3>
				<h4><strong>長渕トップ３</strong></h4>
					<p>
     					１：とんぼ<br>
     					２：しゃぼん玉<br>
     					３：乾杯<br>
     					４：巡恋歌<br>
     					５：しあわせになろうよ<br>
    				</p>
				<h4>知っている曲や気になる曲はありましたか？ありましたよね？？？
					素敵な長渕ライフを！！！！</h4>
				<h5>
					<a href="https://tsuyoshinagabuchi.com/fanclub/">ファンクラブはこちら</a>
					<a href="https://twitter.com/nagabuchi_staff">X(旧ツイッター)はこちら</a>
					<a href="https://www.instagram.com/tsuyoshi_nagabuchi/">インスタはこちら</a>
					<a href="https://www.youtube.com/channel/UCsQc7RfiO8e08JXeCGmmjCA">youtubeはこちら</a>
				</h5>
				<div class="center">
					<p><a href="<c:url value='top' />">トップに戻る</a></p>
				</div>
				<jsp:include page="footer.jsp" />

		</div>
	</div>
</body>
</html>