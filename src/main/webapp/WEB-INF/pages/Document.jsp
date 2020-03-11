<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Document Upload Page</title>
<%@include file="userMenu.jsp" %>



</head>
<body>
	<div class="container">
		<div class="card mt-3 border-0 bg-transparent">
			<div class="card-header bg-dark2 text-light text-center">
				<h1>Welcome to Document Page</h1>
			</div>
			<div class="card-body bg-light">
				<form action="save" method="post" enctype="multipart/form-data">
					<div class="row pt-1 pb-1" >
						<div class="col-4">
							<label for="fileId" class="">ID </label>
						</div>
						<div class="col-4">		
							<input type="text" name="fileId" class="form-control"/>
						</div>
					</div>
					<div class="row pt-1 pb-1" >
						<div class="col-4">
							<label for="fileId" class="">DOC : </label>
						</div>
						<div class="col-4">	
						<div class="input-group mb-3">
							 <!--  <div class="custom-file">
							    <input type="file" name="fileOb" class="custom-file-input" id="fileOb">
							    <label class="custom-file-label" for="fileOb" aria-describedby="fileOb">Choose file</label>
							  </div>
							 -->
							  
							<input type="file" name="fileOb" class="form-control"/>
							  
							</div>	
						</div>
					</div>
					
								<div class="row pt-1 pb-1">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" value="UPLOAD" class="btn btn-dark">
						</div>
						<div class="col-4"></div>
					
					</div>
			
				</form>
				
		<table class="table table-bordered table-hover bg-light mt-4">
			<tr class="bg-warning">
				<th>ID</th>
				<th>NAME</th>
				<th class="text-center">LINK</th>
			</tr>
			
			<c:forEach items="${list }" var="ob">
				<tr>
					<td>${ob[0] }</td>					
					<td>${ob[1] }</td>					
					<td class="text-center"><a href="download?fid=${ob[0] }" class="btn btn-success btn-sm">DOWNLOAD</a></td>					
				</tr>
			</c:forEach>
		</table>
		</div>
	</div>
	</div>
</body>
</html>