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
<body>
	<div class="container-fluid">
		<div class="row col-xs-7 col-md-offset-2" > 
			<div class="panel panel-primary">
				<div class="panel-heading text-center">
					<h1>Delete Result</h1>
				</div>
				<div class="panel-body"> 
					<form>
						<div class="your-class">
						<h4>Data has been deleted </h4>
						<hr>
						<div class="your-class">
						&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
						<button class = "btn btn-primary" onclick="homePage()">Home</button>
						</div>					
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>