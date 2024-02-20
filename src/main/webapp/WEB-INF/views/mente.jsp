<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Music Life Agency</title>
	</head>
	<style>
		.page h2 {
			font-size: 50px;
		}

		.page li {
			font-size: 30px;
			list-style: none;
		}


	</style>
	<body>
	<div class="page">
		<jsp:include page ="header.jsp"/>
			<div class="center">
			<h1>メンテナンスのお知らせ</h1>
			<h2>おはようございます！当店は今後全て長渕に変わります<br>
			皆さんは普段どんな音楽を聴いてますか？<br>
			意外と流行りの曲を知らない人も多いのでは？？？？？<br>
			そこで今回は2024年にいま流行っている曲をここでご紹介～！</h2><br>
			<img src="resources/Nclub/n1.jpg" width=100%>
			<br>
			<h2><strong>最近流行りの今バズってる曲トップ３</strong></h2>
			<ul>
				<li> とんぼ</li>
				<li> 乾杯</li>
				<li> 巡恋歌</li>
			</ul>
			<img src="resources/Nclub/n3.webp">
			<br>
			<h2><strong>TikTokの人気曲ランキング</strong></h2>
			<h2><strong>長渕トップ３</strong></h2>
			<ul>
				<li> とんぼ</li>
				<li> 乾杯</li>
				<li> 巡恋歌</li>
			</ul>
			<br>
			<h2>知っている曲や気になる曲はありましたか？<br>
			素敵な音楽ライフを！</h2>
			</div>
		<jsp:include page="footer.jsp"/>
	</div>
</body>