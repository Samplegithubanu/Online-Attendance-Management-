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
<p align="center" class="style1">Allotment</p>
<form id="form1" name="form1" method="post" action="">
  <table width="456" border="1" align="center">
    <tr>
      <td width="176">Select name </td>
      <td width="264"><select name="of1">
	  <% rst=stmt.executeQuery("select name from lecture");
	  while(rst.next()){
	  
	  %>
       
        <option><%= rst.getString(1) %></option>
		  <% } %> 
      </select>	    </td>
    </tr>
    <tr>
      <td>course to be handled </td>
      <td><select name="of2">
        <option>BCA</option>
        <option>BSC</option>
        <option>MCA</option>
                              </select></td>
    </tr>
    <tr>
      <td>sem</td>
      <td><select name="of3">
        <option>Isem</option>
        <option>IIsem</option>
        <option>IVsem</option>
        <option>IIIsem</option>
        <option>vsem</option>
        <option>VIsem</option>
            </select></td>
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
try{

String sem=request.getParameter("of3");
rst=stmt.executeQuery("select * from allotment where sem='"+sem+"' ");
if(rst.next()){
%>
<script> alert("This class has already  alloted so please select other sem");</script>
<%

}else{
int x=stmt.executeUpdate("insert into allotment values('"+request.getParameter("of1")+"','"+request.getParameter("of2")+"','"+request.getParameter("of3")+"')");


if(x!=0){

%>
<script> alert("lecture  alloted successfully");</script>
<%
}
}
}catch(Exception e){
%>
<script> alert("allocated already");</script>
<%

}

}



 %>
</body>
</html>
