<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="content-type"
	content="application/xhtml+xml; charset=UTF-8" />
<title>Zapier</title>
<style type="text/css">
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}
</style>
</head>



<body>
	<h1 align="center">Zapier</h1>
	<form action="HelloAppEngine" method="post">
		<div class="email">
			<label>Email address</label> <input type="text" name="email">
		</div>
		<div class="password">
			<label>Password</label> <input type="password" name="password">
		</div>
		<% 
		String email = request.getParameter("email"); 
		String password = request.getParameter("password"); 
		session.setAttribute("email",email);
		session.setAttribute("pass", password); 
		%>
		<div class="login">
			<button type="submit">Login</button>
		</div>
	</form>
	<form>
		<div>
			<p>
				Don't have an account? <a href="Register">Sign Up</a>
			</p>
		</div>
	</form>
</body>
</html>