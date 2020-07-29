<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String name = request.getParameter("name");
%>

<!DOCTYPE html>
<html>
<head>
<title><%= name %></title>
</head>
<body>
<center>
<h2>ようこそ</h2>
<%= name%>
さん、いらっしゃいませ。<br/>
</center>
</body>
</html>
