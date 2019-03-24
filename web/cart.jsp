<%-- 
    Document   : cart
    Created on : 5 Mar, 2019, 8:20:28 PM
    Author     : Rahul
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC">
<style>
body, html {height: 100%}
body,h1,h2,h3,h4,h5,h6 {font-family: "Amatic SC", sans-serif}
.menu {display: none}
.bgimg {
  background-repeat: no-repeat;
  background-size: cover;
  min-height: 90%;
}
.addBtn {
  padding: 20px;
  width: 10%;
  background: #d9d9d9;
  color: #555;
  float: none;
  text-align: center;
  font-size: 25px;
  cursor: pointer;
  transition: 0.3s;
  border-radius: 0;
  position:relative;
  left:150px;
}
input.largerCheckbox
{
width: 30px;
height: 30px;
}
/* Style the input */
input {
  position:relative;
}

.addBtn:hover {
  background-color: #bbb;
}
</style>
<title>

    </title>
    </head>
    <body>
        <!-- Menu Container -->
<div class="w3-container w3-black w3-padding-64 w3-xxlarge" id="menu">
  <div class="w3-content">
  
    <h1 class="w3-center w3-jumbo" style="margin-bottom:64px">THE MENU</h1>
    <div class="w3-row w3-center w3-border w3-border-dark-grey">
      <a href="javascript:void(0)" onclick="openMenu(event, 'Pizza');" id="myLink">
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red">Pizza Cafe</div>
      </a>
      <a href="javascript:void(0)" onclick="openMenu(event, 'Pasta');">
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red">Salads Cafe</div>
      </a>
      <a href="javascript:void(0)" onclick="openMenu(event, 'Starter');">
        <div class="w3-col s4 tablink w3-padding-large w3-hover-red">Starter Cafe</div>
      </a>
    </div>

    <div id="Pizza" class="w3-container menu w3-padding-32 w3-white">
        <form name="form1" action="fromCart">
            
             <h1><b><%
                
                try
        {
             Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","office123");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("Select NAME from DISHES where DID='D1'");
             if(rs.next())
             {
               out.println((rs.getString("NAME")));
             }
        }
        catch (Exception e){
            out.println("ttry error");
            //e.printStackTrace();
        }
                %></b>  <input type="checkbox" class="largerCheckbox" name="p1" value="Margherita" /> <span class="w3-right w3-tag w3-dark-grey w3-round">$12.50</span></h1> <span>Quantity <input name="pq1" type="number" step=1 value=0 id="myInput1" ></span>
      <p class="w3-text-grey">Fresh tomatoes, fresh mozzarella, fresh basil </p>
      <hr>

      <h1><b>Cheese</b> <input type="checkbox" class="largerCheckbox" name="p2" value="Cheese" /> <span class="w3-right w3-tag w3-dark-grey w3-round">$15.50</span> </h1><span>Quantity <input type="number" step=1 name="pq2" value=0 id="myInput2"></span>
      <p class="w3-text-grey">Four cheeses (mozzarella, parmesan, pecorino, jarlsberg)</p>
      <hr>
      
      <h1><b>Chicken</b>  <input type="checkbox" class="largerCheckbox" name="p3" value="Chicken" /> <span class="w3-right w3-tag w3-dark-grey w3-round">$17.00</span></h1> <span>Quantity <input type="number" step=1 name="pq3" value=0 id="myInput3"></span>
      <p class="w3-text-grey">Fresh tomatoes, mozzarella, chicken, onions</p>
      <hr>
      
      <input type="submit" value="Submit" name="submit" />
        </form>
    </div>

    <div id="Pasta" class="w3-container menu w3-padding-32 w3-white">
      <h1><b>Lasagna</b> <span class="w3-tag w3-grey w3-round">Popular</span> <span class="w3-right w3-tag w3-dark-grey w3-round">$13.50</span></h1><span>Quantity <input type="text" id="myInput4" placeholder="Title..."></span>
  <span onclick="newElementS1()" class="addBtn">Add</span>
      <p class="w3-text-grey">Special sauce, mozzarella, parmesan, ground beef</p>
      <hr>
   
      <h1><b>Ravioli</b> <span class="w3-right w3-tag w3-dark-grey w3-round">$14.50</span></h1><span>Quantity <input type="text" id="myInput5" placeholder="Title..."></span>
  <span onclick="newElementS2()" class="addBtn">Add</span>
      <p class="w3-text-grey">Ravioli filled with cheese</p>
      <hr>
      
      <h1><b>Spaghetti Classica</b> <span class="w3-right w3-tag w3-dark-grey w3-round">$11.00</span></h1><span>Quantity <input type="text" id="myInput6" placeholder="Title..."></span>
  <span onclick="newElementS3()" class="addBtn">Add</span>
      <p class="w3-text-grey">Fresh tomatoes, onions, ground beef</p>
      <hr>
    </div>


    <div id="Starter" class="w3-container menu w3-padding-32 w3-white">
      <h1><b>Today's Soup</b> <span class="w3-tag w3-grey w3-round">Seasonal</span><span class="w3-right w3-tag w3-dark-grey w3-round">$5.50</span></h1><span>Quantity <input type="text" id="myInput7" placeholder="Title..."></span>
  <span onclick="newElementD1()" class="addBtn">Add</span>
      <p class="w3-text-grey">Ask the waiter</p>
      <hr>
   
      <h1><b>Bruschetta</b> <span class="w3-right w3-tag w3-dark-grey w3-round">$8.50</span></h1><span>Quantity <input type="text" id="myInput8" placeholder="Title..."></span>
  <span onclick="newElementD2()" class="addBtn">Add</span>
      <p class="w3-text-grey">Bread with pesto, tomatoes, onion, garlic</p>
      <hr>
      
      <h1><b>Garlic bread</b> <span class="w3-right w3-tag w3-dark-grey w3-round">$9.50</span></h1><span>Quantity <input type="text" id="myInput9" placeholder="Title..."></span>
  <span onclick="newElementD3()" class="addBtn">Add</span>
      <p class="w3-text-grey">Grilled ciabatta, garlic butter, onions</p>
      <hr>
    </div><br>

  </div>
    <h1>CART</h1>
    <ul id="myUL">
</ul>
</div>
        <script>
// Tabbed Menu
var total = 5;
function openMenu(evt, menuName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("menu");
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
     tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
  }
  document.getElementById(menuName).style.display = "block";
  evt.currentTarget.firstElementChild.className += " w3-red";
}
document.getElementById("myLink").click();
// Create a "close" button and append it to each list item
var myNodelist = document.getElementsByTagName("LI");
var i;
for (i = 0; i < myNodelist.length; i++) {
  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(txt);
  myNodelist[i].appendChild(span);
}

// Click on a close button to hide the current list item
var close = document.getElementsByClassName("close");
var i;
for (i = 0; i < close.length; i++) {
  close[i].onclick = function() {
    var div = this.parentElement;
    div.style.display = "none";
  }
}

// Add a "checked" symbol when clicking on a list item
var list = document.querySelector('ul');
list.addEventListener('click', function(ev) {
  if (ev.target.tagName === 'LI') {
    ev.target.classList.toggle('checked');
  }
}, false);
</script>
    </body>
</html>
