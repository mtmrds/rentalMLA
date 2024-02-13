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
	<div class="mypage">
		<jsp:include page="mypageHeader.jsp"/>
		<div>
            <p class="mypagetitle">☆マイページ☆</p>
        </div>
        <c:if test="${not empty successMessage}">
    			<p>${successMessage}</p>
		</c:if>
		<c:if test="${not empty errorMessage}">
    			<p>${errorMessage}</p>
		</c:if>
        <div>
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
    		</form:form>
    		<br>
    		<div class=selectbtn>
				<input type="submit" value="更新" class="btn">
			<!-- 退会フォーム -->
			<form method="post" action="deleteAccount">
    			<input type="submit" value="退会" class="btn">
			</form>
			</div>

		<jsp:include page="footer.jsp"/>
    </div>
</body>
</html>