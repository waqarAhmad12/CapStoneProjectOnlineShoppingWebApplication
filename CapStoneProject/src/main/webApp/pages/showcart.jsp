<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<style type="text/css">
<style type="text/css">

table,th,td{
border: 1px solid orange;

}

</style>
</style>
<title>Insert title here</title>
</head>
<body>
<c:set var="item" value="${cartItem }" scope="session"></c:set>

<nav class="navbar navbar-light bg-light" style="align-items: center;  id="nave">
  <span class="navbar-brand mb-0 h1" ><h1 style="margin-left: 500px">List Of Items In your cart</h1><br></span>
</nav>
<br>

<table class="table">
  <thead>
    <tr>
      <th scope="col">Item No</th>
      <th scope="col">Item Name</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity</th>
      <th scope="col"> Total Price</th>
     
    </tr>
  </thead>
<c:forEach items="${item}" var="items">

  <tbody>
    <tr>
      <th scope="row">${items.itemId }</th>
      <td>${items.itemName }</td>
      <td>${items.unitPrice }</td>
      <td>${items.quantity }</td>
      <td>${items.price }</td>
    </tr>
  
  </tbody>
  </c:forEach>
  <form action="./welcome">
<input type="text" name="emailAddress"value="${emailAddress }" style="visibility: hidden">
<input type="text" name="password"value="${password }" style="visibility: hidden">
<input type="submit" value="GO BACK" style="max-width: 200px;max-height: 100px; color: orange;align-items: baseline;">
</form>
</table>
<br><br>

<script>
            function myFunction() {
                document.getElementById("sb").submit();
            }
        </script>

</body>
</html>