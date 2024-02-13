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
  height: 300px;
}
.nagas{
	text-align: center;
}

</style>

</head>
<body>
    <div class="itemsearch">
        <jsp:include page="nagahe.jsp"/>

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
    <a href="tamibuchi"><li class="scroll-infinity__item"><img src="resources/itemimg/tamibuchi.jpg" /></li></a>
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
		<h1>毎週のおすすめ</h1>

	おはようございます！当店は長渕押しです<br>
  	皆さんは普段どんな音楽を聴いてますか？<br>
  	意外と流行りの曲を知らない人も多いのでは？？？？？<br>
	そこで今回は2024年にいま流行っている曲をここでご紹介～！<br>
	<iframe width="560" height="315" src="https://www.youtube.com/embed/tg19ldeDv_E?si=A-iQlMDhaVxVx2cD" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
	<br>
	<strong><h3>プロフィール</h3></strong>
	<img src="resources/itemimg/tamibuchi.jpg" width="200" height="300" />
	長渕 剛Tsuyoshi Nagabuchi
	1956年9月7日生まれ
	鹿児島県出身<br>

1978年シングル「巡恋歌」で本格デビュー。翌年にファースト・アルバム『風は南から』をリリースし、’80年「順子」でチャート１位を獲得する。<br>
以後、’85年「勇次」、’87年「ろくなもんじゃねぇ」、’88年「乾杯」「とんぼ」など、’80年代を通じ数々のヒットを連発。<br>
<br>
’90年代に入り、’91年『JAPAN』、’93年『Captain of the Ship』など、オリジナリティの極みとも言える革新的なアルバムをリリースすると同時に、<br>
’92年5月15日、東京ドームで１人 vs 65,000人という常識外れのライブを成功させる。<br>
<br>
2003年シングル「しあわせになろうよ」でシングルの総売り上げは1000万枚を突破。<br>
<br>
さらに、ソロ・アーティストとして12枚のオリジナル・アルバムでオリコンチャート1位獲得という、金字塔も打ち立てている。<br>
また、2002年の横浜スタジアム、2003年の赤レンガパークなど、数々の会場での動員記録を塗り替え、<br>
2004年・夏、桜島の荒地を開拓して作った野外会場でのオールナイトライブでは、日本全国から75,000人を集めるという驚異の集客力を見せつけた。<br>
経済効果50億と言われたこの公演は、音楽界のみならず、国内に大きな衝撃と感動を与えた。<br>
その会場跡地には記念モニュメント『叫びの肖像』が建立され、現在、公園事業計画が進んでいる。<br>
音楽の持つ力と可能性を、日本に示した瞬間といえるだろう。<br>
<br>
2009年ユニバーサルミュージックへ移籍。移籍第一弾シングル「卒業」は、NHK「課外授業 ようこそ先輩」を通じて知り合った、現役高校生40名との共作。<br>
卒業ソングの新たなる名曲が生まれた。<br>
同年7月、第2弾シングル「蝉 semi」を、8月には前作から2年3ヶ月振りとなる待望のニュー・アルバム『FRIENDS』を発表し、<br>
全国6ヶ所10公演のアリーナ・ツアー、さらには13ヶ所20公演の弾き語りホール・ツアー、そして自身初のカウントダウン・ライブで、目まぐるしい移籍1年目を締め括った。<br>
<br>
翌2010年も休むことなく走り続け、6月には豪華30周年記念ボックスセット『30th Anniversary BOX from TSUYOSHI NAGABUCHI PREMIUM』をリリース。<br>
さらには米軍基地問題に揺れる沖縄への愛を歌った「俺たちのニライカナイ」を8月に緊急シングルとしてリリース、<br>
そして10月にはシルベスター・スタローン監督・脚本・主演の映画「エクスペンダブルズ」日本版主題歌「絆-KIZUNA-」をリリースした。<br>
プロモーション来日したスタローンとの対談は、大きな話題となった。<br>
さらには、前作から僅か1年余りでニュー・アルバム『TRY AGAIN』をリリース、その勢いのままに、<br>新たなバンドを引き連れての8ヶ所14公演（沖縄でのカウントダウン・ライブも含む）の全国アリーナ・ツアーを行なった。<br>
<br>
2011年の東日本大震災後は、いち早く復興支援ラジオ番組を立ち上げ、自らの足で被災地をたびたび訪れた。<br>なかでも、航空自衛隊松島基地で敢行した自衛隊員激励ライブは、全国を感動の渦に巻き込んだ。<br>年末には石巻市門脇小の校庭から生中継で「ひとつ」を歌い、シングル・ヒットを記録。<br>これらの経験から生まれた多数の歌を収めたアルバム「Stay Alive」を2012年5月にリリース、同年に行われた全国ツアーは、合計36本、のべ25万人動員した。<br>
<br>
2015年3月6日、オールナイトライヴの序章とも言えるホールツアー<br>「長渕剛HALL TOUR 2015 ‘ROAD TO FUJI’」（全国13会場14公演）をスタートし、5月8日のプレミアムライブ、鹿児島アリーナで締めくくった。<br>
そして、2015年8月22日「長渕剛10万人オールナイト・ライヴ 2015 in富士山麓」を開催。夜を徹して歌い、<br>拳を突き上げ、泣き、笑い…同公演は、長渕剛にしか成し得ることができなかったと言われる、壮大なスケールの想像を遥かに超えた伝説となった。<br>
<br>2017年には5年ぶりのニュー・アルバム「BLACK TRAIN」をリリース。<br>2017年、2018年と全国ツアーを開催。<br>自身デビュー40周年となった2019年には、主演映画「太陽の家」の上映とコンサートを融合させた「CINEMA & LIVE 2019 太陽の家」を開催。<br>
<br>
音楽以外の多方面でも才能を発揮し、俳優としては、TVドラマ「家族ゲーム」「親子ゲーム」「とんぼ」、映画「オルゴール」「英二」他で主演し、その個性的な演技で高い評価を得ている。<br>2020年には20年ぶりの主演映画「太陽の家」が公開された。<br>
<br>
さらに芸術分野では、1998年に東京・銀座の「日動画廊」に於いて初の詩画展を開催。2000年の第2回、加えて鹿児島、福岡、とそれぞれ約2万人を動員。<br>2013年～2015年にも全国各地で詩画展を開催している。<br>

音楽のみに限らず、芸術、絵画のジャンルなどでも様々な魅力を発揮する彼の真摯な姿勢が、若者たちを中心に多くの支持を集めている。
<a href="https://tsuyoshinagabuchi.com/fanclub/">俺のファンクラブ入会もよろしく</a>

<div class="nagas">
<img src="resources/image/nagas.jpg" /></div>
</main>
        <jsp:include page="footer.jsp"/>
    </div>
</body>
</html>