<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <script src="https://www.google.com/recaptcha/api.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<font color="red">${meassage}</font>

<form action="login" method="post">
	
	

<h1>login here</h1>
		Email:<input type="emial" name="email" /><br> <br>
		Password:<input type="password" name="password" /><br> <br>
		
		<!-- <div class="g-recaptcha"
			data-sitekey="6Lf4OsQUAAAAAKIzYG4t5irjKnB-keGY1oOnTL2F"></div>
 -->

		<input type="submit" value="login" />




	</form>









</body>
</html>