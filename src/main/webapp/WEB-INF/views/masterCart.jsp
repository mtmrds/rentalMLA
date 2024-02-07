<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>店長用カート（在庫管理）</title>
</head>
<body>
	<h1>発注しますか？（表現変えるかも）</h1>
		<form:form modelAttribute="itemModel">
			<table>
				<tr>
        			<td>${pickItem.itemNo }</td>
         			<td>${pickItem.title }</td>
         			<td>${pickItem.type }</td>
         			<td>${pickItem.category }</td>
        		</tr>
        	</table>
        	<p><input type="submit" value="発注" ></p>
    	</form:form>
		<p><a href="<c:url value='master' />">検索画面に戻る（マスター管理へ戻す。表現変えるかも）</a></p>
		<p><a href="<c:url value='master' />">tenchoEmp.jspに戻る(仮です。表現変えるかも)</a></p>
</body>
</html>