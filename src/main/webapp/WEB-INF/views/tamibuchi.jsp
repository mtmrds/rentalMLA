<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- カート選択 -->
<!DOCTYPE html>
<html>
	<head>
	<meta charset=UTF-8>
		<title>TAMIBUCHITSUYOSI</title>
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

			.instaview {
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
			<div class="loading-area">
				<span>正</span>
				<span>解</span>
				<span>！</span>
				<span>！</span>
				<span>！</span>
				<span>！</span></div>
			<div class="loading-area">
				<span>お</span>
				<span>め</span>
				<span>で</span>
				<span>と</span>
				<span>う</span>
				<span>！</span>
			</div>


			<p><a href="<c:url value='top' />">トップに戻る</a></p>
			<jsp:include page="footer.jsp"/>

	</body>
</html>