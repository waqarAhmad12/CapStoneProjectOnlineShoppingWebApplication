<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<meta charset="ISO-8859-1">

<style type="text/css">

table,th,td{
border: 1px solid orange;

}

</style>
<title>Your Bill</title>
</head>
<body>
<c:set var="total" value="${0 }"></c:set>
<c:set var="bill" value="${generatedBill }" scope="session"></c:set>

<nav class="navbar navbar-light bg-light" style="align-items: center;  id="nave">
  <span class="navbar-brand mb-0 h1" ><h1 style="margin-left: 500px">This Is Your Bill</h1><br></span>
</nav>
<br>

<table class="table">
  <thead>
    <tr>
      <th scope="col">Item Name</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity</th>
      <th scope="col">Tax</th>
      <th scope="col">Net Price</th>
    </tr>
  </thead>
<c:forEach items="${bill }" var="items">
	<c:set var="total" value="${total+items.price }"></c:set>
  <tbody>
    <tr>
      <th scope="row">${items.itemName }</th>
      <td>${items.unitPrice }</td>
      <td>${items.quantity }</td>
      <td>${items.tax }</td>
      <td>${items.price }</td>
    </tr>
  
  </tbody>
 </c:forEach>
   

</table>
<br><br>
<footer >
<h2>Your total bill is ${total }$(inc.)</h2><br>
<a href="./pay"><button  style="max-width: 200px;max-height: 100px; color: orange;align-items: baseline;" >  Make Payment </button></a>
  <form action="./welcome">

<input type="text" name="emailAddress"value="${emailAddress }" style="visibility: hidden">
<input type="text" name="password"value="${password }" style="visibility: hidden">
<input type="submit" value="GO BACK" style="max-width: 200px;max-height: 100px; color: orange;align-items: baseline;">
</form>
</footer>
<script>
            function myFunction() {
                document.getElementById("sb").submit();
            }
        </script>
  
  
</body>
</html>