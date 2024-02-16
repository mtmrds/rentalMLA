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
 <!--下記は現在の情報表示と更新する際の入力フォーム。form:formの閉じタグの位置は変更NG（更新ができなくなる）-->
    				<form:form modelAttribute="memberModel" method="post" action="editAccount">
    					<table border="1">
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