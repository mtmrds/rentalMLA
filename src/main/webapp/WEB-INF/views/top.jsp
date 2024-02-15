<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- レンタルサイトの表紙として、各ページ遷移等-->
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8>
		<title>Music Life Agency</title>
	</head>
	<body>
		<div class="page">
			<audio src="resources/music/08-Nerd-Strut-_Instrumental_.mp3" type="audio/mp3" autoplay loop></audio>
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
						<a href="search" class ="btn-img">
						<img src="resources/image/虫眼鏡.png" width= "60"height= "auto">商品一覧検索</a>
					</form:form>
						<a href="setRegist" class ="btn-img">
						<img src="resources/image/会員登録画像.png" width= "60"height= "auto">新規会員登録</a>
				</div>
				<br>
				<jsp:include page ="loopplan.jsp"/>
					<div class="topcontents">
						<jsp:include page ="news.jsp" />
						<jsp:include page ="topic.jsp" />
						<jsp:include page ="insta.jsp" /><!-- CSS後で修正ベースUP‐手島 -->
					</div>
			</form:form>
			<jsp:include page="footer.jsp" />
		</div>
	</body>
</html>