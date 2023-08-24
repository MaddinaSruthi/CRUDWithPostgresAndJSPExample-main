<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome to Add Users Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
<style>
body {
	background-color: #f8f9fa;
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 0;
}

.row.text-center {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 20px;
}

.container {
	background-color: #afafaf;
	border-radius: 10px;
	padding: 20px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 500px;
}

h1 {
	font-size: 24px;
	margin-bottom: 20px;
	text-align: center;
}

label {
	display: block;
	width: 400px;
}

.form-group {
	margin-bottom: 2px;
	align-content: center;
}

/* Responsive adjustments */
@media ( max-width : 776px) {
	.form-group {
		margin-bottom: 15px;
	}
	h1 {
		font-size: 20px;
	}
}
</style>
</head>
<body>
	<div class="container">

		<h1 class="p-3">Add the New User</h1>

		<form:form action="/saveAdmin" method="post"
			modelAttribute="admin">

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-9" for="username">Name*</label>
					<div class="col-md-9">
						<form:input type="text" path="username" id="username"
							placeholder="Enter Your Full Name..."
							class="form-control input-sm" required="required"
							style="width: 400px;" />
					</div>
				</div>
			</div>
			
			<div class="row">
			    <div class="form-group col-md-12">
			        <label class="col-md-9" for="email">Email id*</label>
			        <div class="col-md-9">
			            <input type="text" id="email" name="email" placeholder="Enter Your Email id..."
						       class="form-control input-sm" required="required"
						       style="width: 400px;" oninput="validateEmail()">
			            <small class="form-text text-muted">Please enter a valid email address.</small>
			        </div>
			    </div>
			</div>

			
			<div class="row">
			    <div class="form-group col-md-12">
			        <label class="col-md-9" for="role">Select Role*</label>
			        <div class="col-md-9">
			            <select id="role" name="role" class="form-control input-sm" required="required" style="width: 400px;">
			                <option value="" disabled selected>Select a Role...</option>
			                <option value="admin">Admin</option>
			                <option value="Doctor">Doctor</option>
			                <option value="Employees">Employees</option>
			            </select>
			        </div>
			    </div>
			</div>


			<div class="row text-center p-2">
				<div class="col-md-2">
					<button id="submit" type="submit" value="Register" class="btn btn-success">Save</button>
				</div>
			</div>

		</form:form>

	</div>
	
	<script>
		function validateEmail() {
			  const emailInput = document.getElementById('email');
			  const emailValidationMessage = document.querySelector('#email + small');
	
			  const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
	
			  if (!emailRegex.test(emailInput.value)) {
			    emailValidationMessage.textContent = 'Please enter a valid email address.';
			    const submitButton = document.getElementById('submit');
			    submitButton.disabled = true;
			    return false;
			  } else {
			    emailValidationMessage.textContent = '';
			    const submitButton = document.getElementById('submit');
			    submitButton.disabled = false;
			    return true;
			  }
			}
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

	<script>
		$(document).ready(function() {
			if ("${message}" === "Save Failure") {
				toastr.error("Something went wrong with the save.");
			}

			toastr.options = {
				closeButton : true,
				debug : false,
				newestOnTop : false,
				progressBar : true,
				positionClass : "toast-top-right",
				preventDuplicates : false,
				showDuration : "300",
				hideDuration : "1000",
				timeOut : "5000",
				extendedTimeOut : "1000",
				showEasing : "swing",
				hideEasing : "linear",
				showMethod : "fadeIn",
				hideMethod : "fadeOut"
			};
		});
	</script>
</body>

</html>