<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>


<html lang="en">

<head>
 	<title>Feedback Form</title>
 	<meta charset="utf-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">		
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="feedback.css">

</head>

<body>	
<section>
<div class="container">
<form action="https://formspree.io/f/xgepdqwv" method="POST" id="my-form">
<div class="view">
	<img src="feedbackImage.png">
</div>


	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			
			<h1 class="text-center mt-5 font-weight-bold">Feedback</h1>
			<hr class="bg-white">
			<h6 class="text-center">Please provide your feedback below:</h6>
			<h3 class="mt-4">How do you rate your overall experience?</h3>
			
		
				<label class="radio-inline"><input type="radio" name="experience" value="Bad">Bad</label>
				<label class="radio-inline"><input type="radio" name="experience" value="Average">Average</label>
				<label class="radio-inline"><input type="radio" name="experience" value="Good">Good</label>
			</div>
	 </div>					

			<div class="row">
				<div class="col-md-2"></div>
				<label class="col-md-4">Full Name*<br>
					<input type="text" id="text" required value ="" placeholder="your first name and last name" name= "fullname"></label>

					<label class="col-md-4">Email*<br>
					<input type="text" id="email" required value ="" placeholder="theprovider@gmail.com" name ="email"></label>
			</div>

			<div class="row">
				<div class="col-md-2"></div>
				<label class="col-md-4">Age*<br>
					<input type="number" id="text" required value="" placeholder="25" name="age"></label>

					<label class="col-md-4">Phone*<br>
					<input type="number" id="text" required value="" placeholder="+92123456789" name="phone"></label>
			</div>

			<div class="row">
				<div class="col-md-2"></div>
				<label class="col-md-8">Message*<br>
				<textarea id="message" required placeholder="Write yor message here" cols="48" rows="5" name="message"></textarea></label>
			</div>

				<div class="row">
				<div class="col-md-2"></div>
				<button type ="submit" class="btn btn-primary" style="width: 53.5%; position: absolute; margin-left: 15%;">Submit</button>
			</div>
	</form>
	
	

</div>
 <div id="status"></div>
</section>
<script src="feedback.js"></script>

</body>
</html>  