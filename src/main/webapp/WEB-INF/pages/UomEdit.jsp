<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Uom Edit Page</title>

<link href="../resources/css/style.css" rel="stylesheet" media="screen" >

</head>
<body  >
<h1>Welcome to Uom Edit Page</h1>

<div id="wrapper" >
<div id="link"><a href="all"><img src="../resources/images/view_all.png" width="40" title="View All" /></a></div>
	<form:form action="update" method="post" modelAttribute="uom">
		<!-- <pre> -->	
		
			<div id="fblock">
				<div id="lft">
					<h4>UOM ID :</h4>		
				</div>
				<div id="rht">
					<form:input path="uid" readonly="true" />
				</div>
			</div>
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
	<h5>${message }</h5>
</div>


</body>
</html>