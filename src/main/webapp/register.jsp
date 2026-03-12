<!DOCTYPE html>
<html>
<head>
<title>Register</title>
</head>

<body>

<h2>User Registration</h2>

<form action="RegisterServlet" method="post">

Name:
<input type="text" name="name" required>
<br><br>

Email:
<input type="email" name="email" required>
<br><br>

Password:
<input type="password" name="password" required>
<br>
<small>
Password must contain 8 characters, uppercase, lowercase, number and special character
</small>

<br><br>

<input type="submit" value="Register">

</form>

<%
String error=request.getParameter("error");
if(error!=null){
%>

<p style="color:red;"><%=error%></p>

<%
}
%>

<a href="login.jsp">Already have account? Login</a>

</body>
</html>