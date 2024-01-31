<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>決済確認画面</title>
<form:form modelAttribute="MemberModel">
	<table>
		<tr>
			<td><%=cart.item[index]%></td>
			<td>
				<img src="img/<%=cart.image[index] %>"
				alt="<%=cart.item[index] %>">
			</td>


		</tr>
		String message;
		if(cart != null && !cart.isEmpty()){
			int total = 0;
			for(String itemName : cart){
				int index = Integer.parseInt(itemName);
				total += cart.item[index];
		}
		message = "合計：" + "点" + "</string>になります";
		}else{
			message = "カートに商品が入っていません";
			}
			request.setAttribute("message",message);

			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/cartcontent.jsp");
			dispatcher.forward(request,response);
			}

		<tr>
			<td colspan="2" style="text-align:center;">
				<input type="submit" value="決済"/>
			</td>
		</tr>


	</table>
</form:form>



<style>
</style>
</head>
<body>
	<h1>決済確認画面</h1>

</body>
</html>