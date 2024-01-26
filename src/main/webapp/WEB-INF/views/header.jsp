<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%-- header --%>
<header>
    <%-- ログイン済みの場合は名前を表示 --%>
    <p>
       <c:out value="${memberModel.name}"/>さん

        <%-- Getのクエリで購入履歴かログアウトか判断させる --%>

        <a href="menue">メニュー</a>

        <jsp:include page="footer.jsp" />　

    </p>
</header>