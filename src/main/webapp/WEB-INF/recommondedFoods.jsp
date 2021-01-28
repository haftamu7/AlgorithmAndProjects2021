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
<script src="healthyFood.js"></script>
</head>

<body>
<form:form action="/foodselection" method="POST">
<section id="title">
  <h4 class="text-center"> Food Choices For Better Health</h4>
<nav class = "navbar navbar-expand-lg navbar-light navbar-fixed-top">

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
			 <a class= "nav-link text-secondary" href = "http://localhost:8080/home">Logout</a>
		 </li>
		  <li class="nav-item">
			 <a class= "nav-link text-secondary" href = "http://localhost:8080/feedback">FeedBack</a>
		 </li>
	</ul>
	</div>
</nav>

</section>





<section class ="container">
<div class = "row">
<div class="col-lg-6">
<h2>Healthy Ways to Gain Weight If You Are Underweight.</h2>
<a href="https://familydoctor.org/healthy-ways-to-gain-weight-if-youre-underweight/"><img src="underweightfood.jpg" class="rounded mx-auto d-block" alt="fruits" width="300" height="300"></a>
<p>Being underweight is not good for you. It could cause:
Nutritional deficiencies: if you're underweight, it's likely that you're not eating a healthy, balanced diet, which can lead to you lacking nutrients that your body needs to work properly. Calcium, for example, is important for the maintenance of strong and healthy bones. If you do not get enough calcium, you risk developing osteoporosis (fragile bone disease). If you do not get enough iron, you may develop anaemia, which can make you feel drained and tired.
Weakened immune system: your immune system is not 100% when you're underweight, so you're more likely to catch a cold, flu or other infections.
</p>
<a class= "underweight" href = "https://www.nhs.uk/live-well/healthy-weight/advice-for-underweight-adults/#:~:text=Weighing%20too%20little%20can%20contribute,weight%20may%20be%20too%20low.">For more... </a>
<h4>Recommended Exercises</h4>
<a href="https://www.youtube.com/watch?v=FDpM-CGMXcw"> Exercise for Women</a>
<a href="https://www.youtube.com/watch?v=u6PNjgn1ocM">Exercise for Women</a>
</div>
<div class="col-lg-6">
<h2>Healthy Ways to lose Weight If You Are Overweight or considered as Obese</h2>
<img src="loseweight.jpg" class="rounded mx-auto d-block" alt="fruits" width="300" height="300">
<div>
<p>Too much weight can take a toll on your body, especially your heart.
The good news is that there are steps you can take to get healthier and even losing a little body weight can start you on the right path.</p>
<a class= "obesity" href = "https://www.cdc.gov/obesity/index.html">For more... </a>
<h4>Recommended Exercises</h4>
  <a href="https://www.youtube.com/watch?v=8IwNI8r-jo0">Click to watch</a>
</div>
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
<h5> Healthy Food For Healthy Life.</h5>
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