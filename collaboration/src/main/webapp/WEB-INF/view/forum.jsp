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
<br><br><br>
<div class="container">
<div class="alert alert-info">
<a href="listForum" class="btn btn-info">Back to all discussion topics</a>
  </div>

     
    <!-- <li><a data-toggle="tab" href="#menu1">Edit</a></li>
    <li><a data-toggle="tab" href="#menu1">Delete</a></li> -->
   
  
  <!-- <div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog modal-lg">-->
    
      <!-- Modal content-->
      <!--  <div class="modal-content">
        <div class="modal-header">-->
          <!--  <button type="button" class="close" data-dismiss="modal">&times;</button>-->
          <!-- <h4 class="modal-title">Create Topic to discuss</h4>
        </div>
        <div class="modal-body">
			
			<div align="center"> -->
        <form:form id="forumForm" commandName="frm" method="post" action="./createForum" enctype="multipart/form-data">
		<!--  <div class="form-group">
				 
					<div class="col-sm-5">
						<form:errors path="*"  cssStyle="color:red;"/>
					</div>
				</div>-->
		
                
            
          <div class="row">
			  <div class="form-group">
     <div class="col-xs-6">
  <label for="fusername">Username:</label>
  <form:input path="fusername" cssClass="form-control"  placeholder="Username....."/>
  </div>
   <div class="col-sm-3">
						<form:errors path="fusername"  cssStyle="color:red;"/>
					</div>
  
  </div>
  </div>
			 
			 <div class="row">
			  <div class="form-group">
     <div class="col-xs-6">
  <label for="ftitle">Title:</label>
  <form:input path="ftitle" cssClass="form-control" placeholder="Forum title....."/>
  </div>
  	<div class="col-sm-3">
						<form:errors path="ftitle"  cssStyle="color:red;"/>
					</div>
  
</div> 
	</div>	
				<!-- <div class="row">
				  <div class="col-sm-8 pull-right">
			<div class="form-group">
			<div class="col-xs-5">
				<label for="bloglist">Search:</label>
						<input type="text" id="forumlist" name="flist" placeholder="Search your topic....." class="form-control">
						</div>
						
				</div>     
			   </div>
			   
			  
		</div> -->
				
				
				
			     <div class="row">
			      <div class="form-group">
			       <div class="col-xs-8">
      <label for="fcontent">Enter your post:</label>
      <form:textarea cssClass="form-control" placeholder="Enter Content" rows="10" path="fcontent" />
     
      </div>
     <div class="col-sm-3">
						<form:errors path="fcontent"  cssStyle="color:red;"/>
					</div>
      </div>
		</div>		
   
      <div class="row">
      
      <div class="form-group">
			<div class="col-xs-5">
				<label for="category">Category:</label>
					<form:input path="category"  placeholder="Topic Subject...." cssClass="form-control"/>
						</div>
						 <div class="col-sm-3">
						<form:errors path="category"  cssStyle="color:red;"/>
					</div> 
				</div>     
      </div> 
			
			<div class="row">
      
      <div class="form-group">
			<div class="col-xs-5">
				<label for="fcreate_date">Publish date:</label>
					<form:input path="fcreate_date"  placeholder="dd/mm/yyyy hh:mi" cssClass="form-control"/>
						</div>
						 <div class="col-sm-5">
						<form:errors path="fcreate_date"  cssStyle="color:red;"/>
					</div> 
				</div>     
      </div> 
			
		<div class="row">
      
      <div class="form-group">
			<div class="col-xs-5">
				<!--  <label for="frate">Publish date:</label>-->
					<form:hidden path="frate" value="0" readonly="true" cssClass="form-control"/>
						</div>
						<!--   <div class="col-sm-5">
						<form:errors path="frate"  cssStyle="color:red;"/>
					</div>--> 
				</div>     
      </div> 
      	
			<div class="form-group">
			    <div class="col-sm-5">
			    <br>
			         <input type="submit" name="save" value="save" class="btn btn-info"/>
						 <a href="forum" class="btn btn-info margin-left25">cancel</a>
					</div>
					
		
		</div>
		
		     
            </form:form>
  
            
            </div>
		</div>
	</div>
	

	
	</div>
	</div>
  
  
  
  
  
  
  
  
 </div>
  
</div>
<section class="section-divider textdivider divider15">	</section>
<%@include file="footer.jsp" %>
</body>
</html>