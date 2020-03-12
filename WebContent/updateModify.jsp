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
	String dbname = (String)session.getAttribute("db");
	String tablename = (String)session.getAttribute("tablename");
	String sourcename = (String)session.getAttribute("sourcename");
	String prefixname = (String)session.getAttribute("prefixname"); 

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
	
	System.out.println("databasenames ->" + dbname);
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
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+dbname+"","root","Lino@123");
	Statement myStmt = con.createStatement();
%>

<%

	int i = 0;
	System.out.println("before insert i -->" +i);
	String sql = "UPDATE "+tablename+" SET file_type= '"+filetype+"',file_sche ='"+fileschedule+"',days_sche='"+dayscheduleAllValues+"',calendar_type='"+calendartype+"',file_size='"+filesize+"',time_deviation='"+timedeviation+"',unscheduled_arrival_flag='"+unscheduled+"',typecasting_flag='"+typecastflag+"' where source_name = '"+sourcename+"' and prefix_name = '"+prefixname+"';";
	System.out.println(sql);
	System.out.println("After sql");
	i = myStmt.executeUpdate(sql);
	
	String redirectURL = "showUpdate.jsp";
	response.sendRedirect(redirectURL);
	
%>
</body>
</html>