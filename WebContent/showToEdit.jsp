<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Search result</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<style>
	#myDIV {
  width: 100%;
  padding: 50px 0;
  text-align: center;
  background-color: lightblue;
  margin-top: 20px;
}
</style>
</head>
<%@ page import="java.util.*" %>
<%
	ArrayList arrList = (ArrayList)session.getAttribute("allValues");
	String fileType = (String)arrList.get(0);
	String fileSche = (String)arrList.get(1);
	String daySche = (String)arrList.get(2);
	String calType = (String)arrList.get(3);
	String fileSize = (String)arrList.get(4);
	String timeDevi = (String)arrList.get(5);
	String unscheduledFlag = (String)arrList.get(6);
	String typecastFlag = (String)arrList.get(7);
	
	
 	String db = (String)session.getAttribute("databasenames");
	String table = (String)session.getAttribute("tablename");
	String source = (String)session.getAttribute("sourcename");
	String prefix = (String)session.getAttribute("prefixname"); 
	
	session.setAttribute("databasenames",db);
	session.setAttribute("tablename",table);
	session.setAttribute("sourcename",source);
	session.setAttribute("prefixname",prefix);
	
	
%>

<body>
	<div class="container-fluid">
		<div class="row col-xs-7 col-md-offset-2" > 
			<div class="panel panel-primary">
				<div class="panel-heading text-center">
					<h1>Search Result </h1>
				</div>
				<div>
					&nbsp
				</div>
				<div class="panel-body"> 
					<form action="submitToEdit.jsp" method="get">
						<div class="your-class">
						  <label for="env"> Environment:</label> &nbsp
						  <select id="env" name="Environments" style="width:100px">
							  <option value="DEV">DEV</option>
							  <option value="UAT">UAT</option>
							  <option value="PROD">PROD</option>
							</select>
						  &nbsp &nbsp<label for="databasename">Database Name:</label>&nbsp
						  	<%=db%> 
						  &nbsp &nbsp<label for="tablename"> Table Name:</label> &nbsp
							<%=table%> 
						</div>
						<div>
						&nbsp
						</div>
						<div>
						&nbsp
						</div>
						<div>
						<label for="sourcename"> Source Name:</label> &nbsp &nbsp
						  	<%=source%>
						 &nbsp &nbsp<label for="prefixname"> Prefix Name:</label> &nbsp &nbsp
						 	<%=prefix%>
						</div>
						<div>
						  &nbsp
						</div>
						<hr>
						<form>
						<label for="filetype"> File Type:</label> &nbsp &nbsp
						<div>
							<%=fileType%> 
						</div>
						<hr>
						<label for="fileschedule"> File Schedule:</label> &nbsp &nbsp
						<div class="radio">
							<%=fileSche%>
						</div>
						<div>&nbsp</div>
						<label for="dayschedule"> Day Schedule:</label> &nbsp &nbsp
						<div>&nbsp</div>
							<%=daySche%>
						<hr>
						<label for="calendartype"> Calendar Type:</label> &nbsp &nbsp
						<div>
							<%=calType%>
						</div>
						<hr>
						<div>
						<label for="filesize">File Size:</label>&nbsp &nbsp
							<%=fileSize%>
						</div>
						<hr>
						<div>
						 <label for="timedeviation"> Time Deviation:</label> &nbsp &nbsp
						 	<%=timeDevi%>
						</div>
						<hr>
						<div>
						<label for="unscheduled">Unscheduled Arrival Flag:</label>&nbsp &nbsp
							<%=unscheduledFlag%>				
						</div>
						<hr>
						<div>
						<label for="typecastflag">Type Casting Flag:</label>&nbsp &nbsp
							<%=typecastFlag%>	
						</div>
						<hr>
						<div class="your-class">
						&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
						<button class = "btn btn-primary" onclick="homePage()">Home</button>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
						<form ><button class = "btn btn-primary">Edit</button></form>
						</div>					
					</form>
				</div>
			</div>
		</div>
	</div>	
</body>
</html>