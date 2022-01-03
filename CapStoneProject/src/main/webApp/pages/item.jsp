<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">

function addedSuccess() {
	  document.getElementById("demo").innerHTML = "Item added successfully in Cart";
	  setTimeout(function() {
	    $('#demo').html('');
	  }, 3000);
	}



</script>

	</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<c:set var="myList" value="${itemList }" scope="session"></c:set>

<form action="./addtocart" type="submit" id="sb">
<nav class="navbar navbar-light bg-light" style="align-items: center;  id="nave">
  <span class="navbar-brand mb-0 h1" ><h1 style="margin-left: 500px">List Of ${itemType }</h1><br></span>
</nav>
<br>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Item No</th>
     
      <th scope="col">Item Name</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity In Stock</th>
      <th scope="col">
      <label for="cars">Choose Item No:</label>
<!-- Adding Items in the list -->
<select name="cart" id="cars" id="ddlProducts" name="ddProducts">
<c:forEach items="${myList}" var="i">
  <option  value="${i.itemId }">${i.itemId }</option>
 </c:forEach>
</select>

      </th>
      <th scope="col">Enter Quantity:<input type="text" name="quantity" placeholder="Quantity in number"></th>
    </tr>
  </thead>
<c:forEach items="${myList}" var="item">

  <tbody>
    <tr>
      <th scope="row">${item.itemId }</th>
      <td>
      <form action="./itemdetails">
       <input type="submit" value="${item.itemName }" style="background: transparent;border: none;">
      <input type="text" value="${item.itemId }" name="itemid" style="visibility: hidden;">
      
     
      </form></td>
      <td>${item.price }</td>
      <td>${item.quantity }</td>
    </tr>
  
  </tbody>
  </c:forEach>
</table>
<br><br>
<input type="text" name="itype"value="${itemType }" style="visibility: hidden">

	<button onclick="myFunction()">Add To Cart</button>
	
</form>
<form action="./welcome">
<input type="text" name="emailAddress"value="${emailAddress }" style="visibility: hidden">
<input type="text" name="password"value="${password }" style="visibility: hidden">
<input type="submit" value="GO BACK">
</form>
<script>
            function myFunction() {
                document.getElementById("sb").submit();
            }
        </script>
</body>
</html>