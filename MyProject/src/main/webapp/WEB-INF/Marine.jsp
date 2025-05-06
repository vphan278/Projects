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
				<a href="/marine/${marine.id}/edit">Edit</a>|
				<a href="/marine/${marine.id}/delete">Delete</a>
			</nav>
        
        </div>

        <hr>
        
        <div class="body">
            <h4>Marine's Name: <span>${marine.name} </span></h4>
        </div>

        <div class="body">
            <h4>MOS: <span>${marine.mos} </span></h4>
        </div>
        
        <div class="body">
            <h4>Rank: <span>${marine.ranks} </span></h4>
        </div>
        <div class="body">
            <h4>Deployment: <span>${marine.deployment} </span></h4>
        </div>
        
        


    </div>

    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>