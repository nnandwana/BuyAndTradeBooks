<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="books.bean.Books" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BuyAndReturnBooks</title>
<link rel="stylesheet" type="text/css" href=style.css>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script> 
$(function(){
  $("#header").load("header.html");
});
</script> 
</head>
<body>
<div id="header"></div>
<c:forEach var="bookList" items="${bookList}">
<div class="imgContainer">
<a href="bookaddtocart.jsp?bookName=${bookList.getBookName()}&bookPrice=${bookList.getBookPrice()}&bookImage=${bookList.getImg_path()}&author=${bookList.getAuthor()}"><img src="${bookList.getImg_path()}"></a>
<p><a href="bookaddtocart.jsp?bookName=${bookList.getBookName()}&bookPrice=${bookList.getBookPrice()}&bookImage=${bookList.getImg_path()}&author=${bookList.getAuthor()}">${bookList.getBookName()}</a></p>
<p>$${bookList.getBookPrice()}</p>
</div>
</c:forEach>
</body>
</html>