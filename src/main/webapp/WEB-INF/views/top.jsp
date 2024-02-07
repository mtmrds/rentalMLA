<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
  padding: 1.5rem 1rem;
  text-align: center;
}

h2:after {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 10px;
  content: '';
  background-image: -webkit-repeating-linear-gradient(135deg, #000, #000 1px, transparent 2px, transparent 5px);
  background-image: repeating-linear-gradient(-45deg, #000, #000 1px, transparent 2px, transparent 5px);
  background-size: 7px 7px;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}


</style>
	</head>
	<body>
		<div class="toppage">
			<jsp:include page="header.jsp"/>
			<form:form modelAttribute="loginModel">
				<div class="title">
					<h1>レンタルサイト</h1>
				</div>
					<div class="topselect">
						<form:form modelAttribute="itemModel">
							<input type="submit" value="商品一覧検索" class="btn">
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

<div class="box">
<div class="box-title"><h2>NEWS</h2></div>
  <ul>
  <li><span class="date">2024年2月7日</span><a href="http://localhost:8080/rental/search"><span class="list"> </span><br>新作レンタル作品更新のお知らせ</a>
  <li><span class="date">2024年2月1日 </span><a href="http://localhost:8080/rental/search"><span class="list"></span> <br>メンテナンスのお知らせ</a>
  </ul>
  </div>
</section>
			</form:form>
			<jsp:include page="footer.jsp" />
		</div>
	</body>
</html>