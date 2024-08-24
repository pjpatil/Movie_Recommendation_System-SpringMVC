

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="javax.servlet.jsp.tagext.TagLibraryInfo"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<link rel="stylesheet" href="<c:url value="/CSS/style.css" />" />
</head>
<body>
	<h1>Hello World!</h1>
	<p>This is the homepage!</p>

	<div class="login-container">
		<h2>Login</h2>
		<form id="loginForm">
			<div class="input-group">
				<label for="username">Username:</label> <input type="text"
					id="username" name="username" required>
			</div>
			<div class="input-group">
				<label for="password">Password:</label> <input type="password"
					id="password" name="password" required>
			</div>
			<button type="submit">Login</button>
			<p id="error-message"></p>
		</form>
	</div>
</body>
</html>
