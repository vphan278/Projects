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
     background-color: lightblue;
}
        
tr:nth-child(even){
     background-color: white;
}
tr:nth-child(odd){
     background-color: #ddd;
}

h2{
	text-align: center;
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
      <h1>Welcome,  ${thisUser.firstName}  ${thisUser.lastName}!</h1>  
      <br>
      <h2>Name of Football Players</h2>
      
      <div class="top">
      		
      		<img src="images\Patrick.jpg" alt="">
            <img src="images\images.jpg" alt="">
            <img src="images\downloadd.jpg" alt="">
            <img src="images\download.jpg" alt="">
      
      </div>

    </div>
    
    <div class="container">
		<nav class="nav">
			<a href="/add/team">Create New Player </a> |
			<a href="/logout">Logout </a>
		</nav>
		
		<br>
		
		<h3>Create only 49ers, Cowboys, and Raiders </h3>
		<table class="">
      		<thead>
		        <tr>
		          <th>id</th>
		          <th>Player Name</th>
		          <th>Team Name</th>
		          <th>Position</th>
		          <th>Age</th>
		          <th>Experience(yrs)</th>
		          <th>Edit</th>
		          <th>Delete</th>
		        </tr>
      		</thead>
      		
	      	<tbody>
	      	
		   <c:choose>
  			<c:when test="${allTeams.size() == 0}">
				<h3 class="gold">No Teams at this time</h3>
  			</c:when>

  				<c:otherwise>
					<c:forEach var="team" items="${allTeams}">
						<tr>
							<th scope="row">${team.id}</th>
				            <td><a href="/team/${team.id}"> ${team.name}</a></td>
				            <td><a href="/team/${team.id}/schedule/${team.teamname}"> ${team.teamname}</a></td>
				            
				            <!-- <td>${team.teamname}</td>-->
				            <td>${team.position}</td>
				            <td>${team.age}</td>
				          	<td>${team.experience}</td>
				          	
				            <!--  <td>${team.user.firstName} ${team.user.lastName}</td>-->
				            <td><a href="/team/${team.id}/edit">Edit</a></td>
				            <td><a href="/team/${team.id}/delete">Delete</a></td>
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