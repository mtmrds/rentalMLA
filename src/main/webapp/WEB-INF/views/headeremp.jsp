<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<!-- 社名ロゴフォント -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Sacramento&display=swap" rel="stylesheet">

<!-- その他文字フォント -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Yomogi&display=swap" rel="stylesheet">


</head>
<%-- header --%>
<style>

.logo{
	display: flex;
}
.logo h1{
    font-family: 'Sacramento', cursive;
    font-size: 30px;
    }
.logo img{
 	height: 50px;
	width: 50px;
 }
.link{
	font-family: 'Yomogi', cursive;
	text-align: right;
	font-size: 25px;
}

p{
	font-family: 'Yomogi', cursive;
	text-align: right;
	font-size: 25px;
}


</style>
<header>
	<%--従業員用のヘッダー --%>
    <%-- ログイン済みの場合は名前を表示 --%>
    <form:form modelAttribute="memberModel">


<div class="logo">
		<img src="resources/image/logo.png">
		<h1>Music Life Agency</h1>

</div>
	<!--
		下記pタグ内について、
		${memberModel.name}となっていたので、会員情報で取得したログイン情報を取得できていませんでした
		また、常に「さん」が出ている状態だったので条件判定ができるJSTLを追加して、
		${loginModel.name}に変更し、ログイン後だけ表示できるようにしています　元村
	 -->

	 <div class="link">
	 <!-- リンクボタンを追加しました リンク先は仮で作ってますので後で修正お願いします-->
	 <a href="a">マイページ</a>｜<a href="cart">カート</a>｜<a href="b">閲覧履歴</a><a href="c">在庫管理</a>｜<a href="d">督促管理</a>｜<a href="e">情報管理</a>
	 </div>

  	<p>
       <c:if test="${not empty loginModel.name}">
			<p>ようこそ、${loginModel.name}さん</p>
		</c:if>

	</p>

      <!-- メニューボタン削除 -->

    </form:form>
</header>