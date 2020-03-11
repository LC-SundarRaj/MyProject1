<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Shipment Registration Page</title>
	
	<%@include file="userMenu.jsp" %>
</head>
<body>
	<div class="container">
		<div class="card mt-3 border-0 bg-transparent">
		
			<div class="card-header bg-dark2 text-light text-center"><h1>Welcome to Shipment Type Registration Page</h1></div>
			<div class="card-body bg-light">
		 
				<form:form action="save" method="post" modelAttribute="shipmentType">
						
					<div class="row pt-1 pb-1" >
						<div class="col-4">
							<label for="shipMode" class="">SHIPMENT MODE </label>
						</div>
						<div class="col-4">
							<form:select path="shipMode" class="form-control">
								<form:option value="" >--SELECT--</form:option>
								<form:option value="Train">Train</form:option>
								<form:option value="Truck">Truck</form:option>
								<form:option value="Ship">Ship</form:option>
								<form:option value="Air">Air</form:option>
							</form:select>
						</div>
						<div class="col-4"><!-- Error Message --></div>
					</div>
					
					<div class="row pt-1 pb-1">
						<div class="col-4">
							<label for="shipCode">SHIPMENT CODE :</label>		
						</div>
						<div class="col-4">
							<form:input path="shipCode" placeholder="Enter Shipment Code" class="form-control" />
						</div>
						<div class="col-4"><!-- Error Message --></div>
						
					</div>
					<div class="row pt-1 pb-1">
						<div class="col-4">
							<label for="enabShip">ENABLE SHIPMENT :</label> 	
						</div>
						<div class="col-4" >
							<form:select path="enabShip" class="form-control">
								<form:option value="">--SELECT--</form:option>
								<form:option value="yes">Yes</form:option>
								<form:option value="no">No</form:option>
							</form:select>
						</div>				
						<div class="col-4">
						</div>
					</div>	
					<div class="row  pt-1 pb-1">
						<div class="col-4">
							<label for="shipGrade">SHIPMENT GRADE:</label>		
						</div>
						<div class="col-4" >
							<div class="btn-group btn-group-toggle" data-toggle="buttons">
							  <label class="btn btn-outline-dark active ">
							      <form:radiobutton path="shipGrade" aria-label="shipGrade" />Grade A
							  </label>
							  <label class="btn btn-outline-dark ">
								<form:radiobutton path="shipGrade" value="B" /> Grade B
							  </label>
							  <label class="btn btn-outline-dark">
								<form:radiobutton path="shipGrade" value="C" /> Grade C
							  </label>
							</div>
						</div>
						
					</div>
					<div class="row pt-1 pb-1">
						<div class="col-4">
							<label for="shipDesc">SHIPMENT DESCRIPTION:</label> 	
				
						</div>		
						<div class="col-4">
							<form:textarea path="shipDesc" rows="5" placeholder="Shipment Description " class="form-control"></form:textarea>
						</div>
					</div>
						
					<div class="row pt-1 pb-1">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" value="CREATE SHIPMENT" class="btn btn-dark">
							<input type="reset" value="CLEAR" class="btn btn-info">
						</div>
						<div class="col-4"></div>
					
					</div>
				
				</form:form> 
			
			
		
		</div>
		<c:if test="${!empty message }">
		<div class="card-footer font-italic text-white text-center bg-info">
			${message }
		</div>
		</c:if>
	</div>

	</div>

</body>
</html>