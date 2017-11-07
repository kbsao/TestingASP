<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserPurchaseDetails.aspx.cs" Inherits="UserPurchaseDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Customer Details</title>
    <link href="UserPurchaseDetails.css" rel="stylesheet" />
</head>
<body id="Background_Cover">
    <form id="form1" runat="server">
         <center>
           <div style="height:200px;"></div>
            
             <div id="page_view" runat="server">
               <br /><br />

                 <asp:Label ID="Label1" runat="server" Text="Enter Your Details" ForeColor="#ff9933" Font-Size="X-Large" Font-Underline="true" ></asp:Label>
                 <br />
                 <br />
                 <br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="user_name" runat="server" Text="Customer Name : " ForeColor="White" ></asp:Label>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="user_name_value" runat="server"  ></asp:TextBox>  
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                  ErrorMessage="Name Required" ControlToValidate="user_name_value" Font-Bold="true" ForeColor="#33cc33"></asp:RequiredFieldValidator>
              <br /><br />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="user_email" runat="server" Text="Customer Email : " ForeColor="White"></asp:Label>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="user_email_value" runat="server"></asp:TextBox>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Font-Bold="true" ForeColor="#33cc33" ControlToValidate="user_email_value"
                 ErrorMessage="Invalid email address!" ValidationExpression=".+@.+"></asp:RegularExpressionValidator>
                 <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <br /><br />
            <asp:Button ID="details_submit" runat="server" Text="SUBMIT" Height="30px" onClick="details_submit_Click" BackColor="Transparent" BorderStyle="Ridge" ForeColor="White"></asp:Button>
        </div>

             
          </center>
    </form>
</body>
</html>
