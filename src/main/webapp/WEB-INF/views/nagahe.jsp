<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- ヘッダー -->
<!DOCTYPE html>
<html>
<style>
.naga{
font-size:5em;
	text-align:center;
	line-height:0.95em;
	font-weight:bold;
	color: transparent;
	background: repeating-linear-gradient(0deg, #B67B03 0.1em, #DAAF08 0.2em, #FEE9A0 0.3em, #DAAF08 0.4em, #B67B03 0.5em);
	webkit-background-clip: text;

}
.loginname{
background: linear-gradient(90deg, #b39855 0%, #fff9e6 50%, #b39855 100%);

}



</style>

	<!-- ログイン後は名前を表示 -->
	<header>

		<form:form modelAttribute="memberModel">

			<div class="naga">

				<a href="top"  alt="トップページに戻る">
					<img src="resources/image/n.png">
					<audio src="resources/music/08-Nerd-Strut-_Instrumental_.mp3" type="audio/mp3" autoplay loop></audio>
					<h1>Music Life Nagabuchi</h1>
				</a>
			</div>
			 <!-- 各種ページへのリンク -->
			 <div class="linkpage">

			 	<!-- ログインしていない場合はログインページへのリンクを表示 -->
				<c:if test="${empty loginModel.name}">
    				<a href="login" alt="ログイン" class="btn-img">
        			<img src="resources/image/人間アイコン3.png" width="40" height="auto">ログイン
    				</a>
				</c:if>

				<!-- ログインしている場合はマイページへのリンクを表示 -->
				<c:if test="${!empty loginModel.name}">
    				<a href="mypage" alt="マイページ" class="btn-img">
        			<img src="resources/image/人間アイコン3.png" width="40" height="auto">マイページ
    				</a>
				</c:if>

 				<a href="cart" class="btn-img">
  				<img src="resources/image/カート.png" width= "60"height= "auto">カート</a>

  				<a href="b"class="btn-img">
  				<img src="resources/image/メモのアイコン3.png" width="50"height="auto">履歴管理</a>　
	 		</div>
			 <!--ログイン後だけ表示できる-->
			<div class="loginname">
				<p>

					<c:if test="${not empty loginModel.name}">
						<p>ようこそ、${loginModel.name}さん</p>
						<p><a href="logout">ログアウト</a></p>
						<p><a href="nagabuchi">今月の長渕剛</a></p>
					</c:if>
				</p>
			</div>
		</form:form>
	</header>
</html>