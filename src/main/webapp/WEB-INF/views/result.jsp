  <%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%-- 購入結果画面 --%>
<!DOCTYPE html>
<html>
<head>
<!-- 文字フォント -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kaisei+Decol&family=Monomaniac+One&display=swap" rel="stylesheet">

  <title>レンタルサイト 購入結果</title>
  <link href="css/shopping.css" rel="stylesheet" type="text/css" />
</head>
<style>
	body {
		<!-- 背景画像、文字フォント -->
		background-image:url(resources/image/pink.jpg);
		font-family: 'Kaisei Decol', serif;
		font-family: 'Monomaniac One', sans-serif;
	}
</style>
<body>
<jsp:include page="header.jsp"/>
  <h1>購入結果</h1>
  <p>レンタルが完了しました。<img src="img/Thankyou.jpg" width="100" height="100"/></p>
  <form action="./ShoppingServlet" method="post">
      <input class="common_button" type="submit" value="一覧に戻る">
  </form>
  <jsp:include page="footer.jsp"/>
</body>
</html>