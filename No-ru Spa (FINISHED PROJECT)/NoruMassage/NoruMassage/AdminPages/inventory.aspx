<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inventory.aspx.cs" Inherits="NoruMassage.inventory" EnableEventValidation ="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="~/css/bootstrap.min.css" rel="stylesheet" />

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
                        <a class="nav-link" href="inventory.aspx" style="color: #3AB0FF;">Inventory</a>
                    </li>
                </ul>
                
          </div>
        </nav>

    
    </div>
    <div class="container-fluid">
        <div class="row flex-nowrap">
            <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-dark">
                <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                    <a href="/" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                        <span class="fs-5 d-none d-sm-inline">Inventory Categories</span>
                    </a>
                    <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
                        <li class="nav-item">
                            <a href="categories/spaEquipments.aspx" class="nav-link align-middle px-0">
                                <i><img src="../imgs/spaEqp.jpg" style="height: 30px; width: 30px; border-radius: 50%;"/></i> <span class="ms-1 d-none d-sm-inline" style="color: white;">Spa Equipments</span>
                            </a>
                        </li>
                        <li>
                            <a href="categories/supply.aspx" class="nav-link px-0 align-middle">
                                <i><img src="../imgs/shampoo.jpg" style="height: 30px; width: 30px; border-radius: 50%;"/></i> <span class="ms-1 d-none d-sm-inline" style="color: white;">Consumables / Supplies</span></a>
                        </li>
                        <li>
                            <a href="categories/weeklyRep.aspx" class="nav-link px-0 align-middle">
                                <i><img src="../imgs/supplier.png" style="height: 30px; width: 30px; border-radius: 50%; background-color: white;"/></i> <span class="ms-1 d-none d-sm-inline" style="color: white;">Weekly Reports</span> </a>
                        </li>
                    </ul>
                    <hr/>
                 </div>
            </div>
            
                


        </div>
            
    </div>
            

           

    </form>
</body>
</html>
