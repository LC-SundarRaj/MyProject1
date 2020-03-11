<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="base">${pageContext.request.requestURL }</c:set>
<c:set var="url" value="${fn:replace(base, pageContext.request.requestURI, pageContext.request.contextPath) }" />


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
<link rel="stylesheet" href="../resources/css/style.css">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<!-- Tooltip -->
<script type="text/javascript">
	$(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	})
</script>




<!-- Menu Bar -->
<nav class="navbar navbar-expand-lg  bg-dark1  sticky-top">
  <a class="navbar-brand" href="#"><img src="../resources/images/logo.png" width="130" /></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    
    <form class="form-inline mr-auto  ">
        <p class="text-white ml-4 mt-2 pl-4 border-left border-dark text-secondary" style="margin-bottom:0px;"><small><i class="fa fa-phone-square" aria-hidden="true"></i> (12) 345 67890<br><i class="fa fa-envelope" aria-hidden="true"></i> info.warehouse@gmail.com</small></p>
    </form>
    
    <ul class="navbar-nav my-2 my-lg-0">
      <li class="nav-item active">
        <a class="nav-link btn btn-outline-light active mr-1 font-weight-bold" href="#"><i class="fa">&#xf015;</i> <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle btn btn-outline-light mr-1" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Shipment Type
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="${url}/shipment/register">Register</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="${url}/shipment/all">View All </a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="${url}/shipment/charts">Charts</a>
        </div>
      </li>
     <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle btn btn-outline-light mr-1" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Uom
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="${url}/uom/register">Register</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="${url}/uom/all">View All</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="${url}/uom/charts">Charts</a>
        </div>
      </li>
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle btn btn-outline-light mr-1" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Order Method
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="${url}/order/register">Register</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="${url}/order/all">View All</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="${url}/order/charts">Charts</a>
        </div>
      </li>
      
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle btn btn-outline-light mr-1" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Part
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="${url}/part/register">Register</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">View All</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Charts</a>
        </div>
      </li>
       <li class="nav-item active">
        <a class="nav-link btn btn-outline-light mr-1" href="${url}/docs/show">Documents</a>
      </li> 
    </ul>
  </div>
</nav>