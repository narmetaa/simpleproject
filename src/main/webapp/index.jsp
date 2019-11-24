<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<script src="https://www.google.com/recaptcha/api.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.captcha {
  position: relative;
}
.captcha-fake-field {
  background: transparent;
  bottom: 10px;
  border: none;
  display: block;
  height: 1px;
  left: 12px;
  width: 1px;
  position: absolute;
  z-index: -1;
}
</style>
<script >
window.removeFakeCaptcha = function() {
	   document.querySelector('.captcha-fake-field').remove();
	}

</script>
</head>
<body>



	<!-- this for registration  -->
	<form action="register" method="post">

		<h1>Register Here....!</h1>

		<font color="green">${meassage}</font><br>
		<br> Email:<input type="emial" name="email" autofocus="" /><br>
		<br> Password:<input type="password" name="password" /><br>
		<br> Mobile:<input type="text" name="mobile" /><br> <br>

		<%-- <jsp:include page="captcha.jsp" />  --%>

		<!-- <div class="g-recaptcha" id="rcaptcha" style="margin-left: 90px;"
			data-sitekey="6Lf4OsQUAAAAAKIzYG4t5irjKnB-keGY1oOnTL2F" ></div>
						<span id="captcha" style="margin-left:100px;color:red" ></span>
 -->


<div class="captcha">
   <div class="g-recaptcha" data-sitekey="6Lf4OsQUAAAAAKIzYG4t5irjKnB-keGY1oOnTL2F"
    data-callback="removeFakeCaptcha"></div>
   <input type="checkbox" class="captcha-fake-field" tabindex="-1" required>
</div>
			
<br><br>

		<input type="submit" value="Register" /> <br>
		<br> <a href="loginpage">Click here to login</a> <br>
		<br> <a href="forgot">Forgotpassword ?</a>



	</form>

	<form action="test">

		<input type="submit" value="testScope">
	</form>






</body>
</html>