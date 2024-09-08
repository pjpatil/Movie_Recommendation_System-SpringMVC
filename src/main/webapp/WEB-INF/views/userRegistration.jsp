<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="javax.servlet.jsp.tagext.TagLibraryInfo"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
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

				<form class="form" name="frm" action="userregistersave" method="GET">
					<div class="inputBox">
						<input type="text" id="name" name="uname" value="" required>
						<i>Enter Name</i>
					</div>
					<div class="inputBox">

						<input type="date" id="bday" name="birthday" value="" required>
						<i>Enter Birthday Date</i>
					</div>

					<div class="inputBox">
						<input type="text" id="mobileno" name="umobileno" value=""
							required> <i>Enter Mobile No</i>
					</div>

					<div class="inputBox">
						<input type="text" id="pass" name="upassword" value="" required>
						<i>Enter Password</i>
					</div>

					<div class="inputBox">
						<input type="text" id="pass" name="confpass" value="" required>
						<i>Enter Confrom Password</i>
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

</body>
</html>
