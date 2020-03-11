<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Uom Registration Page</title>

	<%@include file="userMenu.jsp" %>

</head>
<body  >
<div class="container">
		<div class="card mt-3 border-0 bg-transparent">
		
			<div class="card-header bg-dark2 text-light text-center"><h1>Welcome to Uom Registration Page</h1></div>
			<div class="card-body bg-light">
		 
				<form:form action="save" method="post" modelAttribute="uom">
				<div class="row pt-1 pb-1" >
						<div class="col-4">
							<label for="uType" class="">UOM TYPE :</label>
						</div>
						<div class="col-4">
							<form:select path="uType" class="form-control">
								<form:option id="opt" value="">--SELECT--</form:option>
								<form:option id="opt" value="PACKING">PACKING</form:option>
								<form:option id="opt" value="No PACKING">NO PACKING</form:option>
								<form:option id="opt" value="-NA-">-NA-</form:option>
							</form:select>
						</div>
						<div class="col-4"><!-- Error Message --></div>
					</div>
					
					<div class="row pt-1 pb-1" >
						<div class="col-4">
							<label for="uModel" class="">UOM MODEL :</label>
						</div>
						<div class="col-4">
							<form:input path="uModel" class="form-control" placeholder="Enter UOM Model" />
						</div>
						<div class="col-4"><!-- Error Message --></div>
					</div>
					
					<div class="row pt-1 pb-1" >
						<div class="col-4">
							<label for="uDesc" class="">UOM DESCRIPTION:</label>
						</div>
						<div class="col-4">
							<form:textarea path="uDesc" class="form-control" rows="5" placeholder="UOM Description " />
						</div>
						<div class="col-4"><!-- Error Message --></div>
					</div>
					
						<div class="row pt-1 pb-1">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" value="CREATE UOM" class="btn btn-dark">
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