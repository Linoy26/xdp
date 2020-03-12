<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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


Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+databasenames+"","root","Lino@123");
Statement myStmt = con.createStatement();

ResultSet rs;

rs = myStmt.executeQuery("select file_type,file_sche,days_sche,calendar_type,file_size,time_deviation,unscheduled_arrival_flag,typecasting_flag from "+tablename+" where source_name = '"+sourcename+"' and prefix_name = '"+prefixname+"'");
int columnCount = rs.getMetaData().getColumnCount();
ArrayList<String> allValues = new ArrayList<String>();

while(rs.next()) 	
{
	int i = 1;
	while( i<= columnCount){
		allValues.add(rs.getString(i++));
	}
	String q_file_type = rs.getString("file_type");
	String q_file_sche = rs.getString("file_sche");
	String q_days_sche = rs.getString("days_sche");
	String q_calendar_type = rs.getString("calendar_type");
	String q_file_size = rs.getString("file_size");
	String q_time_deviation = rs.getString("time_deviation");
	String q_unscheduled_arrival_flag = rs.getString("unscheduled_arrival_flag");
	String q_typecasting_flag = rs.getString("typecasting_flag");
	System.out.println("q_file_type1 - >" + rs.getString("file_type"));
}
for (int counter = 0; counter < allValues.size(); counter++) { 		      
    System.out.println(allValues.get(counter)); 		
} 
session.setAttribute("allValues",allValues);
session.setAttribute("databasenames",databasenames);
session.setAttribute("tablename",tablename);
session.setAttribute("sourcename",sourcename);
session.setAttribute("prefixname",prefixname);
System.out.println("allValues" +allValues);

String redirectURL = "showSearch.jsp";
response.sendRedirect(redirectURL);
%>

</body>
</html>