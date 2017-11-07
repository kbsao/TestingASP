<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PurchaseInvoice.aspx.cs" Inherits="PurchaseInvoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirm Purchase</title>
     <link href="BookSearch_css.css" rel="stylesheet" />
</head>
<body id="Background_Cover">
    <form id="form1" runat="server">
        <center>
            <div style="height:100px"></div>
        <div id="div_purchase" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookSystemDBConnectionString %>" SelectCommand="SELECT * FROM BookMaster WHERE ISBN=@id">
               <SelectParameters>
                   <asp:SessionParameter Name="id" SessionField="purchase_isbn" Type="Int32" />
               </SelectParameters>
            </asp:SqlDataSource>
            <br /><br />
            <asp:Label ID="Label1" runat="server" Text="Confirm Purchase" ForeColor="#ff9933" Font-Size="X-Large" Font-Underline="true" ></asp:Label>
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"  AlternatingRowStyle-ForeColor="#33ccff" ForeColor="White" BackColor="Transparent" >
               <HeaderStyle Font-Bold="true" ForeColor="#cccc00" BackColor="Transparent" />
            </asp:GridView><br />
            <br />

            <asp:Button ID="Button1" runat="server" Text="GENERATE INVOICE" OnClick="Button1_Click" BackColor="Transparent" ForeColor="White" BorderStyle="Ridge" Width="191px" />
            <br /><br />
            <asp:Button ID="cancelbtn" runat="server" Text="CANCEL" OnClick="Button2_Click" BackColor="Transparent" ForeColor="White" BorderStyle="Ridge" Width="191px" />

            <asp:Label ID="checklbl" runat="server" Text=""></asp:Label>
            <br /><br />

            <asp:Label ID="lbl_noc" ForeColor="red" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        </div>
            </center>
    </form>
</body>
</html>
