<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>プラン変更</title>
</head>
<body>
	<h1>プラン変更画面</h1>
	<tr>
		<td>加入プラン選択</td>
		<td>
			<from:radiobutton path="plan"  label="Bronzeプラン" value="bronze" checked="true" />
			<from:radiobutton path="plan"  label="Silverプラン" value="silver" />
			<from:radiobutton path="plan"  label="Goldプラン" value="gold"  />
			<form:errors path="plan" element="span" cssClass="errors"/>
		</td>
	</tr>
	<tr>
		<td><input type="submit" value="登録する"></td>
	</tr>

	<jsp:include page="footer.jsp" />

</body>
</html>