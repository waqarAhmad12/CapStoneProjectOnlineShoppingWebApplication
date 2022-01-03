<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style>
li, a, button{
font-weight: 500;
font-size: 26px;
color: #edf0f1;
text-decoration: none;
}
section footer
{
align-content: center;
margin-top: 50px;


}
header{
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    background-color: #24252A;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 30px 10%;
}
section{
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
button{
    padding: 9px 25px;
    background-color: rgba(0, 136, 169, 1);
    border: none;
    border-radius: 50px;
    cursor: pointer;
    transition: all 0.3s ease 0s;
}
button:hover {
    background-color: rgba(0, 136, 169, 0.8);

}
input{
    height: 50px;
    width: 560px;
    margin-left: 90px;
    font-size: 25px;
}
input:hover {
	background-color: rgba(0, 136, 169, 2);
}

/*Search container  */
.search-container
{
	position: relative;
}
.search-result
{
	position:absolute;
	display: table;
    text-align: center;
    margin-left: auto;
    margin-right: auto;
    display: none;
}
</style>

<script  type="text/javascript" src="jquery-3.5.1.min.js">
const search=()=>{
    
    console.log("searching....")
    if(query=="")
    {
        $(".search-result").hide();
    }
    else
    {
        console.log(query);
        let url = 'http://localhost:8080/search/${query}';
       
        fetch(url)
        .then((response) => {
            return response.json();
        })
        .then((data) => {
            console.log(data);
        })
    }
}

</script>



</head>
<body>
<header>
    <img class="logo" src="https://thumbs.dreamstime.com/b/lets-shopping-logo-design-template-shop-icon-135331201.jpg" alt="logo" height="128px" width="128px">
    <nav>
        <ul class="nav_links">
            <li><a href="./showcart">Show cart</a></li>
            <li><a href="./modifycart">Modify cart</a></li>
            <li><a href="./logout">Log Out</a></li>

        </ul>
    </nav>
    <a class="cta" href="./checkout"><button >CheckOut</button></a>
</header>
<section>
    <nav>
         <h2>Select categeory</h2>
        <ul class="nav_link">
				
                <li><a href="./cosmetics">Cosmetics</a></li>
                <li><a href="./books">Books</a></li>
                <li><a href="./cd">CDs</a></li>
                
                
        </ul>

    </nav>
    <nav class="search-container">
    <form action="./searchitem">
    <input onkeyup="search()" id="search-input" type="text" placeholder="Search Item"name="itemname"  class="form-control"><input type="submit" value="Search">
    </form>
    </nav>
</section>
<header class="search-result"><h1>This is search result</h1></header>

</body>
</html>