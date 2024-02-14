<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- マイページ -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>マイページ</title>
<style>
@keyframes onpu-scroll-left {
from {
  transform: translateX(0);
}
 to {
  transform: translateX(-100%);
}
}
.scroll-onpu__wrap {
  display: flex;
  overflow: hidden;
}
.scroll-onpu__list {
  display: flex;
  list-style: none;
  padding: 0
}
.scroll-onpu__list--left {
  animation: onpu-scroll-left 20s infinite linear 0.5s both;
}
.scroll-onpu__item {
  width: calc(70vw / 6);
}
.scroll-onpu__item>img {
  width: 100%;
  height: 150px;
}
</style>
</head>
<body>
	<div class="mypage">
		<jsp:include page="mypageHeader.jsp"/>

        <c:if test="${not empty successMessage}">
    			<p>${successMessage}</p>
		</c:if>
		<c:if test="${not empty errorMessage}">
    			<p>${errorMessage}</p>
		</c:if>
        <div>
        <form:form modelAttribute="memberModel" method="post" action="editAccount">
        	<div class="scroll-onpu">
			<div class="scroll-onpu__wrap">
			<ul class="scroll-onpu__list scroll-onpu__list--left">
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    		</ul>

			<ul class="scroll-onpu__list scroll-onpu__list--left">
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    		</ul>
    		<ul class="scroll-onpu__list scroll-onpu__list--left">
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    		</ul>
    			</div>
    		</div>
    			<table cellpadding="15" align="center">
        		<!-- 会員IDはシステム側で使うため一旦コメントアウト
        		<tr>
            		<td><strong>会員No</strong></td>
            		<td><p>${memberId}</p></td>
        		</tr>
        		-->
        		<tr>
            		<td><strong>氏名</strong></td>
            		<td><form:input path="name" /></td>
        		</tr>
        		<tr>
            		<td><strong>郵便番号</strong></td>
            		<td><form:input path="zip" /></td>
        		</tr>
        		<tr>
            		<td><strong>住所</strong></td>
            		<td><form:input path="address" /></td>
        		</tr>
        		<tr>
            		<td><strong>電話番号</strong></td>
            		<td><form:input path="phone" /></td>
        		</tr>
        		<tr>
            		<td><strong>メールアドレス</strong></td>
            		<td><form:input path="mail" /></td>
        		</tr>
        		<tr>
            		<td><strong>生年月日</strong></td>
            		<td><form:input path="birthday" /></td>
        		</tr>
        		<tr>
            		<td><strong>クレジットカード</strong></td>
            		<td><form:input path="card" /></td>
        		</tr>
        		<tr>
            		<td><strong>加入中のプラン</strong></td>
            		<td>${memberModel.plan}</td>
        		</tr>
        		<tr>
                    <td><strong>現在のパスワード</strong></td>
                    <!--伏字っぽくしただけ  -->
                    <td>**********</td>
                </tr>
         		<tr>
            		<td><strong>新しいパスワード</strong></td>
            		<td><input type="password" name="password" /></td>
        		</tr>
                <!-- パスワードの確認用フィールドを追加 -->
                <tr>
                    <td><strong>新しいパスワードを再入力</strong></td>
                    <td><input type="password" name="confirmPassword" /></td>
                </tr>
    		</table>
    		</form:form>
    		<br>
    		<div class=selectbtn>
				<input type="submit" value="更新" class="btn">
			<!-- 退会フォーム -->
			<form method="post" action="deleteAccount">
    			<input type="submit" value="退会" class="btn">
			</form>
			</div>
       	<div class="scroll-onpu">
			<div class="scroll-onpu__wrap">
			<ul class="scroll-onpu__list scroll-onpu__list--left">
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    		</ul>

			<ul class="scroll-onpu__list scroll-onpu__list--left">
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    		</ul>
    		<ul class="scroll-onpu__list scroll-onpu__list--left">
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu1.png" width= "300"height= "auto"></li>
    			<li class="scroll-onpu__item"><img src="resources/image/onpu2.png" width= "300"height= "auto"></li>
    		</ul>
    			</div>
    		</div>
		<jsp:include page="footer.jsp"/>
    </div>
</body>
</html>