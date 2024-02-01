<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<!-- 文字フォント -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kaisei+Decol&family=Monomaniac+One&display=swap" rel="stylesheet">

<meta charset="UTF-8">
<title>決済確認画面</title>
<style>
<!-- 背景画像、文字フォント -->
body{
	background-image:url(resources/image/pink.jpg);
	font-family: 'Kaisei Decol', serif;
	font-family: 'Monomaniac One', sans-serif;
}
</style>
</head>

<body>
	<jsp:include page="header.jsp"/>
		<main>
		<h1>決済確認画面</h1>
	<form:form modelAttribute="MemberModel">
	<table>
		<!-- タイトルと商品画像 -->
		<tr>
			<td><%=cart.item[index]%></td>
			<td>
				<img src="img/<%=cart.image[index] %>"
				alt="<%=cart.item[index] %>">
			</td>
		</tr>


		<!-- カート内の最終確認 -->
		String message;
		if(cart != null && !cart.isEmpty()){
			int total = 0;
			for(String itemName : cart){
				int index = Integer.parseInt(itemName);
				total += cart.item[index];
		}
		message = "合計：<strong>" + total + "点" + "</strong>になります";
		}else{
			message = "カートに商品が入っていません";
			}
			request.setAttribute("message",message);

			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/cartcontent.jsp");
			dispatcher.forward(request,response);
			}


		<p>
			<a colspan="2" style="text-align:center;">
				<input type="submit" value="決済"/>
			</a>
		</p>



	</table>
</form:form>




</main>
    <jsp:include page="footer.jsp"/>
</body>
</html>