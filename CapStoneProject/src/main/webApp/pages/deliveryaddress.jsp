<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
div.form
{
    display: block;
    text-align: center;
}
form
{
    display: inline-block;
    margin-left: auto;
    margin-right: auto;
    text-align: left;
}
input[type=text] {
    padding:5px; 
    border:2px solid #ccc; 
    -webkit-border-radius: 5px;
    border-radius: 5px;
}

input[type=text]:focus {
    border-color:#333;
}

input[type=submit] {
    padding:5px 15px; 
    background:#ccc; 
    border:0 none;
    cursor:pointer;
    -webkit-border-radius: 5px;
    border-radius: 5px; 
}
input.m {
height: 80px;
width: 200px;

}
input.m:hover {
color: grey;
	
}
</style>
</head>
<body>
<div class="form">
<form action="./paymenttype" class="main_form" >
<p>Enter Delivery Address</p><input type="text" name="address" class="m">
<p>PIN code</p><input type="text" name="pin">
<p>State</p><input type="text" name="state"><br><br>
<label for="type">Choose a payment method:</label>

<select name="type" id="type">
  <option value="cod">Cash on delivery</option>
  <option value="credit">Credit card</option>
  
</select><br><br>
<input type="submit" value="proceed">
</form>
</div>

</body>
</html>