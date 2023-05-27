<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	color: #FFFF00;
	font-weight: bold;
}
body,td,th {
	color: #000066;
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
  
  <% String user=(String)session.getAttribute("user");
  		String sem=(String)session.getAttribute("sem");
		String course=(String)session.getAttribute("course");
  
   %>
</p>
<p align="center" class="style1">Attendance</p>
<form id="form1" name="form1" method="post" action="">
  <table width="408" border="1" align="center">

    <tr>
      <td width="208">Lecture name </td>
      <td width="184"><input type="text" name="f1" value="<%= user %>" /></td>
    </tr>
    <tr>
      <td>Alloted Class</td>
      <td><input type="text" name="f2"   value="<%=  course%>" /></td>
    </tr>
	<tr>
      <td>sem</td>
      <td><input type="text" name="f3"  value="<%=   sem %>" /></td>
    </tr>

	

	
    <tr>
      <td>Select Student </td>
      <td><select name="f4">
	  <%
	
rst=stmt.executeQuery("select s.regno from studentinfo s, allotment a  where a.name='"+user+"' and s.sem='"+sem+"' ");


	   while(rst.next()){ %>
	  <option><%= rst.getString(1) %></option>
	  <% } %>
      </select>      </td>
    </tr>
    <tr>
      <td>Total number of working days </td>
      <td><input name="f5" type="text" value="100" readonly="true" /></td>
    </tr>
    <tr>
      <td>Total number of class attended </td>
      <td><input type="text" name="f6" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Submit" /></td>
    </tr>
  </table>
</form>
<p>
  <% 

if(request.getParameter("Submit")!=null){
try{
String f1=request.getParameter("f1");
String f2=request.getParameter("f2");
String f3=request.getParameter("f3");
String f4=request.getParameter("f4");
int f5=Integer.parseInt(request.getParameter("f5"));
int f6=Integer.parseInt(request.getParameter("f6"));
int x=stmt.executeUpdate("insert into attendence values('"+f1+"','"+f2+"','"+f3+"','"+f4+"',"+f5+","+f6+")");


if(x!=0){

%>
    <script> alert("attendence  alloted successfully");</script>
  <%
}

}catch(Exception e){
out.print(e);
%>
    <script> alert(" attendence allocated already");</script>
  <%

}

}



 %>
</p>
<p>&nbsp;</p>
<table width="1065" border="1" align="center">
  <tr>
    <td><strong>Course</strong></td>
    <td><strong>Sem</strong></td>
    <td><strong>Student Reg No </strong></td>
    <td><strong>Total Working days </strong></td>
    <td><strong>attdance</strong></td>
    <td><strong>Percentage</strong></td>
	 <td><strong>Eligibility</strong></td>
  </tr>
  <% 
  rst=stmt.executeQuery("select course,sem,regno,totaldays,attendeddays,(attendeddays/totaldays)*100 as percentage,if(((attendeddays/totaldays)*100)>75,'eligible','not eligible') as Eligibility from attendence ") ;
  while(rst.next()){
   %>
  <tr>
    <td><%= rst.getString(1)%></td>
    <td><%= rst.getString(2)%></td>
    <td><%= rst.getString(3)%></td>
    <td><%= rst.getString(4)%></td>
    <td><%= rst.getString(5)%></td>
    <td><%= rst.getString(6)%></td>
	 <td><%= rst.getString(7)%></td>
  </tr>
  <% } %>
</table>
<p>&nbsp;</p>
</body>
</html>
