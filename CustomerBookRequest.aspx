<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerBookRequest.aspx.cs" Inherits="CustomerBookRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Request</title>
    <link href="addbook_css.css" rel="stylesheet" />
    <link href="CustomerBookRequest.css" rel="stylesheet" />

</head>
<body style=" background-image: url(images/WelcomeBG3.jpg) !important; background-size: cover !important;">
    <form id="form1" runat="server">
        <div style="Height:100px"></div>
        <center>
        <div id="book_container" runat="server" style="Height:500px; margin-left: 40px;">
            <br /><br />
               <asp:Label ID="cust_name" runat="server" Text="Welcome, " ForeColor="#00ccff" Font-Size="Larger"></asp:Label>
            <br /><br />
            <asp:Label Text="Enter Details for Procurement" runat="server" ForeColor="#ff9933" Font-Size="X-Large" Font-Underline="true" Font-Bold="true" />
            <br /><br /><br />
         <asp:Table runat="server" CellPadding="10"  >
          <asp:TableRow>
            <asp:TableCell>  
               <asp:Label ID="cust_email" ForeColor="WhiteSmoke" runat="server" Text="Customer Email :"></asp:Label>
            </asp:TableCell> 
            <asp:TableCell> 
               <asp:TextBox ID="cust_email_value" runat="server"></asp:TextBox>
            </asp:TableCell> 
            <asp:TableCell>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="#33cc33"
                 ErrorMessage="Please enter your email" ControlToValidate="cust_email_value"></asp:RequiredFieldValidator>
            </asp:TableCell>
         </asp:TableRow>

          <asp:TableRow>
             <asp:TableCell>         
                <asp:Label ID="book_name" ForeColor="WhiteSmoke" runat="server" Text="Book Name :"></asp:Label>
             </asp:TableCell>
             <asp:TableCell> 
                <asp:TextBox ID="book_name_value" runat="server"></asp:TextBox>
             </asp:TableCell>
             <asp:TableCell>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="#33cc33" ErrorMessage="Book name required" 
                 ControlToValidate="book_name_value"></asp:RequiredFieldValidator>
             </asp:TableCell>
            </asp:TableRow>
            
           <asp:TableRow>          
             <asp:TableCell>
               <asp:Label ID="book_author" ForeColor="WhiteSmoke" runat="server" Text="Author :"></asp:Label>
             </asp:TableCell>
             <asp:TableCell>  
               <asp:TextBox ID="book_author_value" runat="server"></asp:TextBox>
             </asp:TableCell>
             <asp:TableCell>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="#33cc33" ErrorMessage="Author name required"
                  ControlToValidate="book_author_value">
              </asp:RequiredFieldValidator> 
             </asp:TableCell>
            </asp:TableRow>               

           <asp:TableRow>                      
               <asp:TableCell>
                   <asp:Label id="book_subject" ForeColor="WhiteSmoke" Text="Subject :" runat="server" />
               </asp:TableCell><asp:TableCell> 
                   <asp:TextBox ID="book_subject_value" runat="server"></asp:TextBox>
               </asp:TableCell></asp:TableRow><asp:TableRow>
              <asp:TableCell>
                <asp:Label ID="publish_year" ForeColor="WhiteSmoke" runat="server" Text="Publish Year :"></asp:Label>
               </asp:TableCell><asp:TableCell>
                <asp:TextBox ID="publish_year_value" runat="server"></asp:TextBox>
              </asp:TableCell></asp:TableRow></asp:Table><br />
            
            <asp:Button ID="cust_req_btn" runat="server" Text="SUBMIT" Width="100px" Height="30px" OnClick="cust_req_btn_Click" BackColor="Transparent" BorderStyle="Ridge" ForeColor="White"> </asp:Button>
             <br /><br />
                    <asp:Label ID="checklbl" ForeColor="WhiteSmoke" runat="server" Text=""></asp:Label>

        </div>

        </center></form></body></html>