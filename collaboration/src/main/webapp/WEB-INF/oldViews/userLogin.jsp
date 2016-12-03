<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form name="loginForm" commandName="stud" class="form-horizontal" method="post" action="./loginCheck"> 
<div class="form-group">
				<label for="username" class="col-sm-2 control-label">Username:</label><span style="color:red;">${usrErr}</span>
					<div class="col-sm-5">
						<form:input path="username" placeholder="Username...." cssClass="form-control"/>
						</div>
						<div class="col-sm-3">
						<form:errors path="username"  cssStyle="color:red;"/>
					</div>
				</div>
			<div class="form-group">
				<label for="password" class="col-sm-2 control-label"> Password:</label><span style="color: red;">${pwdErr}</span>
					<div class="col-sm-5">
						<form:password path="password" placeholder="Password...." value="${studPassword.password}" cssClass="form-control"/>
						</div>
						<div class="col-sm-3">
						<form:errors path="password"  cssStyle="color:red;"/>
					</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-5">
						<form:hidden path="sid" cssClass="form-control"/>
						</div>
				</div>
			</form:form>
</body>
</html>