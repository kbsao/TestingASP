<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserDetails.aspx.cs" Inherits="UserDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Details</title>
    <link href="PageNavigation_css.css" rel="stylesheet" />
</head>
<body id="Background_Cover">
    <form id="form1" runat="server">
         <center>
           <div style="height:200px;"></div>
            
             <div id="div_user" runat="server">
               <br /><br /><br />
              <asp:Label ID="user_name" runat="server" Text="Customer Name : " ForeColor="White" ></asp:Label>
                 &nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="user_name_value" runat="server" ></asp:TextBox>  
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                  ErrorMessage="Name Required" ControlToValidate="user_name_value" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
              <br /><br />
              <asp:Label ID="user_email" runat="server" Text="Customer Email : " ForeColor="White"></asp:Label>
                  &nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="user_email_value" runat="server"></asp:TextBox>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red" ControlToValidate="user_email_value"
                 ErrorMessage="Email entered not valid!" ValidationExpression=".+@.+"></asp:RegularExpressionValidator>
                 <br /><br /><br />
            <asp:Button ID="details_submit" runat="server" Text="Submit" onClick="details_submit_Click"></asp:Button>
                 <br /><br /><asp:Label ID="checklbl" runat="server" Text=""></asp:Label>
        </div>
          </center>
    </form>
</body>
</html>
