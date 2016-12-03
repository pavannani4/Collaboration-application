<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <link rel="stylesheet" href="<c:url value='assets/css/icomoon.css'/>" />
    <link href="<c:url value='assets/css/animate-custom.css'/>" rel="stylesheet" />


    
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>
    
    <script src="<c:url value='/resources/assets/js/jquery.min.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/js/modernizr.custom.js'/>" ></script>
    
    <script type="text/javascript" src="<c:url value='/resources/assets/js/bootstrap.min.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/js/retina.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/js/jquery.easing.1.3.js'/>" ></script>
    <script type="text/javascript" src="<c:url value='/resources/assets/js/smoothscroll.js'/>" ></script>
	<script type="text/javascript" src="<c:url value='/resources/assets/js/jquery-func.js'/>" ></script>
	<link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>"/>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/js/jquery-2.2.3.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.js"></script>
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
 <script src="resources/app.js" type="text/javascript"></script>
	
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
    
  </head>

<body>
<%--<%@include file="header.jsp"%>--%>
<div class="container">


  <div class="pull-center">
  <div style="color: teal; font-size: 30px">Student  
   Details</div>  
   
   <div class="row">
  
  <div class="container" ng-init="getStudentinf();" ng-app="sortApp" ng-controller="mainController">

	<form>
	<div class="form-group">
		<div class="input-group">
			<div class="input-group-addon">
				<i class="fa fa-search"></i>
			</div>
			<input type="text" class="form-control" placeholder="Search the name" ng-model="na"/>
		</div>
		
	</div>
</form>



	<div class="table-responsive">
		<table class="display table">
		<thead>  
          <tr> 
          <th>Student Id</th>  
          <th>Student name</th>  
          <th>Password</th>
          <th>DOB</th>
          <th>Gender</th>  
          <th>Number</th>    
          <th>Email</th>  
          <th>Address</th> 
          <th>Update Record</th>  
          <th>Delete Record</th> 
          </tr>  

        </thead>  
        <tbody>  
         	<tr ng-repeat="c in studls | filter:na">
         		<td>{{c.sid}}</td>
         		<td>{{c.sname}}</td>
         		<td>{{c.password}}</td>
         		<td>{{c.dob}}</td>
         		<td>{{c.gender}}</td>
         		<td>{{c.number}}</td>
         		<td>{{c.email}}</td>
         		<td>{{c.studentAddress}}</td>
         		<!--  <td>{{c.studentAddress.houseNumber}}{{c.studentAddress.addressLine1}}{{c.studentAddress.addressLine2}}{{c.studentAddress.city}}{{c.studentAddress.state}}{{c.studentAddress.country}{{c.studentAddress.zipCode}}}</td>-->
         		<td><a type="button" href="editStudent?id={{c.sid}}" class="btn btn-info">EDIT</a></td>
         		<td><a type="button" href="deleteStudent?id={{c.sid}}" class="btn btn-danger">DELETE</a></td>
         		
         		
         	</tr>
		</tbody>
		</table>
	
	</div>
	
  
 <!--   <c:if test="${!empty studentList}">  
   <table border="1" bgcolor="black" width="600px">  
    <tr  
     style="background-color: teal; color: white; text-align: center;"  
     height="40px">  
       
     <td>Student Id</td>  
     <td>Student name</td>  
     <td>Password</td>
     <td>DOB</td>
     <td>Gender</td>  
     <td>Number</td>    
     <td>Email</td>  
     <td>Address</td> 
     <td>Update Record</td>  
     <td>Delete Record</td> 
     
    </tr>  
    <c:forEach items="${studentList}" var="student">  
     <tr  
      style="background-color: white; color: black; text-align: center;"  
      height="30px">  
        
      <td><c:out value="${student.sid}" />  
      </td>  
      <td><c:out value="${student.sname}" />  
      </td>  
      <td><c:out value="${student.password}" />  
      </td> 
      <td><c:out value="${student.dob}" />  
      </td> 
      <td><c:out value="${student.gender}" />  
      </td>   
      <td><c:out value="${student.number}" />  
      </td>   
      <td><c:out value="${student.email}" />  
      </td>  
       <td><c:out value="${student.studentAddress}" />  
      </td>  
      <td><a href="editStudent?id=${student.sid}">Edit</a></td>  
      <td><a href="deleteStudent?id=${student.sid}">Delete</a></td>
     </tr>  
    </c:forEach>  
   </table>  
  </c:if> --> 
  </div>
  </div>
  <a href="register">Click here to add new Student</a>  
  </div>
  </div>
 <%-- <%@include file="footer.jsp" %>--%>
</body>
</html>