<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="appointment.aspx.cs" Inherits="SpaMassageHomepage.schedCalendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/homeStyle.css" rel="stylesheet" />  
    <link href="css/appointment.css" rel="stylesheet" />  


</head>
<body>
    <form id="form1" runat="server">
    <div>

       <div class="homepage">
         
            <div class="navBarTop">

                

                <ul class="navbarList">

                    <a class="webLogo">
                        <img class="webImg" src="imgs/NuruMassage.png" />
                    </a>
                    <a id="homeRef" href="Homepage.aspx"> HOME </a>
                    <a id="srvcs" href="schedCalendar.aspx"> SERVICES </a>
                    <a id="sched" href="appointment.aspx"> APPOINTMENT </a>
                    <a id="loc" href="schedCalendar.aspx"> LOCATION </a>
                    <a id="contact" href="Contacts.aspx"> CONTACT </a>
                    <a id="info" href="schedCalendar.aspx"> ABOUT US </a>
                    <a id="navLogo" href="/"> 
                        <img id="navLogoImg" src="imgs/lotusPink.png" />
                    </a>

                </ul>
    </div>
        <div class="divHeader">
            
            <p id="wlcmTxt"> Appointments </p>
  
        </div>

           <div class="schedCal">

            <h2> Hello! </h2>
            <asp:ImageButton ID="calendarIcon" runat="server" ImageUrl="imgs/calenIcon.png" OnClick="calendarIcon_Click" Height="44px" Width="50px"/>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="349px" Width="507px" NextPrevFormat="FullMonth" Visible="False" OnSeletionChanged="Calendar1_SelectionChanged">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
               </asp:Calendar>

               <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"/>

               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    

    </div>

    </form>
</body>
</html>