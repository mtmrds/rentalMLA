<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カート内</title>
</head>
<body>
    <jsp:include page="header.jsp"/>
            <main>

            	<form method="POST" action="payment">
            		<input type="submit" value="確認する">
				</form>
            </div>
        </main>
    <jsp:include page="footer.jsp"/>
</body>
</html>
