<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Document Upload Page</title>
<style>
	<%@ include file ="style.css"  %>
</style>
</head>
<body>
	<h1>Welcome to Document Upload Page</h1>
	
	<div id="wrapper" >
		<!-- <div id="link"><a href="all">View All</a></div> -->
		<form action="save" method="post" enctype="multipart/form-data">
			<div id="fblock" >
				<div id="lft">
					<h4>ID :</h4>
				</div>
				<div id="rht">
					<input type="text" name="fileId"/>
				</div>
			</div>
			<div id="fblock" >
				<div id="lft">
					<h4>DOC :</h4>
				</div>
				<div id="rht">
					<input type="file" name="fileOb"/>
				</div>
			</div>
			<div id="fblock">
				<input type="submit" value="UPLOAD" class="button">
			</div>
			
		</form>
		<%-- <h5>${message}</h5> --%>
		<br><br><br>
		<table border="1">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>LINK</th>
			</tr>
			
			<c:forEach items="${list }" var="ob">
				<tr>
					<td>${ob[0] }</td>					
					<td>${ob[1] }</td>					
					<td><a href="download?fid=${ob[0] }">DOWNLOAD</a></td>					
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>