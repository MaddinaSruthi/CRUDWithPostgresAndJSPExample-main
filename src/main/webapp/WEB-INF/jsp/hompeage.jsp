<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hospital Management System</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

header {
	background-color: #333;
	color: #fff;
	padding: 10px;
}

nav {
	display: flex;
	justify-content: center;
	background-color: #444;
	padding: 10px;
}

nav a {
	color: #fff;
	text-decoration: none;
	padding: 10px 20px;
}

nav a:hover {
	background-color: #555;
}

.container {
	padding: 20px;
}


footer {
    position: relative;
    bottom: 0;
    text-align: center;
    background-color: #333;
    color: #fff;
    padding: 10px;
    width: 100%;
}

/* Image slider styling */

.image-slider {
    max-width: 100%;
    overflow: hidden;
    text-align: center; /* Center-align the slider */
}

.slider-container {
    display: flex;
    justify-content: center;
    transition: transform 0.5s ease-in-out;
}

.slider-image {
    max-width: 50%;
    height: auto;
}

.slider-buttons {
    display: flex;
    justify-content: center;
    margin-top: 10px;
    margin-bottom: 20px;
}

.slider-button {
    background: none;
    border: none;
    font-size: 20px;
    cursor: pointer;
}

.slider-button:focus {
    outline: none;
}

.active {
    display: block;
}
@media screen and (max-width: 768px) {
    footer {
        position: fixed;
        bottom: 0;
    }
}
</style>
<script>
	let slideIndex = 0;

	function showSlides() {
		let slides = document.getElementsByClassName("slider-image");
		for (let i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		slideIndex++;
		if (slideIndex > slides.length) {
			slideIndex = 1;
		}
		slides[slideIndex - 1].style.display = "block";
		setTimeout(showSlides, 3000); // Change image every 3 seconds
	}

	function changeSlide(n) {
		showSlidesManual(slideIndex += n);
	}

	function showSlidesManual(n) {
		let slides = document.getElementsByClassName("slider-image");
		if (n > slides.length) {
			slideIndex = 1;
		}
		if (n < 1) {
			slideIndex = slides.length;
		}
		for (let i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		slides[slideIndex - 1].style.display = "block";
	}

	window.onload = function() {
		showSlides();
	};
</script>
</head>
<body onload="showSlides()">
	<header>
		<center>
			<h1>Hospital Management System</h1>
		</center>
	</header>
	<nav>
		<a href="/patientdetails">Patient Details</a> <a href="/addPatient">Register
			New Patient</a> <a href="/patientManagement">Patient Management</a> <a
			href="/viewPatientList">View all Patient Details</a> <a
			href="/admin">Admin Portal</a>
	</nav>
	<div class="container">
		<center>
			<h2>Welcome to our Hospital Management System</h2>
			<p>This system helps in managing patients' information and
				providing administrative tools for hospital staff.</p>
		</center>
	</div>
	<div class="image-slider">
		<div class="slider-container">
			<img class="slider-image active"
				src="https://www.appletechsoft.com/wp-content/uploads/2020/06/Hospital-Management-System.jpg"
				alt="Hospital Management System"> 
			<img class="slider-image"
				src="https://et-edge.com/wp-content/uploads/2022/07/HMS.jpg"
				alt="connection system"> 
			<img class="slider-image"
				src="https://blog.ipistis.com/wp-content/uploads/2016/12/Hospital-Management-Software.jpg"
				alt="HMA">
		</div>
		<div class="slider-buttons">
			<button class="slider-button" onclick="changeSlide(-1)">&#10094;</button>
			<button class="slider-button" onclick="changeSlide(1)">&#10095;</button>
		</div>
	</div>

	<footer>
		<p>&copy; 2023 by V Adithya Sai. All Rights Reserved.</p>
	</footer>
</body>
</html>
