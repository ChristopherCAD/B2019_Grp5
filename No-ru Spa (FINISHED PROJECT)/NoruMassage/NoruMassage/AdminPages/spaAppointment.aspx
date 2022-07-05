<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="spaAppointment.aspx.cs" Inherits="NoruMassage.AdminPages.categories.spaAppointment" EnableEventValidation ="false" %>

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
                            <a class="nav-link" href="spaAppointment.aspx" style="color: #3AB0FF;">Appointments</a>
                        </li>
                        <li>
                            <a class="nav-link" href="inventory.aspx">Inventory</a>
                        </li>
                    </ul>
                
              </div>
            </nav>
            <div class="row">
            <div class="col-md-4"></div>
            <div class="col"></div>
                <h1 class="text-danger"> Update Appointment </h1>
            </div>

            <div class="row">
                        <div class="col-md-4 border p-4 shadow bg-light" style="padding: 10px;">
                            <div class="col-md-4">
                                <h3 class="fw-normal text-secondary fs-4 text-uppercase mb-4">Appointment form</h3>
                            </div>
                            <form>
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" id="fNameTb1" placeholder="First Name" runat="server" />
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" id="lNameTb1" placeholder="Last Name" runat="server" />
                                    </div>
                                    <div class="col-md-6">
                                        <input type="tel" class="form-control" id="phoneTb1" placeholder="Phone Number" runat="server" />
                                    </div>
                                    <div class="col-md-6">
                                        <input type="email" class="form-control" id="emailTb1" placeholder="Enter Email" runat="server" />
                                    </div>
                                    <div class="col-md-6">
                                        <input type="date" class="form-control" id="dateTb1" placeholder="Enter Date" runat="server" />
                                    </div>
                                    <div class="col-md-6">
                                        <input type="time" class="form-control" id="timeTb1" placeholder="Enter Time" runat="server" />
                                    <br />
                                    </div>
                                   <!-- <div class="col-12">
                                        <select class="form-select">
                                            <option selected="selected">Purpose Of Appointment</option>
                                            <option value="1">Web Design</option>
                                            <option value="2">Web Development</option>
                                            <option value="3">IOS Developemt</option>
                                        </select>
                                    </div> 
                                    -->
                                  <div class="container" style="border: solid green 1px;">
                                        <br />
                                            <h3 class="fw-normal text-secondary fs-4 text-uppercase mb-4">PACKAGES</h3>
                                      
                                            <input class="form-check-input" type="checkbox" id="package1" value="Rejuvenating Package" runat="server"/>
                                            <label class="form-check-label"> <h3 class="fw-normal text-secondary fs-4 text-uppercase mb-4"> Rejuvenating Package </h3> </label>
                                      <br />
                                         
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" id="pckg1Item" value="Soothing Facial" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox1"> Soothing Facial </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" id="pckg1Item2" value="Facial Detoxy" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox2">Facial Detoxy</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" id="pckg1Item4" value="Swedish Massage" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox3">Swedish Massage</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" id="Checkbox5" value="Foot Massage" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox3">Traditional Foot Massage</label>
                                                </div>
                                      <br />
                                        <br />
                                  </div>

                                    <div class="container" style="border: solid green 1px;">
                                        <br />
                                            <input class="form-check-input" type="checkbox" id="package2" value="Inner Calm Package" runat="server"/>
                                            <label class="form-check-label"> <h3 class="fw-normal text-secondary fs-4 text-uppercase mb-4">Inner Calm Therapy</h3> </label>
                                            
                                          <br />
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" value="Aroma" id="pckg2Item1" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox1"> Aroma Facial Therapy </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" value="Hot Stone Massage" id="pckg2Item2" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox2">Hot Stone Massage</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" value="Hot Stone Foot Massage" id="pckg2Item3" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox3">Hot Stone Foot Massage</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" value="brainDead" id="pckg2Item4" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox3">Neuromuscular Therapy</label>
                                                </div>
                                        <br />
                                        <br />
                                        </div>


                                    <div class="container" style="border: solid green 1px;">
                                        <br />
                                            <input class="form-check-input" type="checkbox" id="package3" value="Cloudy Body Package" runat="server"/>
                                            <label class="form-check-label"> <h3 class="fw-normal text-secondary fs-4 text-uppercase mb-4">Cloudy Soles</h3> </label>
                                            
                                          <br />
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" value="Deep Tissue" id="pckg3Item1" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox1"> Deep Tissue Massage </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" value="Hot Stone Massage" id="pckg3Item2" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox2">Traditional Foot Massage</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" value="Hot Stone Foot Massage" id="pckg3Item3" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox3">Hot Stone Foot Massage</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" value="Aroma" id="pckg3Item4" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox3">Aroma Facial Therapy</label>
                                                </div>
                                        <br />
                                        <br />
                                        </div>


                                    <div class="container" style="border: solid green 1px;">
                                        <br />
                                            <input class="form-check-input" type="checkbox" id="package4" value="Eastern Style" runat="server"/>
                                            <label class="form-check-label"> <h3 class="fw-normal text-secondary fs-4 text-uppercase mb-4">Eastern Asia Style</h3> </label>
                                            
                                          <br />
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" value="Aroma" id="pckg4Item1" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox1"> Aroma Facial Therapy </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" value="Hot Stone Massage" id="pckg4Item2" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox2">Hot Stone Massage</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" value="Acupuncture" id="pckg4Item3" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox3">Acupuncture</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" value="Ayuverda" id="pckg4Item4" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox3">Ayuverda Foot Massage</label>
                                                </div>
                                        <br />
                                        <br />
                                        </div>


                                    <div class="container" style="border: solid green 1px;">
                                        <br />
                                            <input class="form-check-input" type="checkbox" id="package5" value="Sports" runat="server"/>
                                            <label class="form-check-label"> <h3 class="fw-normal text-secondary fs-4 text-uppercase mb-4">Sport Massage Therapy</h3> </label>
                                            
                                          <br />
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" value="braindead" id="pckg5Item1" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox1"> Neuromuscular Therapy </label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" value="Sports Massage" id="pckg5Item2" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox2">Sports Massage</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" value="Thai Foot" id="pckg5Item3" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox3">Thai Foot Massage</label>
                                                </div>
                                                <div class="form-check form-check-inline">
                                                          <input class="form-check-input" type="checkbox" value="Hot Stone Foot" id="pckg5Item4" runat="server" checked disabled/>
                                                          <label class="form-check-label" for="inlineCheckbox3">Hot Stone Foot Massage</label>
                                                </div>
                                        <br />
                                        <br />
                                        </div>
                                    
                                    

                                    </div>
                                    <div class="col-12">
                                        <br />
                                        
                                        <textarea class="form-control"  placeholder="Message" id="customerMsg" runat="server"></textarea>
                                    </div>
                                    <div class="col-12 mt-5">
                                        <asp:Button ID="editApptBttn" runat="server" Text="Update" class="btn btn btn-primary float-middle" OnClick="editApptBttn_Click"/>

                                        <asp:Button ID="deleteApptBttn" runat="server" Text="Delete" class="btn btn btn-danger float-begin" OnClick="deleteApptBttn_Click"/>
                                    </div>

                                </form>
                        </div>
                    <div class="col-md-4">

                        <div>
                            <h2 class="text-primary"> Appointment Table </h2>
                            
                            <asp:GridView ID="apptGV" runat="server" class="table table-danger" AutoGenerateSelectButton="true" 
                                OnRowDataBound="apptGV_RowDataBound"
                                OnSelectedIndexChanged="apptGV_SelectedIndexChanged"></asp:GridView>

                        </div>

                    </div>    
                    </div>
                    

        </div>
    </form>
</body>
</html>