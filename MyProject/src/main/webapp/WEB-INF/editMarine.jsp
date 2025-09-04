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
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
h1{
	text-align: center;
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

	background-color: silver;
	border: 2px solid black;
	margin-right: 20px;
	width:400px;
	padding-left:20px;
	padding-right:20px;
}

.col2{
	background-color: white;
	border: 2px solid black;
}
.form-group{
	margin-left: 10px;
	margin-right: 20px;
	width:200px;
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
	background-color: lightblue;
}

input[type="userName"]{
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

	<div class="col">
			<h2>Edit Marine</h2>
			
			<nav class="nav">
				<a href="/dashboard">Dashboard </a> |
				<a href="/logout">Logout </a>
			</nav>
			
			<hr>
			<form:form action="/marine/${marine.id}" method="POST" modelAttribute="marine" class="reg">
				
				<div class="form-group">
					 <form:label path="name" class="form-label">Marine's Name:</form:label>
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
				 <input type="submit" value="Edit" class="btn btn-primary" />
				
			</form:form>
		
		</div>
	
</body>
</html>