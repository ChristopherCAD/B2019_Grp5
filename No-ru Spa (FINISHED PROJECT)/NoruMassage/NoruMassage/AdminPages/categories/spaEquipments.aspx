<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="spaEquipments.aspx.cs" Inherits="NoruMassage.AdminPages.categories.spaEquipments" EnableEventValidation ="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../../css/bootstrap.min.css" rel="stylesheet" />

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
                        <a class="nav-link" href="../adminHome.aspx">Home</a>
                    </li>
                    <li>
                        <a class="nav-link" href="../spaAppointment.aspx">Appointments</a>
                    </li>
                    <li>
                        <a class="nav-link disabled" href="../inventory.aspx" style="color: #3AB0FF;">Inventory</a>
                    </li>
                    <li>
                        <a class="nav-link" href="../wklyReport.aspx">Weekly Report</a>
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
                            <a href="spaEquipments.aspx" class="nav-link align-middle px-0 disabled">
                                <i><img src="../../imgs/spaEqp.jpg" style="height: 30px; width: 30px; border-radius: 50%;"/></i> <span class="ms-1 d-none d-sm-inline" style="color: #3AB0FF;">Spa Equipments</span>
                            </a>
                        </li>
                        <li>
                            <a href="supply.aspx" class="nav-link px-0 align-middle">
                                <i><img src="../../imgs/shampoo.jpg" style="height: 30px; width: 30px; border-radius: 50%;"/></i> <span class="ms-1 d-none d-sm-inline" style="color: white;">Consumables / Supplies</span></a>
                        </li>
                        <li>
                            <a href="weeklyRep.aspx" class="nav-link px-0 align-middle">
                                <i><img src="../../imgs/report.jpg" style="height: 30px; width: 30px; border-radius: 50%; background-color: white;"/></i> <span class="ms-1 d-none d-sm-inline" style="color: white;">Weekly Reports</span> </a>
                        </li>
                    </ul>
                    <hr/>
                 </div>
            </div>
            <div class="col-md-4">
                <div> <h2 class="text-danger"> Spa Equipments </h2> </div>
                <div>
                    <form>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Equipment</label>
                            <input type="text" class="form-control" id="eqpmntTb" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Equipment Availability</label>
                            <input type="text" class="form-control" id="avlbltTb" runat="server" />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Equipment Status</label>
                            <input type="text" class="form-control" id="statTb" runat="server" />
                        </div>
                        <!--<div class="col-12">
                            <select class="form-select" >
                                <option selected>Availability</option>
                                <option value="FREE">FREE</option>
                                <option value="OCCUPIED">OCCUPIED</option>
                                <option value="SCHEDULED">SCHEDULED</option>
                                <option value="REPAIRING">REPAIRING</option>
                            </select>
                        </div>-->
                        <br />

                        
                          <asp:Button ID="editBttn" runat="server" Text="Edit" class="btn btn-danger" OnClick="editBttn_Click"/>
                          <asp:Button ID="addBttn" runat="server" Text="Save" class="btn btn-danger" OnClick="addBttn_Click"/>
                          <asp:Button ID="deleteBttn" runat="server" Text="Delete" class="btn btn-danger" OnClick="deleteBttn_Click"/>
                     </form>
               
        </div>
               
                

            </div>
            <div class="col-md-5">

                        <div>
                            <h2 class="text-primary"> Equipment Database </h2>
                            
                            <asp:GridView ID="equipmentGV" runat="server" class="table table-danger" AutoGenerateSelectButton="true" 
                                OnRowDataBound="equipmentGV_RowDataBound" OnSelectedIndexChanged="equipmentGV_SelectedIndexChanged"></asp:GridView>

                        </div>

                </div>
                


        </div>
            
    </div>
            

           

    </form>
</body>
</html>
