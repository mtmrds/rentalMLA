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
.loop03 {
    padding-top: 30px;
    padding-bottom: 30px;
    overflow: hidden;
}
.loop03__box {
    display: flex;
    width: 100vw;
    padding-top: 10px;
    padding-bottom: 10px;

}
.loop03__item {
    flex: 0 0 auto;
    font-size: 40px;
    white-space: nowrap;
    padding-right: 25px;
    padding-left: 25px;
    color: gray;
}

.loop03__item:nth-child(odd) {
    animation: loop 50s -25s linear infinite;
}
.loop03__item:nth-child(even) {
    animation: loop2 50s linear infinite;
}

@keyframes loop {
    0% {
        transform: translateX(100%);
    }
    to {
        transform: translateX(-100%);
    }
}

@keyframes loop2 {
    0% {
        transform: translateX(0);
    }
    to {
        transform: translateX(-200%);
    }
}
.box5-1{
	margin: 0em auto; /* ボックスの余白 */
	background-color: #fff; /* ボックス背景色 */
	padding: 5em 2em 2em; /* ボックス内側余白 */
	position:relative; /*配置(ここを基準に)*/
	box-shadow: 0px 1px 5px rgba(0,0,0,0.1);/*ボックス影*/
}
.box5-1 .box-title {
	background-color: #A7B4AF; /* タイトル背景色 */
	font-size: 1em;/* タイトル文字の大きさ */
	color: #fff; /* タイトル文字色 */
	padding:10px;/*タイトル余白*/
	text-align: center;	/* タイトル中央寄せ */
	position:absolute;	/* 配置(ここを動かす) */
	top:0;	/*上から(0px)に配置 */
	left:0; /*左から(0px)に配置 */
	width:100%;/*横幅最大幅 */
}


h2 {
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

/*ふわふわした囲み枠*/
.box3-2 {
	margin: 2em;
	padding:2em;/*内側余白*/
	background-color:#fff;/*背景色*/
	background-color:rgba(255,255,255,0.8);
	box-shadow: 0 0 6px 1px #66CCFF, 0 0 6px 1px #66CCFF inset;/*ふわりとした影*/
	border-radius: 30px;
	  height: 300px;
	  width: 500px;
}
.box3-3 {
	margin: 2em;
	padding:2em;/*内側余白*/
	background-color:#fff;/*背景色*/
	background-color:rgba(255,255,255,0.8);
	box-shadow: 0 0 6px 1px #66CCFF, 0 0 6px 1px #66CCFF inset;/*ふわりとした影*/
	border-radius: 30px;
	  height: 300px;
	  width: 500px;
}

.contents {

	<style>
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
		list-style: none;++
		padding: 0
	}

	.loopplan_list--left {
		animation: loopplan 50s infinite linear 0.5s both;
	}

	.loopplan_list_item {
		font-family: Yomogi',cursive;
		color: grey;
		width: calc(900vw / 3);
		font-size: 50px;
		}

  .contents {

    position: relative;
    display: grid;
    place-items: center;
    width: 100vw;
    height: 100vh;
    box-sizing: border-box;
    background-color: #fff;
    overflow: hidden;
    }

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
					<div class="topselect">
						<form:form modelAttribute="itemModel">
							<input type="submit" value="商品一覧検索">
						</form:form>
						<br>
						<a href="setRegist">会員登録</a>
						<c:if test="${empty loginModel.name}">
    						<a href="login">ログイン</a>
						</c:if>
						<c:if test="${loginModel.name != null}">
							<!-- ログインしている場合のみログアウトリンクを表示 -->
							<a href="logout">ログアウト</a>
						</c:if>
					</div>

<section class="loop03">
    <div class="loop03__box">
        <p class="loop03__item">プラン紹介('ω')ノ ★お試しプラン(新規登録月限定):324円 2枚/月 ★Bronzeプラン:1080円 6枚/月 ★Silverプラン:2160円 12枚/月 ★Goldプラン:5400円 無制限/月</p>
        <p class="loop03__item">プラン紹介('ω')ノ ★お試しプラン(新規登録月限定):324円 2枚/月 ★Bronzeプラン:1080円 6枚/月 ★Silverプラン:2160円 12枚/月 ★Goldプラン:5400円 無制限/月</p>
        <p class="loop03__item">プラン紹介('ω')ノ ★お試しプラン(新規登録月限定):324円 2枚/月 ★Bronzeプラン:1080円 6枚/月 ★Silverプラン:2160円 12枚/月 ★Goldプラン:5400円 無制限/月</p>
        <p class="loop03__item">プラン紹介('ω')ノ ★お試しプラン(新規登録月限定):324円 2枚/月 ★Bronzeプラン:1080円 6枚/月 ★Silverプラン:2160円 12枚/月 ★Goldプラン:5400円 無制限/月</p>
    </div>

<div class="box3-2">
<div class="box-title"><h2>NEWS</h2></div>
  <ul>
  <li><span class="date">2024年2月7日</span><a href="http://localhost:8080/rental/search"><span class="list"> </span><br>新作レンタル作品更新のお知らせ</a>
  <li><span class="date">2024年2月1日 </span><a href="http://localhost:8080/rental/search"><span class="list"></span> <br>メンテナンスのお知らせ</a>
  </ul>
  </div>
  <div class="box3-3">
<div class="box-title"><h2>トピックス</h2></div>
  <ul>
  <li><span class="date">2024年2月8日</span><a href="http://localhost:8080/rental/search"><span class="list"> </span><br>店長川上の1日</a>
  <li><span class="date">2024年1月10日 </span><a href="http://localhost:8080/rental/search"><span class="list"></span> <br>今週のおすすめ</a>
  </ul>
  </div>
</section>

					<div class="loopplan">
						<div class="loopplan_box">
							<ul class="loopplan_list loopplan_list--left">
								<li class="loopplan_list_item">プラン紹介('ω')ノ ★お試しプラン(新規登録月限定):324円 2枚/月　★Bronzeプラン:1080円 6枚/月　★Silverプラン:2160円 12枚/月　★Goldプラン:5400円 無制限/月　</li>
							</ul>
						</div>
					</div>
					<div class="news">
						<div class="newstitle">
							<h2>NEWS</h2>
						</div>
 							<ul>
 								<li><span class="date">2024年2月7日</span><a href="http://localhost:8080/rental/search"><span class="list"> </span><br>新作レンタル作品更新のお知らせ</a>
 								<li><span class="date">2024年2月1日 </span><a href="http://localhost:8080/rental/search"><span class="list"></span> <br>メンテナンスのお知らせ</a>
 							</ul>
 					</div>

			</form:form>
			<jsp:include page="footer.jsp" />
		</div>
	</body>
</html>