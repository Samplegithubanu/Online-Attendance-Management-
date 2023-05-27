<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
	<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Guru current Date</title>
</head>
<body>

<% SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); %>

<% String newdate=(new java.util.Date()).toLocaleString(); %>
Today's date: <%= (new java.util.Date()).toLocaleString()%>

<% String dates=formatter.format(newdate);

out.print(dates);
 %>
</body>
</html>