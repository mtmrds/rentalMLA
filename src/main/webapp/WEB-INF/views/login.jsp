<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- ログイン画面 -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Music Life Agency</title>
<style>
@keyframes infinity-scroll-left {
from {
  transform: translateX(0);
}
 to {
  transform: translateX(-100%);
}
}
.scroll-infinity__wrap {
  display: flex;
  overflow: hidden;
}
.scroll-infinity__list {
  display: flex;
  list-style: none;
  padding: 0
}
.scroll-infinity__list--left {
  animation: infinity-scroll-left 20s infinite linear 0.5s both;
}
.scroll-infinity__item {
  width: calc(70vw / 6);
}
.scroll-infinity__item>img {
  width: 100%;
  height: 150px;
}
</style>
</head>

<body>
<div class="loginpage">
<jsp:include page="header.jsp"/>
<form:form modelAttribute="loginModel" >

<div class="scroll-infinity">
	<div class="scroll-infinity__wrap">
		<ul class="scroll-infinity__list scroll-infinity__list--left">
		  	<li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		</ul>
		<ul class="scroll-infinity__list scroll-infinity__list--left">
		  	<li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif"  /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		</ul>
		<ul class="scroll-infinity__list scroll-infinity__list--left">
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif"  /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
		</ul>
	</div>
</div>
			<table cellpadding="15" align="center">
				<tr>
					<td colspan="2" align="center">
						<h2>ログイン</h2>
					</td>
				<tr>
					<td>
						<h3>メールアドレス:</h3>
					</td>
					<td>
						<form:input path="mail"/>
						<form:errors path="mail" element="div" cssClass="error" />
					</td>
				</tr>
				<tr>
					<td>
						<h3>パスワード:</h3>
					</td>
					<td>
						<form:password path="password" />
						<form:errors path="password" element="div" cssClass="errors"/>
					</td>
				</tr>
				<tr>

					<td class="btn-5"colspan="2" align="center">
						<input type="submit" value="ログイン" class="btn">
					</td>

				</tr>

				</table>

<div class="scroll-infinity">
	<div class="scroll-infinity__wrap">
	  <ul class="scroll-infinity__list scroll-infinity__list--left">
	  	<li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	  </ul>
	  <ul class="scroll-infinity__list scroll-infinity__list--left">
	  	<li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif"  /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	  </ul>
	  <ul class="scroll-infinity__list scroll-infinity__list--left">
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif"  /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	    <li class="scroll-infinity__item"><img src="resources/image/ケーキ.gif" /></li>
	  </ul>
	</div>
</div>


			</form:form>
			<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>