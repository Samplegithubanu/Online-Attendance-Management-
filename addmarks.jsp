<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
html{
height:100%;

}
body{
background-image:linear-gradient(grey,white);


}
.style1 {
	color: #FFFF00;
	font-weight: bold;
}
body,td,th {
	color: #000000;
}
-->
</style>
</head>

<body>
<p>
 
  <%@ include file="db.jsp" %>
</p>
<p align="center" class="style1">Add  Student Marks </p>
<form id="form1" name="form1" method="post" action="">
  <table width="456" border="1" align="center">
    <tr>
      <td width="172"><div align="right">Reg NO </div></td>
      <td width="147"><input name="r1" type="text" id="r1" />      </td>
    </tr>
	<tr>
      <td width="172"><div align="right">Sem</div></td>
      <td width="147"><select name="r2">
       <%
	   String s1=(String)session.getAttribute("user");
	    rst=stmt.executeQuery("select sem from allotment where name='"+s1+"'"); 
	   if(rst.next()){
	   %>
        
		<option><%= rst.getString(1) %></option>
        <% } %>
      </select>      </td>
    </tr>
	<tr>
      <td width="172"><div align="right">sub1</div></td>
      <td width="147"><input name="m1" type="text" id="m1" />      </td>
    </tr>
    <tr>
      <td><div align="right">Sub2</div></td>
      <td><input name="m2" type="text" id="m2" /></td>
    </tr>
    <tr>
      <td><div align="right">Sub3</div></td>
      <td><input name="m3" type="text" id="m3" /></td>
    </tr>
    <tr>
      <td><div align="right">sub4</div></td>
      <td><input name="m4" type="text" id="m4" /></td>
    </tr>
    <tr>
      <td><div align="right">Sub5</div></td>
      <td><input name="m5" type="text" id="m5" /></td>
    </tr>
    <tr>
      <td><div align="right">Sub6</div></td>
      <td><input name="m6" type="text" id="m6" /></td>
    </tr>
    <tr>
      <td><div align="right">Remarks</div></td>
      <td><textarea name="m7" cols="30" rows="5" id="m7"></textarea></td>
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

int x=stmt.executeUpdate("insert into marks values('"+request.getParameter("r1")+"','"+request.getParameter("r2")+"','"+request.getParameter("m1")+"','"+request.getParameter("m2")+"','"+request.getParameter("m3")+"','"+request.getParameter("m4")+"','"+request.getParameter("m5")+"','"+request.getParameter("m6")+"','"+request.getParameter("m7")+"')");


if(x!=0){
%>
<script> alert("Student Marks  added successfully");</script>
<%
}else{
%>
<script> alert("fail to add marks");</script>
<%
}
}




 %>
</body>
</html>
