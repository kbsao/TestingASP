<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PageNavigation.aspx.cs" Inherits="PageNavigation" Theme="Simple" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HomeScreen</title>
    <link href="PageNavigation_css.css" rel="stylesheet" />

</head>

<body style="background-image: url(images/WelcomeBG3.jpg) !important;
        background-size: cover !important;">
    <%--<asp:Image ID="Background_Cover" runat="server"></asp:Image>--%>

    <form id="form1" runat="server">
        <div id="page_view">
            <br />
            <asp:Label ID="Label1" runat="server" Text=" “If you only read the books that 
             everyone else is reading, you can only think what everyone else is thinking.” "></asp:Label>
        </div>
        <div style="height: 250px"></div>
        <center>
        <div id="div_user" runat="server" style="height:210px">
            <br /><br /><br />
           
        <asp:Button ID="book_srch" Text="SEARCH BOOKS" Style=" width:200px; height:40px; background-color: transparent; font-weight: 700; border: ridge;" runat="server"
            onClick="book_srch_Click" ></asp:Button> 
         <br /><br />

        <asp:Button ID="book_sales" Style="width:200px; height:40px; background-color: transparent ; font-weight: 700; border: ridge;" runat="SERVER" Text="MANAGER LOGIN"
           onClick="book_sales_Click" ></asp:Button>
        <br /><br />
       
        <br /><br /><br />
              
            </div>
            <br /><br /><br />
            <asp:Label ID="Label2" runat="server" Text="Change Theme:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
              </center>
    </form>
</body>
</html>
