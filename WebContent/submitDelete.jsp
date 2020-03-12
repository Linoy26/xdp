<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Deleting the config details</title>
</head>
<body>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import="java.util.*" %>
<%
String Environments = request.getParameter("Environments");
String databasenames = request.getParameter("databasenames");
String tablename = request.getParameter("tablename");
String sourcename = request.getParameter("sourcename");
String prefixname = request.getParameter("prefixname");

System.out.println("Environments  ->" + Environments);
System.out.println("databasenames ->" + databasenames);
System.out.println("tablename ->" + tablename);
System.out.println("sourcename ->" + sourcename);
System.out.println("prefixname ->" + prefixname);

try
{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+databasenames+"","root","Lino@123");
Statement myStmt = con.createStatement();

int i = myStmt.executeUpdate("delete from "+tablename+" where source_name = '"+sourcename+"' and prefix_name = '"+prefixname+"'");
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
	System.out.print(e);
	e.printStackTrace();
}
String redirectURL = "showDelete.jsp";
response.sendRedirect(redirectURL);

%>


</body>
</html>