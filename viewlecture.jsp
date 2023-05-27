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
<p align="center" class="style1">Lecture Details  </p>
<table width="999" border="1" align="center">
  <tr>
    <td width="165">designation</td>
    <td width="165"> Name </td>
    <td width="145">Qualification</td>
    <td width="150">phone</td>
    <td width="148">gender</td>
	 <td width="148">ID no </td>
  </tr>
  <% 
  rst=stmt.executeQuery("select * from lecture");
  while(rst.next()){
  
   %>
   <form action="" method="get">
  <tr>
    <td><input name="of1" type="text" value="<%= rst.getString(1)%>" readonly="true" /></td>
    <td><input name="of2" type="text" value="<%= rst.getString(2) %>" /></td>
    <td><input name="of3" type="text" value="<%= rst.getString(3) %>" /></td>
    <td><input name="of4" type="text" value="<%= rst.getString(4) %>" /></td>
	<td><input name="of5" type="text" value="<%= rst.getString(5) %>" /></td>
   	<td><input name="of6" type="text" value="<%= rst.getString(6) %>" /></td>
  </tr>
  </form>
  <% } %>
</table>
<p>&nbsp;</p>
<% 
if(request.getParameter("update")!=null){

int x=stmt.executeUpdate("update studentinfo set name='"+request.getParameter("of2")+"',address='"+request.getParameter("of3")+"',course='"+request.getParameter("of4")+"',sem='"+request.getParameter("of5")+"' where regno='"+request.getParameter("of1")+"'");

if(x!=0){
%>
<script> alert("Student data Updated successfully");</script>
<%
response.sendRedirect("editstudent.jsp");
}else{
%>
<script> alert("fail to add officer");</script>
<%
}
}
%>
<% 
if(request.getParameter("delete")!=null){

int x=stmt.executeUpdate("delete from studentinfo where regno='"+request.getParameter("of1")+"'");

if(x!=0){
%>
<script> alert("officer deleted successfully");</script>
<%
response.sendRedirect("editofficer.jsp");
}else{
%>
<script> alert("fail to delete officer");</script>
<%
}
}




 %>

</body>
</html>
