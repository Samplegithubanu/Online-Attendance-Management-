<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	color: #FFFF00;
	font-weight: bold;
}
body,td,th {
	color: #CCCCCC;
}
body {
	background-image:linear-gradient(grey,white);
}
-->
</style>
</head>

<body>
<p>

  <%@ include file="db.jsp" %>
</p>
<p align="center" class="style1">Satudent  Details  </p>
<form id="form1" name="form1" method="post" action="">
  <div align="center">choose class to view details 
    <select name="s1">
	<% rst=stmt.executeQuery("select distinct course from studentinfo");
	while(rst.next()){ %>
      <option><%= rst.getString(1) %></option>
	  <% } %>
      </select>  
    <input type="submit" name="Submit" value="Submit" />
  </div>
</form>
<% if(request.getParameter("Submit")!=null){ %>

<p align="center" class="style1">&nbsp;</p>
<table width="807" border="1" align="center">
  <tr>
    <td width="165">Reg no </td>
    <td width="165">Student name </td>
    <td width="145">Address</td>
    <td width="150">Course</td>
    <td width="148">Sem</td>
  </tr>
  <% 
  rst=stmt.executeQuery("select * from studentinfo where course='"+request.getParameter("s1")+"'");
  while(rst.next()){
  
   %>
   <form action="" method="get">
  <tr>
    <td><input name="of1" type="text" value="<%= rst.getString(1)%>" readonly="true" /></td>
    <td><input name="of2" type="text" value="<%= rst.getString(2) %>"  readonly="true"/></td>
    <td><input name="of3" type="text" value="<%= rst.getString(3) %>" readonly="true"/></td>
    <td><input name="of4" type="text" value="<%= rst.getString(4) %>"readonly="true" /></td>
	<td><input name="of5" type="text" value="<%= rst.getString(5) %>" readonly="true"/></td>
    </tr>
  </form>
  <% } %>
</table>

<% } %>


</body>
</html>
