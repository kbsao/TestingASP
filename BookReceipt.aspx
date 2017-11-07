<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookReceipt.aspx.cs" Inherits="BookReceipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Customer Sales Receipt</title>
    <link rel="stylesheet" href="sales_receipt_css.css" />
</head>

<body style="background-image: url(images/WelcomeBG3.jpg) !important; background-size: cover !important">
    <form id="form1" runat="server">
      <center>
          <div style="height:40px;"></div>
         <div  id="invoice_form" >
            
              <div id="invoice_header" style ="background-color:grey; height:100px">
                 <br />
                    <center>
                      <asp:Label ID="Sales_Receipt" runat="server" Font-Size="40px" Text="SALES INVOICE"></asp:Label>
                    </center>
                  <br />
               <asp:Label ID="showdate" runat="server" ></asp:Label>
               <br />
                
           </div>
            
             <br /><br />

                       <b> <asp:Label ID="cust_name" runat="server" Text="Name :" Font-Size="Large"></asp:Label> </b>
                        
                        <asp:Label ID="cust_name_value" runat="server" ForeColor="#ff9933" Font-Size="Large" ></asp:Label>  <br />
                        <br />
                        <b> <asp:Label ID="email" runat="server" Text="Email ID :" Font-Size="Large"></asp:Label> </b>
                         <asp:Label ID="cust_email_value" runat="server" ForeColor="#ff9933" Font-Size="Large" ></asp:Label> <br /><br /><br />

            
             
            <b> <asp:Label ID="item_summary" runat="server" Text="Item Summary" Font-Underline="true"></asp:Label> </b><br /><br />

            <br />
             
              <asp:Label ID="Label1" runat="server" Text="Date and Time of Purchase : " Font-Bold="true"></asp:Label>
             <asp:Label ID="lbldate" runat="server" Text=""></asp:Label><br />
              <br />


             <asp:Label ID="lbl_booktitle" runat="server" Text="Title: "></asp:Label>

             
             <br />
             <br />


             <asp:Label ID="lbl_bookauthor" runat="server" Text="Author: "></asp:Label>
            
             <br />
             <br />

             <b><asp:Label ID="lbl_bookprice" runat="server" Text="Price: " ForeColor="Red" Font-Size="Larger"></asp:Label></b>
           
             <br />
             <br />
           
             <asp:Button ID="Button1" runat="server" Text="QUIT" OnClick="Button1_Click"></asp:Button>
             

             <br /><br />
           

         
        </div>
       </center>
    </form>
</body>
</html>
