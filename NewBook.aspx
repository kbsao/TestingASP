<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewBook.aspx.cs" Inherits="NewBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Book</title>
    <link href="NewBookCSS.css" rel="stylesheet" />
</head>
<body style="background-image: url(images/WelcomeBG3.jpg) !important;
        background-size: cover !important;">
    <form id="form1" runat="server">
        <center>
         <div style="height:70px"></div>
         <div id="book_container" runat="server" style="height:450px">
               <br />
             <asp:Label ID="Label1" runat="server" Text="Enter Book Details" ForeColor="#ff9933" Font-Size="X-Large" Font-Underline="true"></asp:Label>
             <br /><br /><br />
               <asp:Label ID="book_isbn" runat="server" Text="Book ISBN :"  ForeColor="WhiteSmoke"></asp:Label>
               <asp:TextBox ID="book_isbn_value" runat="server" Width="88px"></asp:TextBox> 
                       <br /><br /><br />
       
             <asp:Table runat="server" CellSpacing="5" CellPadding="8" >
                  <asp:TableRow>
                      <asp:TableCell>
                           <asp:Label ID="book_title" runat="server" Text="Book Title :"  ForeColor="WhiteSmoke"></asp:Label>
                       </asp:TableCell> 
                      <asp:TableCell>
                            <asp:TextBox ID="book_title_value" runat="server"></asp:TextBox>
                      </asp:TableCell>
                      <asp:TableCell>
                             <asp:Label ID="book_author" runat="server" Text="Book Author :" ForeColor="WhiteSmoke"></asp:Label>
                      </asp:TableCell>
                      <asp:TableCell>
                             <asp:TextBox ID="book_author_value" runat="server"></asp:TextBox>
                       </asp:TableCell>
                    </asp:TableRow>
            
                 <asp:TableRow Height="10px"></asp:TableRow>
                    
                    <asp:TableRow>
                       <asp:TableCell>
                            <asp:Label ID="book_price" runat="server" Text="Book Price :" ForeColor="WhiteSmoke"></asp:Label>
                       </asp:TableCell>
                       <asp:TableCell>
                            <asp:TextBox ID="book_price_value" runat="server"></asp:TextBox></asp:TableCell>
                       <asp:TableCell>
                            <asp:Label ID="book_subject" runat="server" Text="Subject :" ForeColor="WhiteSmoke"></asp:Label>
                       </asp:TableCell> 
                       <asp:TableCell>
                             <asp:TextBox ID="book_subject_value" runat="server"></asp:TextBox>
                       </asp:TableCell></asp:TableRow>
            
                 <asp:TableRow Height="10px"></asp:TableRow>
                 
                 <asp:TableRow> 
                     <asp:TableCell>
                         <asp:Label ID="book_rackno" runat="server" Text="Rack Number :" ForeColor="WhiteSmoke"></asp:Label>
                     </asp:TableCell> 
                     <asp:TableCell>
                          <asp:TextBox ID="book_rackno_value" runat="server"></asp:TextBox> 
                     </asp:TableCell>
                     <asp:TableCell>
                           <asp:Label ID="book_copies" runat="server" Text="Copies Available :" ForeColor="WhiteSmoke"></asp:Label>
                     </asp:TableCell>
                     <asp:TableCell>
                           <asp:TextBox ID="book_copies_value" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>

            <asp:TableRow Height="10px"></asp:TableRow>

                 <asp:TableRow>
                     <asp:TableCell>
                          <asp:Label ID="book_edition" runat="server" Text="Book Edition :" ForeColor="WhiteSmoke"></asp:Label>
                     </asp:TableCell> 
                     <asp:TableCell>
                          <asp:TextBox ID="book_edition_value" runat="server"></asp:TextBox>  
                     </asp:TableCell>
                     <asp:TableCell>
                           <asp:Label ID="book_pubaddr" runat="server" Text="Publisher Address :" ForeColor="WhiteSmoke"></asp:Label>
                     </asp:TableCell> 
                     <asp:TableCell>
                            <asp:TextBox ID="book_pubaddr_value" runat="server"></asp:TextBox>
                     </asp:TableCell>
                  </asp:TableRow>
             </asp:Table>
             
             <br /><br />
           
             <asp:Button ID="book_new" runat="server" Height="30px" Width="70px" Text="SUBMIT" OnClick="book_new_Click" BackColor="Transparent" ForeColor="White" BorderStyle="Ridge"> </asp:Button>
             <br /><br />
             <asp:Label ID="checklbl" runat="server"  ForeColor="red"></asp:Label>
             </div>
         </center>
    </form>
</body>
</html>
