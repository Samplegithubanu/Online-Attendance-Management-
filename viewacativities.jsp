<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body,td,th {
	color: #000099;
}
.style3 {color: #000000; font-weight: bold; }
-->

body {
background-image:linear-gradient(grey,white);
}
</style></head>

<body>


  
  <%@ include file="db.jsp" %>
   <% 
 
 rst=stmt.executeQuery("select * from activity  ");
while(rst.next()){
  %>
  <form action="" method="get">
    <table width="456" border="1" align="center" bordercolor="#000000" bgcolor="#666666">
      <tr>
        <td width="172"><div align="right"><strong>Course</strong></div></td>
        <td width="147" bgcolor="#FFFFFF">
          <input type="text" name="s1"  value="<%= rst.getString(2) %>"/>
        </span></td>
      </tr>
      <tr>
        <td><div align="right"><strong>sem</strong></div></td>
        <td bgcolor="#FFFFFF"><input type="text" name="s2"  value="<%= rst.getString(3) %>"/></td>
      </tr>
      <tr>
        <td><div align="right"><strong>Acivity</strong></div></td>
        <td bgcolor="#FFFFFF"><span class="style3">
          <textarea name="s3" cols="30" rows="5"><%= rst.getString(3) %></textarea>
        </span></td>
      </tr>
      <tr>
        <td><div align="right"><strong>Assaignement date </strong></div></td>
        <td bgcolor="#FFFFFF"><span class="style3">
          <input type="text" name="s4" value="<%= rst.getString(4) %>" />
        </span></td>
      </tr>
      <tr>
        <td><div align="right"><strong>Submission date </strong></div></td>
        <td bgcolor="#FFFFFF"><span class="style3">
          <input type="text" name="s5" value="<%= rst.getString(5) %>" />
        </span></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td bgcolor="#FFFFFF"><input type="submit" name="Submit" value="Submit" /></td>
      </tr>
      <tr> </tr>
    </table>
  </form>
 
 
 <% }

  %>
  
  
  <% 
if(request.getParameter("Submit")!=null){

int x=stmt.executeUpdate("insert into activity values('"+request.getParameter("s1")+"','"+request.getParameter("s2")+"','"+request.getParameter("s3")+"','"+request.getParameter("s4")+"','"+request.getParameter("s5")+"')");


if(x!=0){
%>
<script> alert("Activity  added successfully");</script>
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
