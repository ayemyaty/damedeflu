<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Township.aspx.cs" Inherits="Township" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!--=============== Favicon ===============-->
    <%--<link
      rel="shortcut icon"
      href="./images/favicon-32x32.png"
      type="image/png"
    />--%>
    <!--=============== Swiper CSS ===============-->
    <link
      rel="stylesheet"
      href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />
    <!--=============== Boxicons ===============-->
    <link
      href="https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css"
      rel="stylesheet"
    />
    <!--=============== Custom StyleSheet ===============-->
    <link rel="stylesheet" href="styles.css" />
    <title>DeliveryTownship</title>
      <style>
           .pnl div{
    float:left;
    width:250px;
    height:250px;
    text-align:center;
}
      </style>
  </head>
  <body>
    <!--=============== Header ===============-->
    <header class="header">
      <nav class="navbar">
        <div class="row d-flex container">
          <a href="Home.aspx" class="logo d-flex">
            <img src="images/logo.png" alt="" />
          </a>

         

          
          <!-- Hamburger -->
          <div class="hamburger d-flex">
            <i class="bx bx-menu"></i>
          </div>
        </div>
      </nav>

      <!--=============== Home ===============-->
      <div class="home">
        <div class="row container">
          <div class="col">
            <div class="faster">
              More than Faster
              <div class="image d-flex">
                <img src="images/french-fries.svg" alt="" />
              </div>
            </div>
            <h1>
              Get your cuisine <br />
              delivered right to <br />
              <span class="color">your door</span>
            </h1>
            <p>
              Food that is delivered at the right time. The trendy food delivery
              partner. Good food is what we deliver. Your hunger companion.
            </p>
            
          </div>
          <div class="col">
            <img src="img/dv1.jpg" alt="" />
          </div>
        </div>
      </div>

      
    </header>

    <!--=============== Services ===============-->
      <h1 align="center"> AVAILABLE LOCATIONS </h1>
    <section class="section services" id="services">
      <div class="row container">
        <div class="col">
          <asp:Panel ID="pnlProducts" runat="server" CssClass="pnl">
         </asp:Panel>
         <div style="clear:both;"></div>
        </div>        
       

      </div>
    </section>

    
    <div class="footer-bottom">
      <div class="row container d-flex" align="center">
        <p>all right reserved copyright @ 2023</p>
      </div>
    </div>

    <!--=============== Swiper JS ===============-->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!--=============== Custom JS ===============-->
    <script src="./js/testimonial.js"></script>
    <script src="./js/products.js"></script>
    <script src="./js/main.js"></script>
  </body>
</html>
