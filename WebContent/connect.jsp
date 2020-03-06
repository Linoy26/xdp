<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import = "java.sql.*" %>>
<%@ page import = "javax.sql.*" %>
<%
String sourceName = request.getParameter("sourceName");
String prefixName = request.getParameter("prefixName");
String env = request.getParameter("env");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lino","root","adminadmin");
Statement myStmt = con.createStatement();

ResultSet rs;

int i = myStmt.executeUpdate("INSERT INTO sample (source_name,prefix_name,env) VALUES ('"+sourceName+"','"+prefixName+"','"+env+"')");

System.out.println("SAved into table");

%>

</body>
</html>