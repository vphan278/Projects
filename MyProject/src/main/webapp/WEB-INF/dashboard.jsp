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
    <meta charset="UTF-8" />
    <title>Login and Registration page</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    
<style>
h1{
	text-align:center;
}

table{
	align-items:left;
	width:1200px;
    margin-bottom: 30px;
}

caption,th{
     text-align: left;
     margin-bottom: 5px;
     }

table, th, td{
     border:1px solid black;
     border-collapse: collapse;
     padding:10px ;
}

th{
     background-color: silver;
}
        
tr:nth-child(even){
     background-color: white;
}
tr:nth-child(odd){
     background-color: #ddd;
}

.top img{
	height: 270px;
    width: 250px;
    margin: 15px;
    margin-left: 25px;
}
 


</style>
  </head>

  <body>
    <div class="container mt-5">
      <!--<h1>Welcome,  ${thisUser.firstName}  ${thisUser.lastName}!</h1>-->
      
      <div class="top">
      		<h1>Military Service</h1>
      		<img src="images\humvee.jpg" alt="">
            <img src="images\self.jpg" alt="">
            <img src="images\reading.jpg" alt="">
            <img src="images\group.jpg" alt="">
      
      </div>
      <div>
      	
      </div>
      
      <br>
      <br>
      <br>
      
      <h1>Table of Organization(Marines) </h1>
      

    </div>
    
    <div class="container">
		<nav class="nav">
			<a href="/add/marine">Create New Marine </a> |
			<a href="/logout">Logout </a>
		</nav>
		<br>
		<table class="dashboard">
      		<thead>
		        <tr>
		          <th>id</th>
		          <th>Name of Marine</th>
		          <th>Military Occupation Specialty(MOS)</th>
		          <th>Rank</th>
		          <th>Deployment</th>
		          <th>Edit</th>
		          <th>Delete</th>
		        </tr>
      		</thead>
      		
	      	<tbody>
	      	
		   <c:choose>
  			<c:when test="${allMarines.size() == 0}">
				<h3 class="gold">No Marines at this time</h3>
  			</c:when>

  				<c:otherwise>
					<c:forEach var="marine" items="${allMarines}">
						<tr>
							<th scope="row">${marine.id}</th>
				            <td><a href="/marine/${marine.id}"> ${marine.name}</a></td>
				            <td>${marine.mos}</td>
				            <td>${marine.ranks}</td>
				            <td>${marine.deployment}</td>
				          
				            <!--  <td>${team.user.firstName} ${team.user.lastName}</td>-->
				            <td><a href="/marine/${marine.id}/edit">Edit</a></td>
				            <td><a href="/marine/${marine.id}/delete">Delete</a></td>
						</tr>
					</c:forEach>	
  				</c:otherwise>
			</c:choose>
			
		     
	      	</tbody>
    	</table>
		
		
	</div>
    
    


    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>