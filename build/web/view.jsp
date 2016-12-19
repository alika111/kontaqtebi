
<%-- 
    Document   : view
    Created on : Dec 19, 2016, 3:05:43 AM
    Author     : alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html>
<body>
  <table border="1" width="30%" height="30%">
  <tr><th><font color='Black'>ID</font></th><th><font color='Black'>NAME</font></th><th><font color='Black'>PHONE</font></th></tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/contacts", "root", "");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from contact");
  while(rs.next())
  {
      int ID=rs.getInt("idContact");
      String NAME=rs.getString("Name");
      int PHONE=rs.getInt("Phone");
  %>
<tr>
<td><b><font color='#663300'><%=ID%></font></b></td>
<td><b><font color='#663300'><%=NAME%></font></b></td>
<td><b><font color='#663300'><%=PHONE%></font></b></td>
</tr>
<%
  }
 %>
 </table>
     </body>
</html>
