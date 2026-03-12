<<<<<<< HEAD
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
</head>

<body>

<h2>User Login</h2>

<form action="LoginServlet" method="post">

Email:
<input type="email" name="email" required>
<br><br>

Password:
<input type="password" name="password" required>
<br><br>

<input type="submit" value="Login">

</form>

<%
String error=request.getParameter("error");

if(error!=null){
%>

<p style="color:red;"><%=error%></p>

<%
}
%>

<a href="register.jsp">Create Account</a>

</body>
</html>
=======


<form action="login" method="post">
<button >CLIC ME</button>
</form>
>>>>>>> 214d3be13b02c0d426a0c1428ad25087669b5e1a
