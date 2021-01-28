<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Healthy Food Home</title>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="bmi.css">
<script src="healthyFood.js"></script>
</head>

<body>
<form:form action="/bmi" method="POST">
<section id="title">
  <h4 class="text-center"> Welcome To Healthy Food </h4>
<nav class = "navbar navbar-expand-lg navbar-light">

   <a class="nav-brand" href=""><img src="logo.png" alt="" width="150" height="80"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
   <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
	<ul class="navbar-nav ml-auto">
		<li class="nav-item">
			 <a class= "nav-link text-secondary" href = "http://localhost:8080/home">Home</a>
		 </li>
		 <li class="nav-item">
			 <a class= "nav-link text-secondary" href = "">About</a>
		 </li>
		 <li class="nav-item">
			 <a class= "nav-link text-secondary" href = "http://localhost:8080/home">Logout</a>
		 </li>
	</ul>
	</div>
</nav>

</section>
 <div>
<section class="container">
<h6> Enter your weight and Height in pounds and inches respectively</h6>
  <div class="form-group">
			        <label for ="weight">Weight:</label>
			        <input type="text" name="weight" value="" required/>
			    </div>
			    <div class="form-group">
			       <label for ="height">Height:</label>
			        <input type="text" name="height" value="" required/>
			    </div>
			    
			     <div class="form-group">
			       <label for ="bodymass">Your BMI:</label>
			        <input type="text" name="bodymass" value="${bodyindex}" required/>
			    </div>
	
	<c:set var = "score" value="${bodyindex}"></c:set>
	<c:choose>
  		<c:when test="${score > 25.2 && score < 29.9}">
   			<h3 class="overweight">This is considered overweight</h3>
 	    </c:when>
  
		  <c:when test="${score < 18.5 && core > 0 }">
		    <h3 class ="underweight">This is considered underweight</h3>
		  </c:when>
  
		  <c:when test="${score < 24.9 && score > 18.5}">
		    <h3 class ="normal">This is considered normal. Keep The good work!</h3>
		  </c:when>
  
  		<c:when test="${score > 30.0}">
		    <h3 class ="obese">This is considered obese, please consult your doctor</h3>
		  </c:when>
		  
		  <c:otherwise>
		    <h3></h3>
		  </c:otherwise>
</c:choose>
		  
	<div class = "continue">
<button class="btn btn-danger">BMI</button>
<b><button class="btn btn-success"><a class= "next" href = "http://localhost:8080/foodselection">Continue</a></button></b>
</div>

</section>

</div>


<section class="container-fluids">
<p> haf@healthfood.org </p>
<div class="icon-lists">
     <a class="center" href=""><img src="instagram.PNG" alt="" width="20" height="30"></a>
     <a class="center" href=""><img src="facebook.PNG" alt="" width="20" height="30"></a>
     <a class="center" href=""><img src="tweeter.PNG" alt="" width="20" height="30"></a>
     <a class="center" href=""><img src="google.PNG" alt="" width="20" height="30"></a>
</div>

</section>



</form:form>




</body>
</html>