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
<link rel="stylesheet" href="healthyFood.css">
<script src="/healthyfood.js"></script>

</head>

<body>
<form:form action="/fruitsHome" method="POST">
<section id="title">
  <h4 class="text-center"> Healthy Food For Healthy Life Association</h4>
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
			 <a class= "nav-link text-secondary" href = "http://localhost:8080/aboutus">About</a>
		 </li>
		 <li class="nav-item">
			 <a class= "nav-link text-secondary" href = "http://localhost:8080/register">Register</a>
		 </li>
		 <li class="nav-item">
			 <a class= "nav-link text-secondary" href = "http://localhost:8080/login">Login</a>
		 </li>
	</ul>
	</div>
</nav>

</section>


<section>
<img src="fruits.PNG" class="rounded mx-auto d-block" alt="fruits" width="1450" height="240">
</section>



<section class ="container">
<div class ="message">
<h4>__________________________________________________________________________________________________</h4>
	<h2> Healthy Food Education and Community</h2>
	<p> Your trusted source of for functional food information</p>
<h4>__________________________________________________________________________________________________</h4>
</div>
</section>

<section class ="container">
<div class = "row">
<div class="col-lg-6">
<h2> Why Do We Focus On Functional Food?</h2>
	<p> We exist to ensure everyone, everywhere has an equal chance to take control of their own health and wellness.  Functional foods are an important component of healthy, nutritious diets. A diet rich in functional foods promotes a healthy body, as well as a healthy mind.
We recognize that access to nutritional information is limited by technological reach, engagement, and connection, and the promotion of sustainability practices is often a second thought for many communities. IFFA was created to bring information and engagement direct to those that need it the most. 
Grow with us.</p>
</div>
<div class="col-lg-6">
<img src="planting.PNG" class="rounded mx-auto d-block" alt="fruits" width="300" height="300">

</div>
</div>
</section>




<section class = "container-fluid">
	 <h2> Our Amazing Partners.</h2>
<div class="row">
	<div class="col-lg-4">
     <a class="partner" href="https://mtmanfarms.com/"><img src="mountain-man-logo-web.png" alt="" width="200" height="150"></a>
     </div>
     <div class="col-lg-4">
     <a class="partner" href="https://beyondmicrogreens.com/"><img src="colorado.PNG" alt="" width="200" height="150"></a>
     </div>
     <div class="col-lg-4">
     <a class="partner" href="http://www.growlocalcolorado.org/"><img src="beyond.PNG" alt="" width="200" height="150"></a>
     </div>
</div>

</section>


<section class="container">
<h5> Healthy Food For Health Life.</h5>
<p> haf@healthfood.org </p>
<div class="icons">

     <a class="center" href=""><img src="instagram.PNG" alt="" width="20" height="30"></a>
     <a class="center" href=""><img src="facebook.PNG" alt="" width="20" height="30"></a>
     <a class="center" href=""><img src="tweeter.PNG" alt="" width="20" height="30"></a>
     <a class="center" href=""><img src="google.PNG" alt="" width="20" height="30"></a>
</div>

</section>

</form:form>


</body>
</html>