<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- ログイン画面 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Music Life Agency</title>
	</head>
	<body>
		<div class="page">
			<jsp:include page="header.jsp"/>
				<form:form modelAttribute="loginModel" >
					<div class="scroll-infinity">
						<div class="scroll-infinity__wrap">
							<jsp:include page="logingif.jsp"/>
							<jsp:include page="logingif.jsp"/>
							<jsp:include page="logingif.jsp"/>
						</div>
					</div>
					<table class="logintable" cellpadding="15" align="center">
						<tr>
							<td colspan="2" align="center">
							<h2>ログイン</h2>
							</td>
						</tr>
						<tr>
							<td>
							<h3>メールアドレス:</h3>
							</td>
							<td>
							<form:input path="mail"/>
							<form:errors path="mail" element="div" cssClass="error" />
							</td>
						</tr>
						<tr>
							<td>
							<h3>パスワード:</h3>
							</td>
							<td>
								<form:password path="password" />
								<form:errors path="password" element="div" cssClass="errors"/>
							</td>
						</tr>
						<tr>
							<td class="btn-5"colspan="2" align="center">
								<input type="submit" value="ログイン" class="btn-b">
							</td>
						</tr>
					</table>
					<div class="scroll-infinity">
						<div class="scroll-infinity__wrap">
							<jsp:include page="logingif.jsp"/>
							<jsp:include page="logingif.jsp"/>
							<jsp:include page="logingif.jsp"/>
						</div>
					</div>
				</form:form>
			<jsp:include page="footer.jsp"/>
		</div>
	</body>
</html>