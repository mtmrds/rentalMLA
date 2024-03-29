<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- プラン変更 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>プラン変更</title>
	</head>
	<style>
	body{
		background-image:url(resources/image/pink.jpg);
		font-family: 'Kaisei Decol', serif;
		font-family: 'Monomaniac One', sans-serif;
	}
	</style>
<body>
	<jsp:include page="header.jsp"/>
	<h1>☆プラン変更画面☆</h1>
	<tr>
		<td>加入プラン選択</td>
		<td>
			<form:radiobutton path="plan"  label="Bronzeプラン" value="bronze" checked="true" />
			<small>
					月額：1080円	上限レンタル枚数：6枚/月
			</small><br>
			<form:radiobutton path="plan"  label="Silverプラン" value="silver" />
			<small>
					月額：2160円	上限レンタル枚数：12枚/月
			</small><br>
			<form:radiobutton path="plan"  label="Goldプラン" value="gold"  />
			<small>
					月額：5400円	上限レンタル枚数：無制限/月
			</small><br>
			<form:errors path="plan" element="span" cssClass="errors"/>
		</td>
	</tr>
	<tr>
		<td><input type="submit" value="登録する"></td>
	</tr>

	<jsp:include page="footer.jsp" />

</body>
</html>