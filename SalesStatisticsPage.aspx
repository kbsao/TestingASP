<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SalesStatisticsPage.aspx.cs" Inherits="SalesStatisticsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <link href="PageNavigation_css.css" rel="stylesheet" />
    <link href="SalesStatisticsCSS.css" rel="stylesheet" />
    <link href="SalesStatistics1CSS.css" rel="stylesheet" />
</head>
<body id="Background_Cover">
    <form id="form1" runat="server">
        <center>
        <div style="height:180px"></div>
        <div id="div_user" runat="server">
            <br />
            <br />
            <asp:Label ID="welcome" runat="server" ForeColor="#00ff99" Font-Size="25px" Text="Welcome, "></asp:Label><br /><br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="ADD NEW BOOK" Height="30px"  Width="290px" ForeColor="White" BackColor="Transparent" BorderStyle="Ridge" OnClick="Button1_Click"/><br /><br />
            <asp:Button ID="Button3" runat="server" Text="UPDATE COPIES OF EXISTING BOOKS" Height="30px" Width="290px"  ForeColor="White" BackColor="Transparent" BorderStyle="Ridge" OnClick="Button3_Click"/><br /><br />
            <asp:Button ID="Button2" runat="server" Text="SALES STATISTICS" Height="30px"  Width="290px"  ForeColor="White" BackColor="Transparent" BorderStyle="Ridge" OnClick="Button2_Click"/><br /><br />
            <asp:Button ID="Button4" runat="server" Text="CHECK COPIES" Height="30px"  Width="290px"  ForeColor="White" BackColor="Transparent" BorderStyle="Ridge" OnClick="Button4_Click"/><br /><br />

        </div>
        </center>

    </form>
</body>
</html>
