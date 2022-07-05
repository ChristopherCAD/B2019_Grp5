<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="NoruMassage.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/homeStyle.css" rel="stylesheet" />    
    <link href="css/contacts.css" rel="stylesheet" />  

    <style type="text/css">
        .auto-style1 {
            width: 257px;
        }
    </style>

</head>
<body>
    <form id="form2" runat="server">


    <div class="homepage">


        <div class="navBarTop">
                 <ul class="navbarList">

                    <a class="webLogo">
                        <img class="webImg" src="imgs/NuruMassage.png" />
                    </a>
                    <a id="homeRef" href="Homepage.aspx"> HOME </a>
                    <a id="srvcs" href="services.aspx"> SERVICES </a>
                    <a id="sched" href="appointment.aspx"> APPOINTMENT </a>
                    <a id="loc" href="Location.aspx"> LOCATION </a>
                    <a id="contact" href="Contacts.aspx"> CONTACT </a>
                    <a id="info" href="aboutUsNew.aspx"> ABOUT US </a>
                    <a id="navLogo" href="adminLogin.aspx"> 
                        <img id="navLogoImg" src="imgs/NoruIcon.png" />
                    </a>

                </ul>
            </div>
                 <div style="text-align:center">
                    <h2>Contact Us</h2>
                 </div>
                <div class="row">
                    <div class="column">
      
                    </div>
                    <div class="column">
                    <form action="/action_page.php">
                        <label for="fname">First Name</label>
                                <input type="text" id="fname" name="firstname" placeholder="Your name..">
                                <label for="lname">Last Name</label>
                                <input type="text" id="lname" name="lastname" placeholder="Your last name..">
                                <label for="philippines">Philippines</label>
                                <select id="address" name="address">
                                 <option value="lower bicutan">Lower Bicutan</option>
                                  <option value="new lower bicutan">New Lower Bicutan</option>
                                  <option value="bagumbayan">Bagumbayan</option>
                                  <option value="hagonoy">Hagonoy</option>
                                  <option value="north signal">North Signal</option>
                                  <option value="south signal">South Signal</option>
                                  <option value="tuktukan">Tuktukan</option>
                                </select>
                                <label for="subject">Subject</label>
                                <textarea id="subject" name="subject" placeholder="Write something.." style="height:170px"></textarea>
                                <input type="submit" value="Submit">
                    </form>
                </div>
                </div>



        <!-- Footer -->
        <footer class="page-footer font-small mdb-color lighten-3 pt-4">
            <!-- Footer Elements -->
          <div class="container" style ="background-color : #ADCF9F;">

            <!--Grid row-->
            <div class="row">

              <!--Grid column-->
              <div class="col-lg-2 col-md-12 mb-4">

                <!--Image-->
                <div class="view overlay z-depth-1-half">         
                  <a href="https://www.facebook.com/TopheeeeeerrDalisay">
                    <img src="imgs/dalisay.jpg" class="img-fluid" alt="" id="Image1">
                  </a>
                </div>

              </div>
              <!--Grid column-->

              <!--Grid column-->
              <div class="col-lg-2 col-md-6 mb-4">

                <!--Image-->
                <div class="view overlay z-depth-1-half">
                  <a href="https://www.facebook.com/jaydee.domingo.15/">
                      <img src="imgs/domingo.jpg" class="img-fluid"
                    alt="" id="Image2">
                    <div class="mask rgba-white-light"></div>
                  </a>
                </div>

              </div>
              <!--Grid column-->

              <!--Grid column-->
              <div class="col-lg-2 col-md-6 mb-4">


                <!--Image-->
                <div class="view overlay z-depth-1-half">
                  <a href="https://www.facebook.com/Mark.Matt.Baccay2000">
                      <img src="imgs/baccay.jpg" class="img-fluid"
                    alt="" id ="Image3">
                    <div class="mask rgba-white-light"></div>
                  </a>
                </div>

              </div>
              <!--Grid column-->

              <!--Grid column-->
              <div class="col-lg-2 col-md-12 mb-4">

                <!--Image-->
                <div class="view overlay z-depth-1-half">
                  <a href="https://www.facebook.com/JohnPaulSibanicoDeLuna">
                      <img src="imgs/deluna1.jpg" class="img-fluid"
                    alt="" id="Image4">
                    <div class="mask rgba-white-light"></div>
                  </a>
                </div>

              </div>
              <!--Grid column-->

              <!--Grid column-->
              <div class="col-lg-2 col-md-6 mb-4">

                <!--Image-->
                <div class="view overlay z-depth-1-half">
                  <a href="https://www.facebook.com/Donald.hibe123">
                      <img src="imgs/hibe.jpg" class="img-fluid"
                    alt="" id="Image5">
                    <div class="mask rgba-white-light"></div>
                  </a>
                </div>

              </div>
              <!--Grid column-->

              <!--Grid column-->
              <div class="col-lg-2 col-md-6 mb-4">

                <!--Image-->
                <div class="view overlay z-depth-1-half">
                  <img src="imgs/logo.jpg" class="img-fluid"
                    alt="" id="Image6">
                  <a href="">
                    <div class="mask rgba-white-light"></div>
                  </a>
                </div>
              <!--Grid column-->

            </div>
            <!--Grid row-->

            </div>
          
        </footer>


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
                        <h6 class="text-uppercase fw-bold">NO-RU Massage</h6>
                        <hr
                            class="mb-4 mt-0 d-inline-block mx-auto"
                            style="width: 60px; background-color: #7c4dff; height: 2px"
                            />
                        <p>
                          The Goal of NO-RU massage is generally for the treatment of body stress or pain.
                        </p>
                      </div>
                      <!-- Grid column -->

                      

                      <!-- Grid column -->
                      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold">DEVELOPERS</h6>
                        <hr
                            class="mb-4 mt-0 d-inline-block mx-auto"
                            style="width: 60px; background-color: #7c4dff; height: 2px"
                            />
                        <p>
                          <a href="#!" class="text-dark">Christopher Dalisay</a>
                        </p>
                        <p>
                          <a href="#!" class="text-dark">Mark Matteus Baccay</a>
                        </p>
                        <p>
                          <a href="#!" class="text-dark">John Daniel Domingo</a>
                        </p>
                        <p>
                          <a href="#!" class="text-dark">John Paul De Luna</a>
                        </p>
                          <p>
                          <a href="#!" class="text-dark">Donald Hibe</a>
                        </p>
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
                        <p><i class="fas fa-home mr-3"></i> F3Q7+F96, C-6 Lower Bicutan Taguig, Metro Manila</p>
                        <p><i class="fas fa-envelope mr-3"></i> noruSpa@service.com</p>
                        <p><i class="fas fa-phone mr-3"></i> 0951-142-8812</p>
                      </div>
                      <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                  </div>
                </section>
                <!-- Section: Links  -->

              </footer>
              <!-- Footer -->
            </div>
            <!-- End of .container -->


    </div>
         
        
           
   </form>
</body>
</html>
