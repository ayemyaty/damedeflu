<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <!--=============== Favicon ===============-->
   <%-- <link
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
    <link rel="stylesheet" href="Township.css" />
    <title>About</title>
  </head>
  <body>
    <!--=============== Header ===============-->
    <header class="header"/>
      <nav class="navbar">
        <div class="row d-flex container"/>
          <a href="Home.aspx" class="logo d-flex" >
            <img src="images/logo.png" alt="" />
          </a>

          
          <div class="col d-flex">
           
            

          <!-- Hamburger -->
          <div class="hamburger d-flex">
            <i class="bx bx-menu"></i>
          </div>
        </div>
      </nav>

     

   


    <!--=============== Testimonials ===============-->
    <section class="section testimonials" id="testimonials">
      <div class="row container">
        <div class="col">
          <div class="card" data-filter="rosele">
            <div class="d-flex">
              <div class="image">
                <img src="./images/profile-1.jpg" alt="" />
              </div>
              <div>
                <h4>Mg Ye` Min Aung</h4>
                <span>YKPT-</span>
                  <span>yeminaung@ucsy.edu.mm</span>
              </div>
            </div>
          </div>
          <div class="card" data-filter="marvin">
            <div class="d-flex">
              <div class="image">
                <img src="./images/profile-2.jpg" alt="" />
              </div>
              <div>
                <h4>Ma Zar Chi Oo</h4>
                <span>YKPT-</span>
                  <span>zarchioo@ucsy.edu.mm</span>
                  
              </div>
            </div>
          </div>
          <div class="card" data-filter="guy">
            <div class="d-flex">
              <div class="image">
                <img src="./images/profile-3.jpg" alt="" />
              </div>
              <div>
                <h4>Ma Aye Myat Kay Khaing</h4>
                <span>YKPT-</span>
                  <span>ayemyatkaykhaing@ucsy.edu.mm</span>
              </div>
            </div>
          </div>
          <div class="card" data-filter="kathryn">
            <div class="d-flex">
              <div class="image">
                <img src="./images/profile-4.jpg" alt="" />
              </div>
              <div>
                <h4>Mg Thiha Sitt Naing</h4>
                <span>YKPT-</span>
                  <span>thihasittnaing@ucsy.edu.mm</span>
              </div>
            </div>
          </div>
            <div class="card" data-filter="kathryn">
            <div class="d-flex">
              <div class="image">
                <img src="./images/profile-4.jpg" alt="" />
              </div>
              <div>
                <h4>Mg Ye` Zar Ni Tun</h4>
                <span>YKPT-21494</span>
                  <span>yezarnitun@ucsy.edu.mm</span>
              </div>
            </div>
          </div>
            <div class="card" data-filter="kathryn">
            <div class="d-flex">
              <div class="image">
                <img src="./images/profile-4.jpg" alt="" />
              </div>
              <div>
                <h4>Mg Pyae Phyo Thu</h4>
                  <span>YKPT-</span>
                <span>pyaephyothu@ucsy.edu.mm</span>
              </div>
            </div>
          </div>
           
        </div>
        <div class="col">
          <h2>
            What our Customers <br />
            <span>are saying</span>
          </h2>
          <div class="test-wrapper">
            <div class="testimonial active" data-id="rosele">
              <div class="d-flex">
                <div>
                  <h4>Rosele Desoza</h4>
                  <span>Marketing Coordinator</span>
                </div>

                <div class="rating">
                  <span><i class="bx bxs-star"></i></span>
                  <span><i class="bx bxs-star"></i></span>
                  <span><i class="bx bxs-star"></i></span>
                  <span><i class="bx bxs-star"></i></span>
                  <span><i class="bx bxs-star"></i></span>
                </div>
              </div>

              <p>
                “Having good restaurant reviews is crucial these days. It is not
                just making our decision to pick one easier, it is also helping
                the restaurant be more successful. You can quickly copy and
                paste these good restaurant review examples, publish them on
                Facebook”
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
   
    <div class="footer-bottom">
      <div class="row container d-flex">
        <p>Copyright © 2021 Pixency</p>
        <p>Created by Asha</p>
      </div>
    </div>

    <!--=============== Swiper JS ===============-->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!--=============== Custom JS ===============-->
    <script src="js/testimonial.js"></script>
    <script src="js/products.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
