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
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>


<style>
    .container{
        
        border: 2px solid black;
        width: 480px;
        height: 550px;
        padding: 10px;
        background-color: lightgrey;
    }

    .body{
        
        height: 50px;
    }

</style>
<body>

    <div class="container">

        <div class="top">  
            
           
            <nav class="nav">
            	<a href="/dashboard">Dashboard </a>|
				<a href="/team/${team.id}/edit">Edit</a>|
				<a href="/team/${team.id}/delete">Delete</a>
			</nav>
        
        </div>

        <hr>
        
        <div class="body">
            <h4>Player Name: <span>${team.name} </span></h4>
        </div>

        <div class="body">
            <h4>Team Name: <span>${team.teamname} </span></h4>
        </div>
        
        <div class="body">
            <h4>Position: <span>${team.position} </span></h4>
        </div>
        <div class="body">
            <h4>Age: <span>${team.age} </span></h4>
        </div>
        
        <div class="body">
            <h4>Experience: <span>${team.experience} </span></h4>
        </div>
        
        


    </div>

    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>