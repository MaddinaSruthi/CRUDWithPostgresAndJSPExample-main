<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<head>
    <meta charset="ISO-8859-1">
    <title>Edit Patient</title>

    <link rel="stylesheet"
        	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
        <script
        	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script
        	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

</head>
<body>

    <div class="container">

        <h1 class="p-3"> Edit Patient </h1>

        <form:form action="/editSavePatient" method="post" modelAttribute="patient">

                    <div class="row">
                    	<div class="form-group col-md-12">
                    		<div class="col-md-6">
                    			<form:hidden path="id" class="form-control input-sm" />
                    		</div>
                    	</div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-3" for="name">Name</label>
                            <div class="col-md-6">
                                <form:input type="text" path="name" id="name"
                                    class="form-control input-sm" required="required" />
                            </div>
                        </div>
                    </div>
        
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-3" for="doB">DOB</label>
                            <div class="col-md-6">
                                <form:input type="text" path="doB" id="doB"
                                    class="form-control input-sm" required="required" />
                            </div>
                        </div>
                    </div>            
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-3" for="address">Address</label>
                            <div class="col-md-6">
                                <form:input type="text" path="address" id="address"
                                    class="form-control input-sm" required="required" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-3" for="idproof">ID Proof</label>
                            <div class="col-md-6">
                                <form:input type="text" path="idproof" id="idproof"
                                    class="form-control input-sm" required="required" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-3" for="contactNumber">Contact Number</label>
                            <div class="col-md-6">
                                <form:input type="number" path="contactNumber" id="contactNumber"
                                    class="form-control input-sm" required="required" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-3" for="emergencyContact">Emergency Contact Number</label>
                            <div class="col-md-6">
                                <form:input type="number" path="emergencyContact" id="emergencyContact"
                                    class="form-control input-sm" required="required" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-3" for="primaryIllness">Primary Ill Ness</label>
                            <div class="col-md-6">
                                <form:input type="text" path="primaryIllness" id="primaryIllness"
                                    class="form-control input-sm" required="required" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-3" for="symptoms">Symptoms</label>
                            <div class="col-md-6">
                                <form:input type="text" path="symptoms" id="symptoms"
                                    class="form-control input-sm" required="required" />
                            </div>
                        </div>
                    </div>
        
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-3" for="healthInsurance">Health Insurance</label>
                            <div class="col-md-6">
                                <form:input type="text" path="healthInsurance" id="healthInsurance"
                                    class="form-control input-sm" required="required" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-3" for="PreferredDoctor">Your Preffered doctor</label>
                            <div class="col-md-6">
                                <form:input type="text" path="PreferredDoctor" id="PreferredDoctor"
                                    class="form-control input-sm" required="required" />
                            </div>
                        </div>
                    </div>
        
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-3" for="gender">Your Gender</label>
                            <div class="col-md-6">
                                <form:input type="text" path="gender" id="gender"
                                    class="form-control input-sm" required="required" />
                            </div>
                        </div>
                    </div>

                    <div class="row p-2">
                    	<div class="col-md-2">
                    		<button type="submit" value="Register" class="btn btn-success">Save</button>
                    	</div>
                    </div>

                </form:form>

    </div>

    <script th:inline="javascript">
                window.onload = function() {

                    var msg = "${message}";
                    console.log(msg);
                    if (msg == "Edit Failure") {
        				Command: toastr["error"]("Something went wrong with the edit.")
        			}

        			toastr.options = {
                          "closeButton": true,
                          "debug": false,
                          "newestOnTop": false,
                          "progressBar": true,
                          "positionClass": "toast-top-right",
                          "preventDuplicates": false,
                          "showDuration": "300",
                          "hideDuration": "1000",
                          "timeOut": "5000",
                          "extendedTimeOut": "1000",
                          "showEasing": "swing",
                          "hideEasing": "linear",
                          "showMethod": "fadeIn",
                          "hideMethod": "fadeOut"
                        }
        	    }
            </script>

</body>

</html>