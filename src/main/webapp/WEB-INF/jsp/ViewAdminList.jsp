<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Admin Users List</title>
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

		<h1><nav><a href="/admin"><font size="2">Back to admin Page!</font></a></nav>Existing Users List</h1>
		<br />
		<nav><a href="/viewAdminList"><font size="2">Refresh List!</font></a></nav>

		<div class="mb-3">
			<form action="/searchadmins" method="GET">
				<label for="email" class="form-label">Search by email</label> <input
					type="text" class="form-control" id="email" name="email"
					placeholder="Enter user email">
				<button type="submit" class="btn btn-primary mt-2">Search</button>
			</form>
		</div>


		<form:form>
			<div class="table-responsive">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Id</th>
							<th>User Name</th>
							<th>Email Id</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="admin" items="${adminList}">
							<tr>
								<td>${admin.id}</td>
								<td>${admin.username}</td>
								<td>${admin.email}</td>
								<td>
									<button type="button" class="btn btn-success btn-with-link">
										<a href="/editadmin/${admin.id}" class="text-white">Edit</a>
									</button>
								</td>
								<td>
									<button type="button" class="btn btn-danger btn-with-link">
										<a href="/deleteadmin/${admin.id}" class="text-white">Delete</a>
									</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</form:form>

		<div class="text-center mt-4">
			<a href="/addAdmin" class="btn btn-primary">Add New Admin</a>
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
