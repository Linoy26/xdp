<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>File Expected List</title>
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


<body>
<div class="container-fluid">
	<div class="row col-xs-8 col-md-offset-2" > 
		<div class="panel panel-primary">
			<div class="panel-heading text-center">
				<h1>Configuration setup UI</h1>
			</div>
			<div>&nbsp</div>
			<div class="panel-body"> 
			<form>
			<div>
				<button class = "btn btn-primary" type="button" onclick="goToAdd()">ADD CONFIG DETAILS&nbsp &nbsp &nbsp</button>
				<br><br>
			</div>
			<div id="myDIV1">
				<div class="panel-body"> 
					<form action="connect.jsp" method="get">
						<div>
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="button" class="btn btn-primary btn-sm"  onclick="goToFileExpList()"> File Expected List</button><br><br>
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="button" class="btn btn-primary btn-sm">File Level Check Validation</button><br><br>
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="button" class="btn btn-primary btn-sm">File Schema Info</button><br><br>
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="button" class="btn btn-primary btn-sm">Rules Configuration details</button><br><br>
						</div>
						<hr>
					</form>		
				</div>
			</div>
			<div>
			<div>
				<button class = "btn btn-primary" type="button" onclick="goToView()">VIEW CONFIG DETAILS &nbsp &nbsp</button>
				<br><br>
			</div>
			<div id="myDIV2">
				<div class="panel-body"> 
					<form  action="submitSearch.jsp" method="get">
						<div class="your-class">
						  <label for="env"> Environment:</label> &nbsp
						  <select id="env" name="Environments" style="width:80px">
							  <option value="DEV">DEV</option>
							  <option value="UAT">UAT</option>
							  <option value="PROD">PROD</option>
							</select>
						  &nbsp &nbsp<label for="databasename">Database Name:</label>&nbsp
						  	<select id="dbs" name="databasenames" style="width:80px">
							  <option value="wslctrl">wslctrl</option>
							  <option value="wsltrnf">wsltrnf</option>
							  <option value="wslstaging">wslstaging</option>
							</select>
						  &nbsp &nbsp<label for="tablename"> Table Name:</label> &nbsp
						  	<input type="text" name="tablename" list="tableName"/>
							 	<datalist id="tableName">
								<option value="file_expected_list">file_expected_list</option>
								<option value="file_expected_list_lino">file_expected_list_lino</option>
								<option value="file_expected_list_dev">file_expected_list_dev</option>
							</datalist>
						</div>
						<div>&nbsp</div>
						<div>&nbsp</div>
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
						<div>&nbsp</div>
						<div class="your-class">
							&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
							<button class = "btn btn-primary" onclick="clearFunction()">Clear</button>
							&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
							<button class = "btn btn-primary" onclick="submitSearch2()">Search</button>  
						</div>					
					<hr>
				</form>
			</div>	
			</div>
			<div>
				<button class = "btn btn-primary" type="button" onclick="goToDelete()">DELETE CONFIG DETAILS</button>
				<br><br>
			</div>
			<div id="myDIV4">
				<div class="panel-body"> 
					<form action="submitDelete.jsp" method="get">
						<div class="your-class">
						  <label for="env"> Environment:</label>&nbsp
						  <select id="env" name="Environments" style="width:100px">
							  <option value="DEV">DEV</option>
							  <option value="UAT">UAT</option>
							  <option value="PROD">PROD</option>
							</select>
						  &nbsp<label for="databasename">Database Name:</label>&nbsp
						  	<select id="dbs" name="databasenames" style="width:100px">
							  <option value="wslctrl">wslctrl</option>
							  <option value="wsltrnf">wsltrnf</option>
							  <option value="wslstaging">wslstaging</option>
							</select>
						  &nbsp<label for="tablename"> Table Name:</label> &nbsp
						  	<input type="text" name="tablename" list="tableName"/>
							 	<datalist id="tableName">
								<option value="file_expected_list">file_expected_list</option>
								<option value="file_expected_list_lino">file_expected_list_lino</option>
								<option value="file_expected_list_dev">file_expected_list_dev</option>
							</datalist>
						</div>
						<div>&nbsp</div>
						<div>&nbsp</div>
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
						
						<div>&nbsp</div>
						<div class="your-class">
							&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
							<button class = "btn btn-primary" onclick="clearFunction()">Clear</button>
							&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
							<button class = "btn btn-primary" onclick="submitSearch1()">Delete</button>  
						</div>
					<hr>	
					</form>
					</div>
				</div>	
				<div>
					<button class = "btn btn-primary" type="button" onclick="goToUpdate()">MODIFY CONFIG DETAILS</button>
				<br><br>
			</div>
			<div id="myDIV5">
				<div class="panel-body"> 
					<form action="submitToModify.jsp" method="get">
						<div class="your-class">
						  <label for="env"> Environment:</label>&nbsp
						  <select id="env" name="Environments" style="width:100px">
							  <option value="DEV">DEV</option>
							  <option value="UAT">UAT</option>
							  <option value="PROD">PROD</option>
							</select>
						  &nbsp<label for="databasename">Database Name:</label>&nbsp
						  	<select id="dbs" name="databasenames" style="width:100px">
							  <option value="wslctrl">wslctrl</option>
							  <option value="wsltrnf">wsltrnf</option>
							  <option value="wslstaging">wslstaging</option>
							</select>
						  &nbsp<label for="tablename"> Table Name:</label> &nbsp
						  	<input type="text" name="tablename" list="tableName"/>
							 	<datalist id="tableName">
								<option value="file_expected_list">file_expected_list</option>
								<option value="file_expected_list_lino">file_expected_list_lino</option>
								<option value="file_expected_list_dev">file_expected_list_dev</option>
							</datalist>
						</div>
						<div>&nbsp</div>
						<div>&nbsp</div>
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
						
						<div>&nbsp</div>
						<div class="your-class">
							&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
							<button class = "btn btn-primary" onclick="clearFunction()">Clear</button>
							&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
							<button class = "btn btn-primary" onclick="submitSearch1()">Search</button>  
						</div>	
					</form>
					</div>
				</div>				
					<hr>
				</form>		
				</div>
			</div>
			<div class="panel-footer"><br><br></div>
	</div>	

<!-- 
<script type="text/javascript">
	function goToSearch()
	{
		window.location = 'file:///Users/linoymathews/Documents/Test/7.html';
	}
</script>
 -->
<script>
function goToAdd() {
  var x = document.getElementById("myDIV1");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
function goToView() {
  var x = document.getElementById("myDIV2");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
/* function submitSearch() {
	var x = document.getElementById("myDIV2");
	var y = document.getElementById("myDIV3");
	y.style.display = "block";
	} */
function goToDelete() {
  var x = document.getElementById("myDIV4");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
function goToUpdate() {
		  var x = document.getElementById("myDIV5");
		  if (x.style.display === "none") {
		    x.style.display = "block";
		  } else {
		    x.style.display = "none";
		  }
		}
function goToFileExpList() 
{
	window.location.href="fileExpectedList.jsp";
}
window.onload = function() 
{
document.getElementById('myDIV1').style.display = 'none';
document.getElementById('myDIV2').style.display = 'none';
document.getElementById('myDIV4').style.display = 'none';
document.getElementById('myDIV5').style.display = 'none';
}

</script>
</body>
</html>