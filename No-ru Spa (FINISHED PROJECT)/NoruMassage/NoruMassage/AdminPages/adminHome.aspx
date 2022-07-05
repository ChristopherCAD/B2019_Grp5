<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminHome.aspx.cs" Inherits="NoruMassage.Admin_Pages.adminHome" EnableEventValidation ="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <link href="~/css/bootstrap.min.css" rel="stylesheet" />
    <script src="~/js/bootstrap.min.css"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Admin</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="nav navbar-nav navbar-danger">
                    <li>
                        <a class="nav-link" href="adminHome.aspx">Home</a>
                    </li>
                    <li>
                        <a class="nav-link" href="spaAppointment.aspx">Appointments</a>
                    </li>
                    <li>
                        <a class="nav-link" href="inventory.aspx">Inventory</a>
                    </li>
                </ul>
                
          </div>
        </nav>

    
    </div>
    </form>
</body>
</html>
