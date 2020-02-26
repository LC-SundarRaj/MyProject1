<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Uom Registration Page</title>



<style><%@include file="style.css"%></style>
</head>
<body  >
<h1>Welcome to Uom Registration Page</h1>

<div id="wrapper" >
<div id="link"><a href="all">View All</a></div>
	<form:form action="save" method="post" modelAttribute="uom">
		<!-- <pre> -->	
			<div id="fblock" >
				<div id="lft">
					<h4>UOM TYPE :</h4>
				</div>
				<div id="rht">
					<form:select path="uType">
						<form:option id="opt" value="">--SELECT--</form:option>
						<form:option id="opt" value="PACKING">PACKING</form:option>
						<form:option id="opt" value="No PACKING">NO PACKING</form:option>
						<form:option id="opt" value="-NA-">-NA-</form:option>
					</form:select>
				</div>
			</div>
			
			<div id="fblock">
				<div id="lft">
					<h4>UOM MODEL :</h4>		
				</div>
				<div id="rht">
					<form:input path="uModel" placeholder="Enter UOM Model" />
				</div>
			</div>
			<div id="fblock">
				<div id="lft">
					<h4>UOM DESCRIPTION:</h4> 	
		
				</div>		
				<div id="rht">
					<form:textarea path="uDesc" rows="5" placeholder="UOM Description " />
				</div>
			</div>
				
			<div id="fblock">
			<input type="submit" value="CREATE UOM" class="button">
			
			</div>
		<!-- </pre> -->
	</form:form> 
	<h5>${msg }</h5>
</div>


</body>
</html>