<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!-- c:out ; c:forEach ; c:if -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   <!-- Formatting (like dates) -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   <!-- form:form -->
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
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
    margin-left: 20px;
}

h2{
	margin-left:20px;
}

h4{
	margin-left: 10px;
}

.register{
	background-color: silver;
	padding-left: 20px;
	padding-bottom: 20px;
	padding-right: 20px;
	padding-top: 20px;
	width: 500px;
}
.reg{
	width:700px;
	height:800px;
}
.log{
	border:2px solid black;
	width:450px;
    height:500px;
}
.col{

	background-color: white;
	border: 2px solid black;
	margin-right: 20px;
    width: 450px;
    height:500px;
	
}

.col2{
	background-color: white;
	border: 2px solid black;
}
.form-group{
	margin-left: 10px;
	margin-right: 20px;
    margin-top: 10px;
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

input[type="name"]{
    margin-bottom: 20px;
    width: 340px;

}
input[type="skill"]{
    margin-bottom: 20px;
    width: 340px;

}

input[type="player"]{
    margin-bottom: 20px;
    width: 340px;

}
input[type="gameday"]{
    margin-bottom: 20px;
    width: 340px;
	margin-bottom:  10px;
}

</style>

</head>
<body>
	<h1>Add a Marine</h1>
	
	<div class="register">
		<nav>
			<a href="/add/marine">Create a Marine</a> |
			<a href="/logout">Logout</a>
		</nav>
		<div class="col">
			
			<form:form action="/add/marine" method="POST" modelAttribute="marine" class="reg">
				
				<div class="form-group">
					<form:label path="name" class="form-label">Marine Name:</form:label>
                    <form:errors path="name" class="text-danger" />
                    <form:input type="text" path="name" class="form-control" />
				</div>
				
				<div class="form-group">
					<form:label path="mos" class="form-label">MOS:</form:label>
                    <form:errors path="mos" class="text-danger" />
                    <form:input type="text" path="mos" class="form-control" />
				</div>
				
				<div class="form-group">
					<form:label path="ranks" class="form-label">Rank:</form:label>
                    <form:errors path="ranks" class="text-danger" />
                    <form:input type="text" path="ranks" class="form-control" />
				</div>
				
				<div class="form-group">
					<form:label path="deployment" class="form-label">Deployment:</form:label>
                    <form:errors path="deployment" class="text-danger" />
                    <form:input type="text" path="deployment" class="form-control" />
				</div>
				
			
				
				<br><br>
				<input type="hidden" value="${logged}" name="user"/>	
				<input type="submit" value="Submit" class="btn btn-primary" />
				
			</form:form>
		
		</div>
		
		
		
	
	</div>
	
	



</body>
</html>