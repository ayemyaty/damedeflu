<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>
    <link rel="stylesheet" href="home.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" />

</head>
<body>
    <form id="form1" runat="server">
   <div class="title">
        <p>dame de </p> <p>fleu</p> 
       
    </div>

    <div class="bgpic">
        <div class="bgLee">
            <img src="img/b196747379019106d06d72b9db57e702.jpg" class="bgpiC">

        </div>
    </div>
    

    <div class="homenav">
        <ul>
            <li>
                <a href="About.aspx" class="about">About Us</a>
            </li>
    
            <li>
                <div class="dropdown">
                    <button class="dropbtn">Shop</button>
                    <div class="dropdown-content">
                        <a href="flowers.aspx">Flowers</a>
                      <a href="Product.aspx">Boutique</a>
                     
                    </div>
                  </div>
            </li>
            

            
            <li>
                <a href="Township.aspx">Delivery Service</a>
            </li>
        </ul>
        
       
       
    </div>

    <a href="Login.aspx" style="color: black;">
        <div class="icon-right">
            <span> <i class="fa fa-solid fa-right-to-bracket" ></i></span>
         </div>

    </a>

    <script src="https://use.fontawesome.com/057dc84e7b.js"></script>
    </form>
</body>
</html>
