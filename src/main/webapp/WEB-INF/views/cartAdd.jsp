<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- カート -->
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>カートに入れるか選択</title>
<style>
body{
	background-image:url(resources/image/pink.jpg);
	font-family: 'Yomogi', cursive;
}

*,
*:before,
*:after {
  -webkit-box-sizing: inherit;
  box-sizing: inherit;
}

html {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  font-size: 62.5%;
}

.btn,
a.btn,
button.btn {
  font-size: 1.6rem;
  font-weight: 700;
  line-height: 1.5;
  position: relative;
  display: inline-block;
  padding: 1rem 4rem;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
  text-align: center;
  vertical-align: middle;
  text-decoration: none;
  letter-spacing: 0.1em;
  color: #212529;
  border-radius: 0.5rem;
}

a.btn-tag {
  padding: 1.25rem 3rem 1.25rem 80px;
  color: #fff;
  background: #f39800;
}

a.btn-tag:before {
  position: absolute;
  top: 0;
  left: 0;

  width: 50px;
  height: 100%;

  content: "";

  border-radius: 0.5rem 0 0 0.5rem;
  background: rgba(0, 0, 0, 0.07);
}

a.btn-tag:hover {
  color: #fff;
  background: #ffa50e;
}

a.btn-tag i {
  font-size: 120%;

  position: absolute;
  top: 0;
  left: 0;

  width: 50px;
  padding: 1.5rem 0;

  text-align: center;
  letter-spacing: 0;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<h1>カートに商品を入れますか？</h1>
	<form:form modelAttribute="itemModel">
    			<table>
        			<tr>
        				<td>${pickItem.itemNo }</td>
         				<td>${pickItem.title }</td>
         				<td>${pickItem.type }</td>
         				<td>${pickItem.category }</td>
        			</tr>
        		</table>
        		<p><input type="submit" value="カートIN"  class="btn btn-tag" ></p>


    </form:form>
	<!-- 下記は直飛びなので、商品情報が入らない -->

	<p><a href="<c:url value='search' />">検索画面に戻る</a></p>
	<p><a href="<c:url value='top' />">トップに戻る</a></p>
	<jsp:include page="footer.jsp"/>
</body>
</html>