<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="NoruMassage.login" EnableEventValidation ="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Login Page </title>

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/login.css" rel="stylesheet" />    

</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="logo">
                <img src="imgs/NoruIcon.png" alt="">
            </div>
            <div class="text-center mt-4 name">
                Admin
            </div>
            <form class="p-3 mt-3">
                <div class="form-field d-flex align-items-center">
                    <span class="far fa-user"></span>
                    <input type="text" name="adminTb" id="adminTb" placeholder="Username" runat="server" />
                </div>
                <div class="form-field d-flex align-items-center">
                    <span class="fas fa-key"></span>
                    <input type="password" name="pwordTb" id="pwordTb" placeholder="Password" runat="server" />
                </div>
                <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn mt-3" OnClick="btnLogin_Click"/>
            </form>
        </div>

    </form>
</body>
</html>
