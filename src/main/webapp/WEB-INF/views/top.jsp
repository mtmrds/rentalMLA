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
    font-size: 5rem;
    font-weight: bold;
    animation: rotate 2s infinite linear;
    text-transform: uppercase;
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