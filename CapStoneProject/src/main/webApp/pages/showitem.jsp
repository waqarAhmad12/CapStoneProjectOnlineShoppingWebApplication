<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
  li, a, button{
  font-weight: 500;
  font-size: 26px;
  color: #edf0f1;
  text-decoration: none;
  }
  
  header
  {
   background-image: url("https://i.pinimg.com/originals/f9/13/ee/f913eee02c435b9600df110feaa95e47.jpg");   background-size:cover;
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      background-color: #24252A;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 30px 10%;
  }
  
  section
  {
 
      display: flex;
      justify-content: space-between;
      align-items:flex-end;
      padding: 30px 10%;      
  }
  
  .logo{
      cursor: pointer;
  }
  
  .nav_links{
      list-style: none;
  }
  
  .nav_links li {
      display: inline-block;
      padding: 0px 20px;
  }
  
  .nav_links li a {
      transition: all 0.3s ease 0s;
  }
  
  .nav_links li a:hover {
      color: #0088a9;
  }
  
  .nav_link li a {
      transition: all 0.3s ease 0s;
  }
  
  .nav_link ul {
     border-right: tomato;
     list-style-type: none;
    padding: 10px 20px;
    background-color: #f1f1f1;
    
  }
  
  .tnav table{
   border: 1px solid black;
  border-collapse: collapse;
  }
  
  button
  {
      padding: 9px 9px;
      background-color: rgba(0, 136, 169, 1);
      border: none;
      border-radius: 50px;
      cursor: pointer;
      height:60;
      widows:130px;
      transition: all 0.3s ease 0s;
      margin-right: 300px;
  }
  
  button:hover {
      background-color: rgba(0, 136, 169, 0.8);
  
  }
  
  h1
  {
    color: black;
    
  }
	.form_submit  input{
      height: 200px;
      width: 560px;
      margin-left: 90px;
      font-size: 25px;
  }
  h3
  {
   font-family: cursive;
   font-weight: 3px;
   text-shadow: gray;
  }

  .reviewinp:hover {
    background-color: #ededed;
  }
  footer
  {
  display:flex;
  background-color:#26232b;
   border-top: 2px solid grey;
   
   justify-content: center;
  }
  table
  {
  
  }
  .myreview
  {
  border-bottom: 2px solid grey;
  }
  </style>
<title>Product Reviews</title>
</head>
<body>
<c:set var="itemReviews" value="${reviews }" ></c:set>


    <header>
        
        <nav>
            <h1 >Reviews And Ratings for ${item.itemName } </h1>
        </nav>
        
    </header>



<section>
    <nav>
 <form action="./review" class="form_submit">
<br>
<h3>
<label for="rating">Rate this Item: 5/</label>
<select name="rating" id="rating">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
</select>
</h3>

<input class="reviewinp" type="text" id="review" name="message" placeholder="Write Your Review Here!">
<label for="review"><button type="submit">Submit Review</button></label>
<input type="text"  value="${item.itemId }" name="item" style="visibility: hidden;"maxlength="0" size="0">
<input type="text" value="${emailAddress }" name="name" style="visibility: hidden;"maxlength="0" size="0">


</form>
<form action="./additem">
<input type="text" name="quantity" placeholder="Enter Quantity">
<input type="text" name="item" value="${item }" style="visibility: hidden;">
<input type="text" name="review" value="${reviews }" style="visibility: hidden;">
<input type="submit" value="Add to Cart">
</form>
 </nav>

</section>

<footer>
<nav class="tnav">
<h3>Reviews by different users</h3>
<c:forEach items="${itemReviews }" var="rv">
<%-- <table>
	<tr>
	    <th>${ rv.name}</th>
	</tr>
	<tr>
		<td  >
		<h5>Rating:${rv.rating }/5</h5>
		<p>${rv.review }
		</p>
		</td>
	</tr>
</table>
<br> --%>
<section >
<h3>Reviewed by: ${ rv.name}</h3>

</section>
<section >

<h5>Rating:${rv.rating }/5</h5>

</section>
<section class="myreview">
<p>${rv.review }</p>		
</section>

</c:forEach>
</nav>
</footer>


</body>
</html>