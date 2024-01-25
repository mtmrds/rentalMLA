<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%-- header --%>
<header>
    <%-- ログイン済みの場合は名前を表示 --%>
    <p>
        <jsp:getProperty name=" " property="name" />さん

        <%-- Getのクエリで購入履歴かログアウトか判断させる --%>
<<<<<<< HEAD
        <a href="     ">メニュー</a>

        <jsp:include page="footer.jsp" />
=======
        <a href="       ">メニュー</a>
>>>>>>> branch 'main' of git@github.com:mtmrds/rentalMLA.git
    </p>
</header>