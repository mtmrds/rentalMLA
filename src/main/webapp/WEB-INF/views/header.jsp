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
<link href="https://fonts.googleapis.com/css2?family=Monomaniac+One&display=swap" rel="stylesheet">

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

p{
	font-family: 'Kaisei Decol', serif;
	font-family: 'Monomaniac One', sans-serif;
	text-align: right;
	font-size: 25px;
}

</style>
<header>
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
  	<p>
       <c:if test="${not empty loginModel.name}">
			<p>ようこそ、${loginModel.name}さん</p>
		</c:if>
	</p>

      <!-- メニューボタン削除 -->

        <!--<jsp:include page="footer.jsp" />　-->
    </form:form>
</header>