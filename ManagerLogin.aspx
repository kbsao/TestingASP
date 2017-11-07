<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManagerLogin.aspx.cs" Inherits="ManagerLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manager Login</title>
    <link href="ManagerLoginCSS.css" rel="stylesheet" />
</head>
<body id="Background_Cover">
    <form id="form1" runat="server">
        <div style="height:220px" ></div>
        <center>
        <div id="div_user" runat="server" height="200px">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Manager Credentials" ForeColor="#ff9933" Font-Size="X-Large" Font-Underline="true"></asp:Label>
            <br />
            <br />

            <asp:Label ID="manager_id" runat="server" Text="Manager Id: " ForeColor="White"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="manager_id_value" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="manager_pswd" runat="server" Text="Password: " ForeColor="White"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="manager_pswd_value" TextMode="Password" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="manager_login_btn" runat="server" Text="LOGIN" Height="30px" onClick="manager_login_btn_Click" ForeColor="White" BorderStyle="Ridge" BackColor="Transparent"></asp:Button>
        </div>
            
        </center>
    </form>
</body>
</html>
