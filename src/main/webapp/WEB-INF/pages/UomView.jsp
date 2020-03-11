<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Uom View Page</title>

<%@include file="userMenu.jsp" %>
</head>
<body>
	<div class="container">
		<div class="card mt-3 border-0 bg-transparent">
			<div class="card-header bg-dark2 text-light text-center"><h1>Welcome to Uom VIEW Page</h1></div>
			<div class="card-body bg-light">
	
			<a href="excel?id=${ob.uid }" class="btn btn-info">Export to Excel <i style="font-size:24px; text-shadow:3px 3px 3px #33333375" class="fa">&#xf1c3;</i></a>
			<a href="pdf?id=${ob.uid }" class="btn btn-info">Export to PDF <i style="font-size:24px; text-shadow:3px 3px 3px #33333375" class="fa">&#xf1c3;</i></a>
	
			<table  class="table table-bordered table-hovered mt-2">
			<tr>
				<th class="bg-dark text-white w-50">ID</th><td>${ob.uid }</td>
			</tr>
			<tr>
				<th class="bg-dark text-white">TYPE</th><td>${ob.uType }</td>
			</tr>
			<tr>
				<th class="bg-dark text-white">MODEL</th><td>${ob.uModel}</td>
			</tr>
			<tr>
				<th class="bg-dark text-white">DESCRIPTION</th><td>${ob.uDesc }</td>
			</tr>
			
		</table>
		
</div>

</body>
</html>