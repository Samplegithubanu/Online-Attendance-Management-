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
<p align="center" class="style1">Add New Lecture </p>
<form id="form1" name="form1" method="post" action="">
  <table width="456" border="1" align="center">
    <tr>
      <td width="172">Designation</td>
      <td width="147"><select name="of1">
        <option>professor</option>
        <option>lecture</option>
        <option>assistant proffesor</option>
      </select>      </td>
    </tr>
	<tr>
      <td width="172">Name</td>
      <td width="147"><input name="of2" type="text" id="of2" />      </td>
    </tr>
    <tr>
      <td>Qualification</td>
      <td><input name="of3" type="text" id="of3" /></td>
    </tr>
    <tr>
      <td>phone</td>
      <td><input name="of4" type="text" id="of4" /></td>
    </tr>
    <tr>
      <td>gender</td>
      <td><input name="of5" type="radio" value="male" />
        male
        <input name="of5" type="radio" value="female" />
        female</td>
    </tr>
    <tr>
      <td>username</td>
      <td><input name="of6" type="text" id="of6" /></td>
    </tr>
    <tr>
      <td>password</td>
      <td><input name="of7" type="text" id="of7" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Submit" />
      <input type="reset" name="Submit2" value="Reset" /></td>
    </tr>
  </table>
</form>
<% 
if(request.getParameter("Submit")!=null){

int x=stmt.executeUpdate("insert into lecture(designation,name,Qualification,phone,gender,username,password) values('"+request.getParameter("of1")+"','"+request.getParameter("of2")+"','"+request.getParameter("of3")+"','"+request.getParameter("of4")+"','"+request.getParameter("of5")+"','"+request.getParameter("of6")+"','"+request.getParameter("of7")+"')");


if(x!=0){
%>
<script> alert("lecture  added successfully");</script>
<%
}else{
%>
<script> alert("fail to add lecture");</script>
<%
}
}




 %>
</body>
</html>
