<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href=style.css>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<title><%=request.getParameter("bookName") %></title>
<script> 
$(function(){
  $("#header").load("header.html");
});
</script> 
</head>
<body>
<div id="header"></div>
<div class="imgContainer">
<c:set var="imgPath" value="${param.bookImage}" />
<img src="${imgPath}">
<p class="imgText"><%=request.getParameter("bookName") %></br>
by <span style="color:blue"><%=request.getParameter("author") %></span></p>
<button class="btn">Add to Cart</button>
</div>
</body>
</html>