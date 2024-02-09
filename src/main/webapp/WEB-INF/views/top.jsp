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
    </style>
	</head>
	<body>
		<div class="toppage">
			<jsp:include page="header.jsp"/>
			<form:form modelAttribute="loginModel">
				<div class="loading-area">
					<span>R</span>
					<span>E</span>
					<span>N</span>
					<span>T</span>
					<span>A</span>
					<span>L</span>
					<span>S</span>
					<span>I</span>
					<span>T</span>
					<span>E</span>
				</div>
				<br>
					<div class="topselect">
						<form:form modelAttribute="itemModel">

							<!--見た目悪かったからa hrefタグに変更しました 高島  <input type="submit" value="商品一覧検索" class="btn">-->
							<a href="search" class ="btn-img">
							<img src="resources/image/虫眼鏡.png" width= "60"height= "auto">商品一覧検索</a>
						</form:form>

						<a href="setRegist" class ="btn-img">
						<img src="resources/image/会員登録画像.png" width= "60"height= "auto">会員登録</a>

					</div>
					<div class="loopplan">
						<div class="loopplan_box">
							<ul class="loopplan_list loopplan_list--left">
								<li class="loopplan_list_item">プラン紹介('ω')ノ ★お試しプラン(新規登録月限定):324円 2枚/月 ★Bronzeプラン:1080円 6枚/月 ★Silverプラン:2160円 12枚/月 ★Goldプラン:5400円 無制限/月</li>
								<li class="loopplan_list_item">プラン紹介('ω')ノ ★お試しプラン(新規登録月限定):324円 2枚/月 ★Bronzeプラン:1080円 6枚/月 ★Silverプラン:2160円 12枚/月 ★Goldプラン:5400円 無制限/月</li>
								<li class="loopplan_list_item">プラン紹介('ω')ノ ★お試しプラン(新規登録月限定):324円 2枚/月 ★Bronzeプラン:1080円 6枚/月 ★Silverプラン:2160円 12枚/月 ★Goldプラン:5400円 無制限/月</li>
								<li class="loopplan_list_item">プラン紹介('ω')ノ ★お試しプラン(新規登録月限定):324円 2枚/月 ★Bronzeプラン:1080円 6枚/月 ★Silverプラン:2160円 12枚/月 ★Goldプラン:5400円 無制限/月</li>
							</ul>
						</div>
					</div>
					<div class="topcontents">
						<div class="news">
							<h2>NEWS</h2>

 							<ul>
 								<li><span class="date">2024年2月7日</span><a href="http://localhost:8080/rental/search"><span class="list"> </span><br>新作レンタル作品更新のお知らせ</a>
 								<li><span class="date">2024年2月1日 </span><a href="http://localhost:8080/rental/search"><span class="list"></span> <br>メンテナンスのお知らせ</a>
 							</ul>
 					</div>

						<div class="topic">
							<h2>トピックス</h2>
							<ul>
								<li><span class="date">2024年2月7日</span><a href="http://localhost:8080/rental/search"><span class="list"></span> <br>今週のおすすめ</a>
								<li><span class="date">2024年2月1日</span><a href="http://localhost:8080/rental/NewFile"><span class="list"> </span><br>店長川上の1日</a>
							</ul>
						</div>
					</div>
					<div class="insta">
						<p>
							<a href="https://www.instagram.com/movmov2024/" >
							<img src="resources/image/Instagram_Glyph_Black.png" width="50" height="auto">
							インスタグラム開設しました
							</a>
						</p>

					</div>
			</form:form>
			<jsp:include page="footer.jsp" />
		</div>
	</body>
</html>