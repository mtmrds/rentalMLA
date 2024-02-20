<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- マイページ -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>マイページ</title>
</head>
	<body>
		<div class="page">
			<jsp:include page="header.jsp"/>
        	<c:if test="${not empty successMessage}">
    			<p>${successMessage}</p>
			</c:if>
			<c:if test="${not empty errorMessage}">
    			<p>${errorMessage}</p>
			</c:if>
        	<div>
        		<div class="scroll-onpu">
					<div class="scroll-onpu__wrap">
						<jsp:include page="logingif.jsp"/>
						<jsp:include page="logingif.jsp"/>
						<jsp:include page="logingif.jsp"/>
    				</div>
    			</div>
				<div class="center">
    				<h1>マイページ</h1>
    				<form:form modelAttribute="memberModel" method="post" action="editAccount">
    					<table border="1">
	        				<tr>
	           					<td align="center"><strong>氏名</strong></td>
	           					<td colspan="4"><form:input path="name" /></td>
	        				</tr>
	        				<tr>
	          					<td align="center"><strong>郵便番号</strong></td>
	           					<td colspan="4"><form:input path="zip" /></td>
	        				</tr>
	        				<tr>
	           					<td align="center"><strong>住所</strong></td>
	           					<td colspan="4"><form:input path="address" /></td>
	        				</tr>
	        				<tr>
	           					<td align="center"><strong>電話番号</strong></td>
	           					<td colspan="4"><form:input path="phone" /></td>
	        				</tr>
	        				<tr>
	           					<td align="center"><strong>メールアドレス</strong></td>
	           					<td colspan="4"><form:input path="mail" /></td>
	        				</tr>
	        				<tr>
	           					<td align="center"><strong>生年月日</strong></td>
	           					<td colspan="4"><form:input path="birthday" /></td>
	        				</tr>
	        				<tr>
	           					<td align="center"><strong>クレジットカード</strong></td>
	           					<td colspan="4">
	           						<img src="resources/cardbrand/visa.png" height="50px" width="70px"/>
									<img src="resources/cardbrand/master.png" height="50px" width="70px" />
									<img src="resources/cardbrand/jcb.png" height="50px" width="70px" />
									<img src="resources/cardbrand/amex.png" height="50px" width="70px" />
									<br>
									<form:input path="card" />
	           					</td>
	        				</tr>
	        				<tr>
	           					<td align="center"><strong>加入中のプラン</strong>
	           					<br>${memberModel.plan}</td>
	           					<td style="border-right: none;">
							<form:radiobutton path="plan" label="お試しプラン" value="お試しプラン" checked="checked" />
							<br><br>
							初月限定！<br>
							月額324円<br>
							2枚/月
							</td>
							<td style="border-right: none;">
							<form:radiobutton path="plan" label="Bronzeプラン" value="Bronzeプラン" />
							<br><br>
							月額1080円<br>
							6枚/月
							</td>
							<td style="border-right: none;">
							<form:radiobutton path="plan" label="Silverプラン" value="Silverプラン" />
							<br><br>
							月額2160円<br>
							6枚/月
							</td>
							<td>
							<form:radiobutton path="plan" label="Goldプラン" value="Goldプラン" />
							<br><br>
							月額5400円<br>
							無制限<br>
							</td>
	        				</tr>
	        				<tr>
	               				<td align="center"><strong>現在のパスワード</strong></td>
	                   			<!--伏字っぽくしただけ  -->
	                   			<td colspan="4">**********</td>
	               			</tr>
	        				<tr>
	           					<td align="center"><strong>新しいパスワード</strong></td>
	           					<td colspan="4"><input type="password" name="password" /></td>
	        				</tr>
	               			<!-- パスワードの確認用フィールドを追加 -->
	               			<tr>
	                   			<td align="center"><strong>新しいパスワードを再入力</strong></td>
	                   			<td colspan="4"><input type="password" name="confirmPassword" /></td>
	               			</tr>
    					</table>
    					<br>
							<input type="submit" value="更新" class="btn-b">
					</form:form>
					<br>
				<!-- 退会フォーム -->
					<form method="post" action="deleteAccount">
    				<input type="submit" value="退会" class="btn-b">
					</form>

				</div>
			</div>
       		<div class="scroll-onpu">
				<div class="scroll-onpu__wrap">
					<jsp:include page="logingif.jsp"/>
					<jsp:include page="logingif.jsp"/>
					<jsp:include page="logingif.jsp"/>
				</div>
    		</div>
			<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>