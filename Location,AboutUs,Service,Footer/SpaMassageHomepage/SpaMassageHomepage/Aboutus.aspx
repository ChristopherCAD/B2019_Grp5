<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="SpaMassageHomepage.formAboutUs" %>

<!DOCTYPE html>

<html>


<head runat="server">
    <title></title>

    <link href="css/bootstrap.min.css" rel="stylesheet" />  
    <link href="css/homeStyle.css" rel="stylesheet" />   
     <link href="css/aboutus.css" rel="stylesheet" />   

</head>


<body>
  
    <form id="formAboutUs" runat="server">

    <div class="About" style="height: 1100px; ">
         
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
                <section class ="about">
                    <div class="main">
                        <div class ="all-text">
                            
                            <img src="imgs/logo22.png">
                            <h4> About us</h4>
                            <h1> NORU MASSAGE</h1>

                            <p> In 1996, The NURO Massage is a spa industry in the Philippines with the opening of its first branch in Acropolis.
                                 Conforming to high standards of excellence, 
                                The Spa is an accredited member of the International Spa Association (ISPA). 
                                It is also the first spa in the Philippines to be awarded the Superbrand status.
                                <br >
                                <br >

                                To cater to the evolving needs of its clients, The Spa Wellness was born through the introduction of three brands under its belt barre3,
                                 a revolutionary workout combining the benefits of ballet barre, 
                                yoga and pilates, SKIN Dermatology & Laser Center, beautiful skin and body by certified dermatologists and The Spa Wellness, 
                                pampering and rejuvenation at its best.
                            </p>
                            
                        </div>
                    </div>
                </section>
            </div>
    </div>
        <div class="footer"></div>
          </form>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
