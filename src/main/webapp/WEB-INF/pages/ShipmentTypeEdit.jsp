<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ShipmentType Edit Page</title>



<style><%@include file="style.css"%></style>
</head>
<body  >
<h1>Welcome to Shipment Type Edit Page</h1>

<div id="wrapper" >
<div id="link"><a href="all">View All</a></div>
	<form:form action="update" method="post" modelAttribute="shipmentType">
		<!-- <pre> -->	
		
			<div id="fblock">
				<div id="lft">
					<h4>SHIPMENT ID :</h4>		
				</div>
				<div id="rht">
					<form:input path="shipId" readonly="true" />
				</div>
			</div>
			<div id="fblock" >
				<div id="lft">
					<h4>SHIPMENT MODE :</h4>
				</div>
				<div id="rht">
					<form:select path="shipMode">
						<form:option id="opt" value="" >--SELECT--</form:option>
						<form:option id="opt" value="Train">Train</form:option>
						<form:option id="opt" value="Truck">Truck</form:option>
						<form:option id="opt" value="Ship">Ship</form:option>
						<form:option id="opt" value="Air">Air</form:option>
					</form:select>
				</div>
			</div>
			
			<div id="fblock">
				<div id="lft">
					<h4>SHIPMENT CODE :</h4>		
				</div>
				<div id="rht">
					<form:input path="shipCode" placeholder="Enter Shipment Code" />
				</div>
			</div>
			<div id="fblock">
				<div id="lft">
					<h4>ENABLE SHIPMENT :</h4> 	
				</div>
				<div id="rht">
					<form:select path="enabShip">
						<form:option value="">--SELECT--</form:option>
						<form:option value="yes">Yes</form:option>
						<form:option value="no">No</form:option>
					</form:select>
				</div>				
			</div>	
			<div id="fblock">
				<div id="lft">
					<h4>SHIPMENT GRADE:</h4>		
				</div>
				<div id="rht" >
					<span><form:radiobutton path="shipGrade" value="A" /> Grade A</span>
					<span><form:radiobutton path="shipGrade" value="B" /> Grade B</span>
					<span><form:radiobutton path="shipGrade" value="C" /> Grade C</span>
				</div>
				
			</div>
			<div id="fblock">
				<div id="lft">
					<h4>SHIPMENT DESCRIPTION:</h4> 	
		
				</div>		
				<div id="rht">
					<form:textarea path="shipDesc" rows="5" placeholder="Shipment Description "></form:textarea>
				</div>
			</div>
				
			<div id="fblock">
			<input type="submit" value="UPDATE SHIPMENT" class="button">
			
			</div>
		<!-- </pre> -->
	</form:form> 
	<h5>${message }</h5>
</div>


</body>
</html>