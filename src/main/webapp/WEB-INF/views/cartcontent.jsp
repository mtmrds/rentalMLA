<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カート内</title>
<style>
td{
text-align:center:
}
</style>
</head>
<body>

	<div id ="wapper">
	<jsp:include page="header.jsp"></jsp:include>

		<h1>カート内一覧</h1>

		<hr size="1">

	</div>

            <main>

            	<form method="POST" action="cart">
            		<input type="submit" value="確認する">
				</form>

        </main>
    <jsp:include page="footer.jsp"/>

</body>
</html>
