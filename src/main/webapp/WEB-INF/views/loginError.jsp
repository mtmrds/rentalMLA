<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<%-- ログインエラー画面 --%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>レンタルサイト エラー画面</title>
<!-- css要らないなら消してもいいのかも-->
<link href="css/shopping.css" rel="stylesheet" type="text/css" />
</head>
<body>
<h1>ログインエラー</h1>
        <p>入力されたユーザは存在しません...</p>
         <form>
         <!-- class=""の2箇所は仮-->
            <a class="common_button" href="./LoginServlet?submit=logout">戻る</a>
            </form>
</body>
</html>