<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<html lang="en">
<head>
<title>Electricity Billing System</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet"
	href="assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
<!-- MAIN CSS -->
<link rel="stylesheet" href="assets/css/main.css">
<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
<link rel="stylesheet" href="assets/css/demo.css">
<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
	rel="stylesheet">
<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="assets/img/favicon.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>

<body>
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<!-- WRAPPER -->
	<div id="wrapper">
		<jsp:include page="admin-header.jsp"></jsp:include>
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">Customer Electricity Application Form</h3>
					<form action="NewElectricityConnection" method="post">
						<div class="row">
							<div class="col-md-12">
								<%
									String message = (String) session.getAttribute("success");
									if (message != null) {
										session.removeAttribute("success");
								%>
									<div class="alert alert-success" id="success">Customer
										electricity account created successfully.</div>
								<%
									}
								%>
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Customer Electricity Application
											Form</h3>
									</div>

									<div class="panel-body">
										<div class="form-row">
											<div class="form-group col-md-4">
												<label for="firstname">First Name</label> <input type="text"
													class="form-control" id="firstname" name="firstname"
													placeholder="First Name" required>
											</div>
											<div class="form-group col-md-4">
												<label for="middilename">Middle Name</label> <input
													type="text" class="form-control" id="middilename"
													name="middilename" placeholder="Middle Name" required>
											</div>
											<div class="form-group col-md-4">
												<label for="lastname">Last Name</label> <input type="text"
													class="form-control" id="lastname" name="lastname"
													placeholder="Last Name" required>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-4">
												<label for="atpost">At-Post</label> <input type="text"
													class="form-control" id="atpost" name="atpost"
													placeholder="At Post" required>
											</div>
											<div class="form-group col-md-4">
												<label for="plotno">Plot No</label> <input type="text"
													class="form-control" id="plotno" name="plotno"
													placeholder="Plot No" required>
											</div>
											<div class="form-group col-md-4">
												<label for="taluka">Taluka</label> <input type="text"
													class="form-control" id="taluka" name="taluka"
													placeholder="Taluka" required>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-4">
												<label for="district">District</label> <input type="text"
													class="form-control" id="district" name="district"
													placeholder="District" required>
											</div>
											<div class="form-group col-md-4">
												<label for="pincode">Pincode</label> <input type="text"
													class="form-control" id="pincode" name="pincode"
													placeholder="Pincode" required>
											</div>
											<div class="form-group col-md-4">
												<label for="state">Select State</label> <select
													class="form-control" name="state">
													<option value="Andhra Pradesh">Andhra Pradesh</option>
													<option value="Andaman and Nicobar Islands">Andaman
														and Nicobar Islands</option>
													<option value="Arunachal Pradesh">Arunachal
														Pradesh</option>
													<option value="Assam">Assam</option>
													<option value="Bihar">Bihar</option>
													<option value="Chandigarh">Chandigarh</option>
													<option value="Chhattisgarh">Chhattisgarh</option>
													<option value="Dadar and Nagar Haveli">Dadar and
														Nagar Haveli</option>
													<option value="Daman and Diu">Daman and Diu</option>
													<option value="Delhi">Delhi</option>
													<option value="Lakshadweep">Lakshadweep</option>
													<option value="Puducherry">Puducherry</option>
													<option value="Goa">Goa</option>
													<option value="Gujarat">Gujarat</option>
													<option value="Haryana">Haryana</option>
													<option value="Himachal Pradesh">Himachal Pradesh</option>
													<option value="Jammu and Kashmir">Jammu and
														Kashmir</option>
													<option value="Jharkhand">Jharkhand</option>
													<option value="Karnataka">Karnataka</option>
													<option value="Kerala">Kerala</option>
													<option value="Madhya Pradesh">Madhya Pradesh</option>
													<option value="Maharashtra">Maharashtra</option>
													<option value="Manipur">Manipur</option>
													<option value="Meghalaya">Meghalaya</option>
													<option value="Mizoram">Mizoram</option>
													<option value="Nagaland">Nagaland</option>
													<option value="Odisha">Odisha</option>
													<option value="Punjab">Punjab</option>
													<option value="Rajasthan">Rajasthan</option>
													<option value="Sikkim">Sikkim</option>
													<option value="Tamil Nadu">Tamil Nadu</option>
													<option value="Telangana">Telangana</option>
													<option value="Tripura">Tripura</option>
													<option value="Uttar Pradesh">Uttar Pradesh</option>
													<option value="Uttarakhand">Uttarakhand</option>
													<option value="West Bengal">West Bengal</option>
												</select>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-4">
												<label for="areas">Areas - </label> <input type="radio"
													id="radio5" name="area" value="Rural"> <label
													for="sname">Rural</label> &nbsp; <input type="radio"
													id="radio6" name="area" value="City"> <label
													for="collegeName">City</label>
											</div>
											<%
												String customerNo = DatabaseConnection.generateCusotmerNo();
												String electricityNo = DatabaseConnection.geneateElectricityNumber();
											%>
											<div class="form-group col-md-4">
												<label for="customerNo">Customer No</label> <input
													type="text" id="customerNo" name="customerNo"
													value="<%=customerNo%>" class="form-control" readonly>
											</div>
											<div class="form-group col-md-4">
												<label for="telephoneNo">Electricity No</label> <input
													type="text" id="electricityNo" name="electricityNo"
													value="<%=electricityNo%>" placeholder="Electricity No"
													class="form-control" readonly>
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-4"></div>
											<div class="form-group col-md-4">
												<button type="submit" class="btn btn-success">
													<i class="fa fa-check-circle"></i>&nbsp;Submit
												</button>
												<button type="reset" class="btn btn-danger">Cancel</button>
											</div>
											<div class="form-group col-md-4"></div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<jsp:include page="admin-footer.jsp"></jsp:include>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
	<%
		} else {
	response.sendRedirect("admin-login.jsp");
	}
	%>
	<script type="text/javascript">
		$(function() {
			$('#success').delay(3000).show().fadeOut('slow');
		});

		$(function() {
			$('#danger').delay(3000).show().fadeOut('slow');
		});
	</script>
</body>

</html>
