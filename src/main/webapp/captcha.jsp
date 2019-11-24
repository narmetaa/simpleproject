<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>captcha </title>
<style>
.capt{
	background-color:grey;
	width: 300px;
	height:100px;
}
#mainCaptcha{
	position: relative;
	left : 60px;
	top: 5px;
}
#refresh{
	position:relative;
	left:230px;
	width:30px;
	height:30px;
	bottom:45px;
	background-image: url(rpt.jpg);
}
#txtInput, #Button1{
	position: relative;
	left:40px;
	bottom: 40px;
}
</style>
<script>
function Captcha(){
     var alpha = new Array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',
	 	'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z', 
 	    	'0','1','2','3','4','5','6','7','8','9');
     var i;
     for (i=0;i<6;i++){
         var a = alpha[Math.floor(Math.random() * alpha.length)];
         var b = alpha[Math.floor(Math.random() * alpha.length)];
         var c = alpha[Math.floor(Math.random() * alpha.length)];
         var d = alpha[Math.floor(Math.random() * alpha.length)];
         var e = alpha[Math.floor(Math.random() * alpha.length)];
         var f = alpha[Math.floor(Math.random() * alpha.length)];
         var g = alpha[Math.floor(Math.random() * alpha.length)];
                      }
         var code = a + ' ' + b + ' ' + ' ' + c + ' ' + d + ' ' + e + ' '+ f + ' ' + g;
         document.getElementById("mainCaptcha").innerHTML = code
		 document.getElementById("mainCaptcha").value = code
       }
function ValidCaptcha(){
     var string1 = removeSpaces(document.getElementById('mainCaptcha').value);
     var string2 =         removeSpaces(document.getElementById('txtInput').value);
     if (string1 == string2){
            return true;
     }else{        
          return false;
          }
}
function removeSpaces(string){
     return string.split(' ').join('');
}
</script>

</head>
<body onload="Captcha();"> 

<form action="captcha">

<div class="capt"> 
   <h2 type="text" id="mainCaptcha"></h2>
   <p><input type="button" id="refresh" onclick="Captcha();"/></p>           
    <input type="text" id="txtInput"/>    
  <input id="Button1" type="button" value="Check" onclick="alert(ValidCaptcha());"/>
   </div>


</form>


</body>
</html>