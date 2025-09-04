<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" integrity="undefined" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/style.css">


<style>

h1{
	text-align: center;
}
h2{
	margin-left:20px;
}

h4{
	margin-left: 10px;
}

.register{
	background-color: lightblue;
	padding-left: 20px;
	padding-bottom: 20px;
	padding-right: 20px;
	padding-top: 20px;
	display: flex;
	
	
}
.reg{
	width:700px;
	heigth:800px;
}
.log{
	border:2px solid black;
	width:400px;
	heigth:450px;
}
.col{

	background-color: white;
	border: 2px solid black;
	margin-right: 20px;
	
}

.col2{
	background-color: white;
	border: 2px solid black;
}
.form-group{
	margin-left: 10px;
	margin-right: 20px;
}

.form-control{
	width: 300px;
	height: 30px;
	margin-bottom: 15px;
}

.btn-primary{
	width: 100px;
	margin-left: 10px;
	margin-bottom: 20px;
	background-color: blue;
}

input[type="firstName"]{
    margin-bottom: 20px;
    width: 340px;

}
input[type="lastName"]{
    margin-bottom: 20px;
    width: 340px;

}

input[type="password"]{
    margin-bottom: 20px;
    width: 340px;

}
input[type="email"]{
    margin-bottom: 20px;
    width: 340px;
	margin-bottom:  10px;
}

</style>

</head>
<body>
	<h1>Welcome!</h1>
	
	<br>
	<div class="register">
		
		<div class="col">
			<h4>Register</h4>
			<hr>
			<form:form action="/register" method="POST" modelAttribute="newUser" class="reg">
				
				<div class="form-group">
					 <form:label path="firstName" class="form-label">First Name :</form:label>
              		 <form:errors path="firstName" class="text-danger" />
             		 <form:input type="firstName" path="firstName" class="form-control" />
				</div>
				
				<div class="form-group">
					 <form:label path="lastName" class="form-label">Last Name :</form:label>
              		 <form:errors path="lastName" class="text-danger" />
             		 <form:input type="lastName" path="lastName" class="form-control" />
				</div>
				
				<div class="form-group">
					 <form:label path="email" class="form-label">Email :</form:label>
              		 <form:errors path="email" class="text-danger" />
             		 <form:input type="email" path="email" class="form-control" />
				</div>
				<div class="form-group">
					<form:label path="password" class="form-label">Password :</form:label>
              		<form:errors path="password" class="text-danger" />
             		<form:input type="password" path="password" class="form-control"/>
				</div>
				
				<div class="form-group">
					<form:label path="confirm" class="form-label">Confirm Password:</form:label>
              		<form:errors path="confirm" class="text-danger" />
              		<form:input type="password" path="confirm" class="form-control"/>
				</div>
				<br><br>
				 <input type="submit" value="Register" class="btn btn-primary" />
				
			</form:form>
		
		</div>
		<br>
		<hr>
		
		 <div class="col-12">

          <form:form action="/login" method="POST" modelAttribute="newLogin" class="log">
          		<h4>Login</h4>
          		<hr>
	            <div class="form-group">
					 <form:label path="email" class="form-label">Email :</form:label>
              		 <form:errors path="email" class="text-danger" />
             		 <form:input type="email" path="email" class="form-control" />
				</div>

	            <div class="form-group">
					<form:label path="password" class="form-label">Password :</form:label>
              		<form:errors path="password" class="text-danger" />
             		<form:input type="password" path="password" class="form-control"/>
				</div>
            <input type="submit" value="Login" class="btn btn-primary" />
          </form:form>
        </div>
      </div>
	
	
	</div>
	
	



</body>
</html>