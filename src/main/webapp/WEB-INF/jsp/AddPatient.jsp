<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Patient</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">

</head>
<body>
	<div class="container">

		<h1 class="p-3">Add the Patient</h1>

		<form:form name = "patientInformation" action="/savePatient" method="post"
			modelAttribute="patient">

			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
					<label for="name">Name*</label>
						<form:input type="text" path="name" id="name"
							placeholder="Enter Your Full Name..."
							class="form-control input-sm" required="required"
							style="width: 400px;" />
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
					<label for="doB">DOB*</label>
						<form:input type="date" path="doB" id="doB"
							placeholder="Enter Your Full Name..."
							class="form-control input-sm" required="required"
							style="width: 400px;" />
					</div>
				</div>

				<div class="col-md-6">
					<div class="form-group">
					<label for="address">Address*</label>
						<form:input type="text" path="address" id="address"
							placeholder="Street, City, Country, PIN..."
							class="form-control input-sm" required="required"
							style="width: 400px;" />
					</div>
				</div>
			
				<div class="col-md-6">
					<div class="form-group">
					<label for="idproof">ID Proof*</label>
						<form:input type="text" path="idproof" id="idproof"
							placeholder="Enter Aadhar Id Number"
							class="form-control input-sm" required="required"
							style="width: 400px;" />
					</div>
				</div>

				<div class="col-md-6">
					<div class="form-group">
					<label for="contactNumber">Contact Number*</label>
						<form:input type="text" path="contactNumber" id="contactNumber"
							placeholder="+123-45-678" class="form-control input-sm"
							required="required" style="width: 400px;" />
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="form-group">
					<label for="emergencyContact">Emergency Contact Number</label>
						<form:input type="text" path="emergencyContact"
							id="emergencyContact" placeholder="+123-45-678"
							class="form-control input-sm" required="required"
							style="width: 400px;" />
					</div>
				</div>
			
				<div class="col-md-6">
					<div class="form-group">
					<label for="primaryIllness">Primary illness your Suffering with</label>
						<form:input type="text" path="primaryIllness" id="primaryIllness"
							placeholder="Enter illness" class="form-control input-sm"
							required="required" style="width: 400px;" />
					</div>
				</div>

				<div class="col-md-6">
					<div class="form-group">
					<label for="symptoms">Symptoms</label>
						<form:input type="text" path="symptoms" id="symptoms"
							placeholder="Enter symptoms" class="form-control input-sm"
							required="required" style="width: 400px;" />
					</div>
				</div>

				<div class="col-md-6">
					<div class="form-group">
					<label for="healthInsurance">Health Insurance</label>
						<form:input type="text" path="healthInsurance"
							id="healthInsurance" placeholder="Enter healthInsurance yes/No"
							class="form-control input-sm" required="required"
							style="width: 400px;" />
					</div>
				</div>

				<div class="col-md-6">
					<div class="form-group">
					<label for="PreferredDoctor">Your Preferred doctor Gender</label>
						<form:input type="text" path="PreferredDoctor"
							id="PreferredDoctor"
							placeholder="Enter your Preferred doctor Gender Male/Female"
							class="form-control input-sm" required="required"
							style="width: 400px;" />
					</div>
				</div>

				<div class="col-md-6">
					<div class="form-group">
					<label for="gender">Your Gender</label>
						<form:input type="text" path="gender" id="gender"
							placeholder="Your Gender Male/Female"
							class="form-control input-sm" required="required"
							style="width: 400px;" />
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-6">
				    <div class="form-group">
				        <label for="aname">Accompanying Person1 Name*</label>
				        <form:input type="text" path="aname" id="aname"
				            placeholder="Enter Full Name..."
				            class="form-control input-sm" required="required"
				            style="width: 400px;" />
				    </div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
					<label for="acontactNumber">Accompanying Person1 Contact Number*</label>
						<form:input type="text" path="acontactNumber" id="acontactNumber"
							placeholder="+123-45-678" class="form-control input-sm"
							required="required" style="width: 400px;" />
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="form-group">
					<label for="aidproof">Accompanying Person1 ID Proof*</label>
						<form:input type="text" path="aidproof" id="aidproof"
							placeholder="Enter Aadhar Id Number "
							class="form-control input-sm" required="required"
							style="width: 400px;" />
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
					<label for="bname">Accompanying Person2 Name*</label>
						<form:input type="text" path="bname" id="bname"
							placeholder="Enter Your Full Name..."
							class="form-control input-sm" required="required"
							style="width: 400px;" />
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="form-group">
					<label for="bcontactNumber">Accompanying Person2 Contact Number*</label>
						<form:input type="text" path="bcontactNumber" id="bcontactNumber"
							placeholder="+123-45-678" class="form-control input-sm"
							required="required" style="width: 400px;" />
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="form-group">
					<label for="bidproof">Accompanying Person2 ID Proof*</label>
						<form:input type="text" path="bidproof" id="bidproof"
							placeholder="Enter Aadhar Id Number"
							class="form-control input-sm" required="required"
							style="width: 400px;" />
					</div>
				</div>
			</div>

			<div class="row text-center p-2">
				<div class="col-md-12">
					<button type="submit" value="Register" class="btn btn-success" onclick="Valid();">Save</button>
				</div>
			</div>

		</form:form>

	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

	<script>
	function Valid() {

		var userId = document.forms["patientInformation"]["contactNumber"].value;

		if (userId.length != 10 ) {

          alert('Please Enter mobile number correctly with 10 digits');
        }

		var userId = document.forms["patientInformation"]["idproof"].value;

		if (userId.length != 12 ) {

  		alert('Aadhar number Incorrect Please provide 12 digit Aadhar number');
		}

		var userId = document.forms["patientInformation"]["acontactNumber"].value;

		if (userId.length != 10 ) {

  		alert('Please Enter Accompaning person 1 mobile number correctly with 10 digits');
		}

		var userId = document.forms["patientInformation"]["aidproof"].value;

		if (userId.length != 12 ) {

  		alert('Accompaning person 1 Aadhar number Incorrect Please provide 12 digit Aadhar number');
		}
	
		var userId = document.forms["patientInformation"]["bcontactNumber"].value;

		if (userId.length != 10 ) {

  		alert('Please Enter Accompaning person 2 mobile number correctly with 10 digits');
		}
	
		var userId = document.forms["patientInformation"]["bidproof"].value;

		if (userId.length != 12 ) {

  		alert('Accompaning person 2 Aadhar number Incorrect Please provide 12 digit Aadhar number');
		}
	}

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