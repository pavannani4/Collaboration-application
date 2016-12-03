<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <link rel="shortcut icon" href="<c:url value='/resources/assets/ico/favicon.png'/>" />
    

    <title> Collaborative e-Site</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/resources/assets/css/bootstrap.css'/>" rel="stylesheet"/>

    <!-- Custom styles for this template -->
    <link href="<c:url value='/resources/assets/css/main.css'/>" rel="stylesheet" />
    <link rel="stylesheet" href="<c:url value='/resources/assets/css/icomoon.css'/>" />
    <link href="<c:url value='/resources/assets/css/animate-custom.css'/>" rel="stylesheet" />


    
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>
    
    <script src="<c:url value='/resources/assets/js/jquery.min.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/js/modernizr.custom.js'/>" ></script>
    
    <script type="text/javascript" src="<c:url value='/resources/assets/js/bootstrap.min.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/js/retina.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/js/jquery.easing.1.3.js'/>" ></script>
    <script type="text/javascript" src="<c:url value='/resources/assets/js/smoothscroll.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/js/jquery-func.js'/>" ></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
  </head>
<body>
<%@include file="header.jsp" %>
<div class="container">
<br>
			<div class="row">
				<br>
				<h1 class="centered">PROFILE</h1>
				<hr>
				<br>
			</div><!-- /row -->
			
			
  <form:form id="userProfileForm" class="form-horizontal" method="post" action="./profileSave" enctype="multipart/form-data"> 
		
				<div class="row">
    <!--  <div class="col-sm-2">
    
   <img src="<c:url value='/resources/assets/img/team/team01.jpg'/>"  class="img-rounded" alt="instrument2" height="160px" width="160px">
      
     </div>-->
       <div class="col-sm-2">
    <% String s=(String)request.getAttribute("img");
    System.out.println("image detail="+s);%>
   <c:set var="m" value="${requestScope.img}"/>
  
   <img src="${pageContext.request.contextPath}<c:out value="${m}"/>"  class="img-rounded" alt="instrument2" height="160px" width="160px">
  
     </div>
      <!--  <div class="col-sm-4">
      <h3>Chair site</h3>
      <p>product code:125642</p>
      <p>product price:85,000</p>
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Add cart</button>
        </div>
    </div>-->
    <c:forEach items="${studInfo}" var="student">
    <div class="col-sm-7 pull-right">
    <div class="span5">
         <div class="spanAddress">
			<address>
				<strong>Name:</strong> <span>${student.sname}</span><br>
				<strong>Username:</strong> <span>${student.username}</span><br>
				<strong>Password:</strong> <span>${student.password}</span><br>
				<strong>Gender:</strong> <span>${student.gender}</span><br>
				<strong>Number:</strong> <span>${student.number}</span><br>
				<strong>Email id:</strong><span>${student.email}</span><br>
				<strong>Address:</strong><span>${student.houseNumber}</span><span>${student.addressLine1}</span><span>${student.addressLine2}</span><span>${student.city}</span><span>${student.state}</span><span>${student.country}</span><span>${student.zipCode}</span><br>
				
			</address>
			<div class="col-sm-offset-2 col-sm-10">
				<a href="editStudent?id=${student.sid}" class="btn btn-info">Edit</a>
				</div>
		</div>	
		</div>
	</div>			
  </c:forEach>  
    
     <div class="row">
      <div class="form-group">
				<label class="col-sm-2 control-label">Upload Picture</label>
					<div class="col-sm-2">
						<input type="file" id="file" name="file" cssClass="form-control"/>
					</div>
				
			</div>
					
	 
			
			<div class="form-group">
					<div class="col-sm-2">
						<input type="submit" name="add" value="add photo" class="btn btn-success pull-center"/>
					</div>
					
			</div> 
			</div>			
			</form:form>
			
			</div>
<%@include file="footer.jsp" %>
</body>
</html>