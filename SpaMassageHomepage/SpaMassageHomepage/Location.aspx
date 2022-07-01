<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Location.aspx.cs" Inherits="SpaMassageHomepage.Location" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> LOCATION</title>

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/aboutus.css" rel="stylesheet" />    
    <link href="css/homeStyle.css" rel="stylesheet" /> 
       
</head>

<body>
    <form id="form1" runat="server">
    

        <div class="Location">
         
            <div class="navBarTop">

                

                <ul class="navbarList">

                    <a class="webLogo">
                        <img class="webImg" src="imgs/NuruMassage.png" />
                    </a>
                    <a id="homeRef" href="Homepage.aspx"> HOME </a>
                    <a id="srvcs" href="schedCalendar.aspx"> SERVICES </a>
                    <a id="sched" href="schedCalendar.aspx"> APPOINTMENT </a>
                    <a id="loc" href="Location.aspx"> LOCATION </a>
                    <a id="contact" href="schedCalendar.aspx"> CONTACT </a>
                    <a id="info" href="Aboutus.aspx"> ABOUT US </a>
                    <a id="navLogo" href="/"> 
                        <img id="navLogoImg" src="imgs/lotusPink.png" />


                    </a>

                </ul>

    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3862.930753378331!2d121.06120391475775!3d14.488664589873839!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397cf7cb9560b67%3A0x4e812522c7e85ab1!2sMercado%20del%20Lago%20Taguig!5e0!3m2!1sen!2sph!4v1656682632718!5m2!1sen!2sph"
         width="1200" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">

    </iframe>

               
        </div>
    </div>
    <!-- Remove the container if you want to extend the Footer to full width. -->
    <div class="container my-5">
      <!-- Footer -->
      <footer
              class="text-center text-lg-start text-dark"
              style="background-color: #ECEFF1"
              >
        <!-- Section: Social media -->
        <section
                 class="d-flex justify-content-between p-4 text-white"
                 style="background-color: #21D192"
                 >
          <!-- Left -->
          <div class="me-5">
            <span>Get connected with us on social networks:</span>
          </div>
          <!-- Left -->

          <!-- Right -->
          <div>
            <a href="" class="text-white me-4">
              <i class="fab fa-facebook-f"></i>
            </a>
            <a href="" class="text-white me-4">
              <i class="fab fa-twitter"></i>
            </a>
            <a href="" class="text-white me-4">
              <i class="fab fa-google"></i>
            </a>
            <a href="" class="text-white me-4">
              <i class="fab fa-instagram"></i>
            </a>
            <a href="" class="text-white me-4">
              <i class="fab fa-linkedin"></i>
            </a>
            <a href="" class="text-white me-4">
              <i class="fab fa-github"></i>
            </a>
          </div>
          <!-- Right -->
        </section>
        <!-- Section: Social media -->

        <!-- Section: Links  -->
        <section class="">
          <div class="container text-center text-md-start mt-5">
            <!-- Grid row -->
            <div class="row mt-3">
              <!-- Grid column -->
              <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                <!-- Content -->
                <h6 class="text-uppercase fw-bold">Company name</h6>
                <hr
                    class="mb-4 mt-0 d-inline-block mx-auto"
                    style="width: 60px; background-color: #7c4dff; height: 2px"
                    />
                <p>
                  <b>NORU MASSAGE</b> (TOUCH ME SOFTLY)
                </p>
              </div>
              <!-- Grid column -->

              <!-- Grid column -->
              
              <!-- Grid column -->

              <!-- Grid column -->
              <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                <!-- Links -->
                <h6 class="text-uppercase fw-bold">SCHEDULE</h6>
                <hr
                    class="mb-4 mt-0 d-inline-block mx-auto"
                    style="width: 60px; background-color: #7c4dff; height: 2px"
                    />
                 <p>MONDAY - SUNDAY</p>
                 <p>12pm-8pm</p>
                </>
              </div>
              <!-- Grid column -->

              <!-- Grid column -->
              <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                <!-- Links -->
                <h6 class="text-uppercase fw-bold">Contact</h6>
                <hr
                    class="mb-4 mt-0 d-inline-block mx-auto"
                    style="width: 60px; background-color: #7c4dff; height: 2px"
                    />
                <p><i class="fas fa-home mr-3"></i> F3Q7+F96, C-6, Lower Bicutan, Taguig, Metro Manila</p>
                <p><i class="fas fa-envelope mr-3"></i> info@example.com</p>
                <p><i class="fas fa-phone mr-3"></i> 09511428812</p>
              
              </div>
              <!-- Grid column -->
            </div>
            <!-- Grid row -->
          </div>
        </section>
        <!-- Section: Links  -->

        <!-- Copyright -->
        <div
             class="text-center p-3"
             style="background-color: rgba(0, 0, 0, 0.2)"
             >
          © 2020 Copyright:
          <a class="text-dark" href="https://mdbootstrap.com/"
             >MDBootstrap.com</a
            >
        </div>
        <!-- Copyright -->
      </footer>
      <!-- Footer -->
    </div>
<!-- End of .container -->

    </form>
</body>
</html>
