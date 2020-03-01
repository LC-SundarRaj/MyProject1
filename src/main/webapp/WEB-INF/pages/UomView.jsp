<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Uom View Page</title>

<link href="../resources/css/style.css" rel="stylesheet" media="screen" >
</head>
<style>
	#wrapper{
		width: 50%;
	}
	table th{
		background: none;
		width: 20%;
		text-align: left;
		color:green;
		border-color:green;
	}
	table td{
		text-align: left;
	}
</style>
<body>
	
<h1>Welcome to Uom Data Page</h1>

<div id="wrapper" >
	
	<div id="link"><a href="excel?id=${ob.uid }"><img src="../resources/images/excel1.png" width="40" title="Export to Excel" /></a></div>
	<div id="link"><a href="pdf?id=${ob.uid }"><img src="../resources/images/pdf.png" width="40" title="Export to PDF" /></a></div>
	<div id="link"><a href="all"><img src="../resources/images/view_all.png" width="40" title="View All" /></a></div>
	<div id="link"><a href="register"><img src="../resources/images/register-icon.png" width="40" title="Register" /></a></div>
		<table border="1">
			<tr>
				<th>ID</th><td>${ob.uid }</td>
			</tr>
			<tr>
				<th>TYPE</th><td>${ob.uType }</td>
			</tr>
			<tr>
				<th>MODEL</th><td>${ob.uModel}</td>
			</tr>
			<tr>
				<th>DESCRIPTION</th><td>${ob.uDesc }</td>
			</tr>
			
		</table>
		
</div>

</body>
</html>