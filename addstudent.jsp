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
<p align="center" class="style1">Add New Student </p>
<form id="form1" name="form1" method="post" action="">
  <table width="456" border="1" align="center">
    <tr>
      <td width="172"><div align="right">Reg NO </div></td>
      <td width="147"><input name="of1" type="text" id="of1" />      </td>
    </tr>
	<tr>
      <td width="172"><div align="right">Name</div></td>
      <td width="147"><input name="of2" type="text" id="of2" />      </td>
    </tr>
    <tr>
      <td><div align="right">Address</div></td>
      <td><input name="of3" type="text" id="of3" /></td>
    </tr>
    <tr>
      <td><div align="right">Course</div></td>
      <td>
        <select name="of4">
          <option>MCA</option>
          <option>BCA</option>
          
        </select></td>
    </tr>
    <tr>
      <td><div align="right">Sem</div></td>
      <td>
        <select name="of5">
          <option>Isem</option>
          <option>IIsem</option>
          <option>IIIsem</option>
          <option>IVsem</option>
          <option>Vsem</option>
          <option>VIsem</option>
        </select>      </td>
    </tr>
    <tr>
      <td><div align="right"></div></td>
      <td><input type="submit" name="Submit" value="Submit" />
      <input type="reset" name="Submit2" value="Reset" /></td>
    </tr>
  </table>
</form>
<% 
if(request.getParameter("Submit")!=null){

int x=stmt.executeUpdate("insert into studentinfo values('"+request.getParameter("of1")+"','"+request.getParameter("of2")+"','"+request.getParameter("of3")+"','"+request.getParameter("of4")+"','"+request.getParameter("of5")+"')");


if(x!=0){
%>
<script> alert("Student  added successfully");</script>
<%
}else{
%>
<script> alert("fail to add officer");</script>
<%
}
}




 %>
</body>
</html>
