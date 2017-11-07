<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SalesData.aspx.cs" Inherits="SalesData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sales Data</title>
    <link href="SalesDataCSS.css" rel="stylesheet" />
</head>
<body id="Background_Cover">
    <form id="form1" runat="server">
        <center>
            <div style="height:170px"></div>
        <div id="sales" runat="server" style="height:300px ; width:600px">
            <br /><br />
            <asp:Label ID="sales_stats" runat="server" Text="SALES INFORMATION" ForeColor="#ff9933" Font-Size="X-Large" Font-Underline="true"></asp:Label>
            <br /><br />
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookSystemDBConnectionString %>" SelectCommand="SELECT * FROM [PurchaseBooks]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" ForeColor="White" AutoGenerateColumns="false" BackColor="Transparent" AllowPaging="true" AllowSorting="true" AlternatingRowStyle-ForeColor="#0099ff" BorderWidth="1" BorderColor="#999999">

                <HeaderStyle ForeColor="#ff9933" BackColor="Transparent" />
                 <Columns>            

                        <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="true" SortExpression="ISBN" />  
                        <asp:BoundField DataField="Title" HeaderText="Title" ReadOnly="true" SortExpression="Title" />  
                        <asp:BoundField DataField="Author" HeaderText="Author" ReadOnly="true" SortExpression="Author" />
                         <asp:BoundField DataField="NumberOfCopies" HeaderText="No. of Copies" ReadOnly="true" SortExpression="NumberOfCopies" />  
                        <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="true" SortExpression="Price" /> 
                        
                    
                </Columns>
            </asp:GridView>

           
        </div>
        </center>
    </form>
</body>
</html>
