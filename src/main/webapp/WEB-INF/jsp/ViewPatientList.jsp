<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Patient List</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" 
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
<style>
body {
	background-color: #f8f9fa;
}

.container {
	margin-top: 20px;
	background-color: white;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

h1 {
	margin-bottom: 20px;
}

th {
	background-color: #f8f9fa;
}

.btn-with-link {
	display: inline-block;
	margin-right: 5px;
}
</style>
</head>

<body>
	<div class="container">

		<h1><nav><a href="/home"><font size="2">Back to Home Page!</font></a></nav>Patient List</h1>
		<br />
		<nav><a href="viewPatientList"><font size="2">Refresh List!</font></a></nav>

		<div class="mb-3">
			<form action="/searchPatients" method="GET">
				<label for="name" class="form-label">Search by Name:</label> <input
					type="text" class="form-control" id="name" name="name"
					placeholder="Enter patient name">
				<button type="submit" class="btn btn-primary mt-2">Search</button>
			</form>
		</div>

		<form:form>
			<div class="table-responsive">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Id</th>
							<th>Name</th>
							<th>DOB</th>
							<th>Address</th>
							<th>IdProof</th>
							<th>ContactNumber</th>
							<th>EmergencyContactNumber</th>
							<th>PrimaryIllNess</th>
							<th>Symptoms</th>
							<th>HealthInsurance</th>
							<th>PreferredDoctor</th>
							<th>Gender</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="patient" items="${patientList}">
							<tr>
								<td>${patient.id}</td>
								<td>${patient.name}</td>
								<td>${patient.doB}</td>
								<td>${patient.address}</td>
								<td>${patient.idproof}</td>
								<td>${patient.contactNumber}</td>
								<td>${patient.emergencyContact}</td>
								<td>${patient.primaryIllness}</td>
								<td>${patient.symptoms}</td>
								<td>${patient.healthInsurance}</td>
								<td>${patient.preferredDoctor}</td>
								<td>${patient.gender}</td>
								<td>
									<button type="button" class="btn btn-success btn-with-link">
										<a href="/editPatient/${patient.id}" class="text-white">Edit</a>
									</button>
								</td>
								<td>
									<button type="button" class="btn btn-danger btn-with-link">
										<a href="/deletePatient/${patient.id}" class="text-white">Delete</a>
									</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</form:form>
		<div class="text-center mt-4">
			<a href="/addPatient" class="btn btn-primary">Add New Patient</a>
		</div>
	</div>
	<script th:inline="javascript">
		window.onload = function() {

			var msg = "${message}";
			console.log(msg);
			if (msg == "Save Success") {
				Command: toastr["success"]("Anime added successfully!!")
			} else if (msg == "Delete Success") {
				Command: toastr["success"]("Anime deleted successfully!!")
			} else if (msg == "Delete Failure") {
				Command: toastr["error"]
						("Some error occurred, couldn't delete user")
			} else if (msg == "Edit Success") {
				Command: toastr["success"]("Anime updated successfully!!")
			}

			toastr.options = {
				"closeButton" : true,
				"debug" : false,
				"newestOnTop" : false,
				"progressBar" : true,
				"positionClass" : "toast-top-right",
				"preventDuplicates" : false,
				"showDuration" : "300",
				"hideDuration" : "1000",
				"timeOut" : "5000",
				"extendedTimeOut" : "1000",
				"showEasing" : "swing",
				"hideEasing" : "linear",
				"showMethod" : "fadeIn",
				"hideMethod" : "fadeOut"
			}
		}
	</script>

</body>

</html>
