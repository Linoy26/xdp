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
<%
String Environments = request.getParameter("Environments");
String databasenames = request.getParameter("databasenames");
String tablename = request.getParameter("tablename");
String sourcename = request.getParameter("sourcename");
String prefixname = request.getParameter("prefixname");
String filetype = request.getParameter("filetype");
String fileschedule = request.getParameter("fileschedule");
String[] dayschedule = request.getParameterValues("dayschedule");

String dayscheduleValues = "";
if (dayschedule != null)
{
	for (int i=0; i < dayschedule.length ; i++)
	{
		dayscheduleValues = dayscheduleValues + "," + dayschedule[i];
	}	
}
String dayscheduleAllValues = dayscheduleValues.substring(0,0)+dayscheduleValues.substring(1+0);
String calendartype = request.getParameter("calendartype");
String filesize = request.getParameter("filesize");
String timedeviation = request.getParameter("timedeviation");
String unscheduled = request.getParameter("unscheduled");
String typecastflag = request.getParameter("typecastflag");

System.out.println("Environments  ->" + Environments);
System.out.println("databasenames ->" + databasenames);
System.out.println("tablename ->" + tablename);
System.out.println("sourcename ->" + sourcename);
System.out.println("prefixname ->" + prefixname);
System.out.println("filetype ->" + filetype);
System.out.println("fileschedule ->" + fileschedule);
System.out.println("dayschedule ->" + dayscheduleAllValues);
System.out.println("calendartype ->" + calendartype);
System.out.println("filesize ->" + filesize);
System.out.println("timedeviation ->" + timedeviation);
System.out.println("unscheduled ->" + unscheduled);
System.out.println("typecastflag ->" + typecastflag);



Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+databasenames+"","root","Lino@123");
Statement myStmt = con.createStatement();

ResultSet rs;
int i = 0;
String flag = "false";
System.out.println("before insert i -->" +i);
i = myStmt.executeUpdate("INSERT INTO "+tablename+" (source_name,prefix_name,file_type,file_sche,days_sche,calendar_type,file_size,time_deviation,unscheduled_arrival_flag,typecasting_flag) VALUES ('"+sourcename+"','"+prefixname+"','"+filetype+"','"+fileschedule+"','"+dayscheduleAllValues+"','"+calendartype+"','"+filesize+"','"+timedeviation+"','"+unscheduled+"','"+typecastflag+"')");

if (i != 0)
{
	flag = "true";
}
else
{
	flag = "false";
}

System.out.println("after insert i -->" +i);
System.out.println("SAved into table");

session.setAttribute("flag",flag);
System.out.println("flag" +flag);

String redirectURL = "fileExpectedList.jsp";
response.sendRedirect(redirectURL);

%>
</body>
</html>