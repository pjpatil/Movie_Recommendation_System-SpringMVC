<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="javax.servlet.jsp.tagext.TagLibraryInfo"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for eye icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <
<link href="<c:url value="/resources/CSS/userregistration.css" />"
	rel="stylesheet">
</head>
<body>

	<section>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>
		<span></span> <span></span> <span></span> <span></span> <span></span>

		<div class="signup">

			<div class="content">

				<h2>User Sign Up</h2>

				<form class="form" name="frm" action="userregistersave" method="GET"
					onsubmit="return validateForm()">
					<div class="inputBox">
						<input type="text" id="name" name="uname" value=""
							autocomplete="off" onkeyup="validateName()" required> <i>Enter
							Name</i>
						<p id="error-message-name" class="error" style="color: red;"></p>
					</div>
					<div class="inputBox">
						<input type="date" id="bday" name="birthday" value=""
							onkeyup="validateDate()" required> <i>Enter Birthday
							Date</i>
						<p id="error-message-bday" class="error" style="color: red;"></p>
					</div>

					<div class="inputBox">
						<input type="text" id="mobileno" name="umobileno" value=""
							autocomplete="off" onkeyup="validateMobileNumber()"
							maxlength="10" required> <i>Enter Mobile No</i>
						<p id="error-message-mobile" class="error" style="color: red;"></p>
					</div>

					<div class="inputBox">
						<input type="password" id="pass" name="upassword" value=""
							autocomplete="off" onkeyup="validatePassword()" required>
						<i>Enter Password</i>
						<p id="error-message-pass" class="error" style="color: red;"></p>
					</div>
					<div class="inputBox">
						<button class="btn btn-outline-secondary" type="button"
							id="togglePassword">
							<i class="fas fa-eye"></i>
						</button>
					
						<div id="validationResults">
							<div id="uppercaseCheck" class="form-text invalid">First
								character is uppercase</div>
							<div id="specialCharCheck" class="form-text invalid">At
								least one special character, no spaces</div>
							<div id="digitCheck" class="form-text invalid">Minimum four
								digits</div>
							<div id="lengthCheck" class="form-text invalid">Length
								between 8 and 12 characters</div>
							<div id="strongMessage" class="form-text"></div>
						</div>
					</div>


					<div class="inputBox">
						<input type="text" id="pass" name="confpass" value=""
							autocomplete="off" onkeyup="validateConfirmPassword()" required>
						<i>Enter Confrom Password</i>
						<p id="error-message-confpass" class="error"></p>
					</div>

					<div class="links">
						<a href="#">Forgot Password</a> <a href="userlogin">Sign in</a>

					</div>

					<div class="inputBox">
						<input type="submit" name="s" value="Register">
					</div>
				</form>

			</div>

		</div>

	</section>
<!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
    <!-- Font Awesome for icons -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
    
	<script src='<c:url value="/resources/JS/userRegistration.js" />'></script>
</body>
</html>
