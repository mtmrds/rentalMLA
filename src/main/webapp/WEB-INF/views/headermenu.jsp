<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<header>
    <form:form modelAttribute="memberModel">

        <!-- 各種ページへのリンク -->
        <div class="linkpage">
            <!-- ログインしている場合のみ表示 -->
            <c:if test="${!empty loginModel}">
                <a href="cart" class="btn-img">
                    <img src="resources/image/カート.png" width="60" height="auto">カート</a>

                <a href="b" class="btn-img">
                    <img src="resources/image/メモのアイコン3.png" width="50" height="auto">レンタル履歴・返却</a>
            </c:if>
        </div>

        <!--ログイン後だけ表示できる-->
        <div class="loginname">
            <p>
                <c:if test="${!empty loginModel}">
                    <p>ようこそ、${loginModel.name}さん</p>
                    <p><a href="logout">ログアウト</a></p>
                </c:if>
            </p>
        </div>
    </form:form>
</header>
</html>