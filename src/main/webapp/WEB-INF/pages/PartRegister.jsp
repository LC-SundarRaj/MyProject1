<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Part Registration Page</title>
	
	<%@include file="userMenu.jsp" %>
</head>
<body>
	<div class="container">
		<div class="card mt-3 border-0 bg-transparent">
		
			<div class="card-header bg-dark2 text-light text-center"><h1>Welcome to Part Registration Page</h1></div>
			<div class="card-body bg-light">
		 
				<form:form action="save" method="post" modelAttribute="part">
						
					<div class="row pt-1 pb-1" >
						<div class="col-4">
							<label for="prtCode" class="">PART CODE :</label>
						</div>
						<div class="col-4">
							<form:input path="prtCode" placeholder="Enter Part Code" class="form-control" />
						</div>
						<div class="col-4"><!-- Error Message --></div>
					</div>
					<div class="row pt-1 pb-1" >
						<div class="col-4">
							<p>DIMENSIONS :</p>
						</div>
						<div class="col-4">
							<div class="input-group mb-3">
							  <div class="input-group-prepend">
							    <label for="prtWdth"  class="input-group-text" id="basic-addon1"><span>WIDTH :</span></label>
							  </div>
								<form:input path="prtWdth" placeholder="Enter Width" class="form-control" />
							</div>
							<div class="input-group mb-3">
							  <div class="input-group-prepend">
							    <label for="prtLngth"  class="input-group-text" id="basic-addon1"><span>LENGTH :</span></label>
							  </div>
								<form:input path="prtLngth" placeholder="Enter Length" class="form-control" />
							</div>
							<div class="input-group mb-3">
							  <div class="input-group-prepend">
							    <label for="prtHgt"  class="input-group-text" id="basic-addon1"><span>HEIGHT :</span></label>
							  </div>
								<form:input path="prtHgt" placeholder="Enter Height" class="form-control" />
							</div>
						</div>
						<div class="col-4"><!-- Error Message --></div>
					</div>
					
					<div class="row pt-1 pb-1">
						<div class="col-4">
							<label for="shipCode">BASE COST :</label>		
						</div>
						<div class="col-4">
							<form:input path="baseCost" placeholder="Enter Base Cost" class="form-control" />
						</div>
						<div class="col-4"><!-- Error Message --></div>
						
					</div>
					
					<div class="row pt-1 pb-1">
						<div class="col-4">
							<label for="curr">BASE CURRENCY :</label>		
						</div>
						<div class="col-4">
							<form:select path="curr" class="form-control">
								<form:option value="" >--SELECT--</form:option>
								<form:option value="INR">INR</form:option>
								<form:option value="USD">USD</form:option>
								<form:option value="AUD">AUD</form:option>
							</form:select>
						</div>
						<div class="col-4"><!-- Error Message --></div>
						
					</div>
					
					
					<div class="row pt-1 pb-1">
						<div class="col-4">
							<label for="uomOb">UOM :</label> 	
						</div>
						<div class="col-4" >
							<form:select path="uomOb.uid" class="form-control">
								<form:option value="">--SELECT--</form:option>
								<form:options items="${uomList }" itemLabel="uModel" itemValue="uid"/>

							</form:select>
						</div>				
						<div class="col-4">
						</div>
					</div>	
					
					<div class="row pt-1 pb-1">
						<div class="col-4">
							<label for="shipDesc">PART DESCRIPTION:</label> 	
				
						</div>		
						<div class="col-4">
							<form:textarea path="note" rows="5" placeholder="Part Description " class="form-control"></form:textarea>
						</div>
					</div>
						
					<div class="row pt-1 pb-1">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" value="CREATE PART" class="btn btn-dark">
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