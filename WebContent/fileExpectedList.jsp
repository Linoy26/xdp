<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>File Expected List</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<%
	String str = (String)session.getAttribute("flag");
%>
<body>
	<div class="container-fluid">
		<div class="row col-xs-8 col-md-offset-2" > 
			<div class="panel panel-primary">
				<div class="panel-heading text-center">
					<h1>File Expected List</h1>
				</div>
				<div>
					&nbsp
				</div>
				<div class="panel-body"> 
					<form action="connect.jsp" method="post">
						<div class="your-class">
						  <label for="env"> Environment:</label>&nbsp
						  <select id="env" name="Environments" style="width:80px">
							  <option value="DEV">DEV</option>
							  <option value="UAT">UAT</option>
							  <option value="PROD">PROD</option>
							</select>
						 &nbsp<label for="databasename">Database Name:</label>&nbsp
						  	<select id="dbs" name="databasenames" style="width:70px">
							  <option value="wslctrl">wslctrl</option>
							  <option value="wsltrnf">wsltrnf</option>
							  <option value="wslstaging">wslstaging</option>
							</select>
						 &nbsp<label for="tablename"> Table Name:</label> &nbsp
						  <input type="text" name="tablename" list="tableName"/>
							<datalist id="tableName" >
								<option value="file_expected_list">file_expected_list</option>
								<option value="file_expected_list_lino">file_expected_list_lino</option>
								<option value="file_expected_list_dev">file_expected_list_dev</option>
							</datalist>
						</div>
						<div>
						&nbsp
						</div>
						<div>
						&nbsp
						</div>
						<div>
						<label for="sourcename"> Source Name:</label> &nbsp &nbsp
						  <input type="text" name="sourcename" list="sourceName"/>
							<datalist id="sourceName">
								<option value="FRANK">FRANK</option>
								<option value="MANUAL">MANUAL</option>
								<option value="CRADLE">CRADLE</option>
							</datalist>
						 &nbsp &nbsp<label for="prefixname"> Prefix Name:</label> &nbsp &nbsp
						  <input type="text" name="prefixname" list="prefixName"/>
							<datalist id="prefixName">
								<option value="ROCLFLAGGING">ROCLFLAGGING</option>
								<option value="SRR">SRR</option>
								<option value="GARDING">GRADING</option>
							</datalist>
						</div>
						<div>
						  &nbsp
						</div>
						<hr>
						<form action="connect.jsp" method="get">
						<label for="filetype"> File Type:</label> &nbsp &nbsp
						<div class="radio">
							<label class="radio-inline"><input type="radio" name="filetype" value = "Manual" checked>Manual</label>
							<label class="radio-inline"><input type="radio" name="filetype" value = "Automatic">Automatic</label>
						</div>
						<hr>
						<label for="fileschedule"> File Schedule:</label> &nbsp &nbsp
						<div class="radio">
							<label class="radio-inline"><input type="radio" name="fileschedule" value = "Daily" checked>Daily</label>
							<label class="radio-inline"><input type="radio" name="fileschedule" value = "Weekly">Weekly</label>
							<label class="radio-inline"><input type="radio" name="fileschedule" value = "Monthly">Monthly</label>
						</div>
						<div>&nbsp</div>
						<label for="dayschedule"> Day Schedule:</label> &nbsp &nbsp
						<div>&nbsp</div>
							<input type="checkbox" name="dayschedule" value=""> None<br>
							<input type="checkbox" name="dayschedule" value="Tuesday"> Tuesday<br>
							<input type="checkbox" name="dayschedule" value="Friday"> Friday<br>
						<hr>
						<label for="calendartype"> Calendar Type:</label> &nbsp &nbsp
						<div class="radio">
							<label class="radio-inline"><input type="radio" name="calendartype" value = "India" checked>India</label>
							<label class="radio-inline"><input type="radio" name="calendartype" value = "London">London</label>
						</div>
						<hr>
						<div>
							<label for="filesize">File Size:</label>&nbsp &nbsp
							<input type="text" id="filesize" name="filesize"><br><br>	
						</div>
						<hr>
						<div>
						  <label for="timedeviation"> Time Deviation:</label> &nbsp &nbsp
						  <select id="timedeviation" name="timedeviation" style="width:100px">
							  <option value="60">60</option>
							  <option value="120">120</option>
							  <option value="180">180</option>
							</select>
						</div>
						<hr>
						<div>
							<label for="unscheduled">Unscheduled Arrival Flag:</label>&nbsp &nbsp
						  	<select id="unscheduled" name="unscheduled" style="width:100px">
							  <option value="YES">YES</option>
							  <option value="NO">NO</option>
							</select>
						</div>
						<hr>
						<div>
							<label for="typecastflag">Type Casting Flag:</label>&nbsp &nbsp
						  	<select id="typecastflag" name="typecastflag" style="width:100px">
							  <option value="YES">YES</option>
							  <option value="NO">NO</option>
							</select>
						</div>
						<hr>
						<div class="your-class">
						&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
						<form action="index.jsp" method="get"><button class = "btn btn-primary" onclick="homePage()">Home</button></form>
						&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
						<button class = "btn btn-primary" onclick="clearFunction()">Clear</button>  
						&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
						<button class = "btn btn-primary" onclick="addSubmit()">Submit</button>  
						</div>					
					</form>
				</div>
			</div>
		</div>
	</div>	
<script>
function addSubmit()
{
   var flag = <%=str%>
   if (flag = "true")
	  {
	   alert("Successfull");
	  }
   else
	   {
	   alert("Failed");
	   }
}

function homePage() 
{
	window.location.href="index.jsp";
}

</script>
</body>
</html>