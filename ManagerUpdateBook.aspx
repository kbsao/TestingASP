<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManagerUpdateBook.aspx.cs" Inherits="ManagerUpdateBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Book Info</title>
    <link href="ManagerUpdateBookCSS.css" rel="stylesheet" />
</head>
<body style="background-image: url(images/WelcomeBG3.jpg) !important;
        background-size: cover !important;">
    <form id="form1" runat="server">
        <center>
            <div style="height:120px"></div>
            <div id="div_books_list" runat="server">
                <br />
            <asp:Label ID="books_list" runat="server" ForeColor="#ff9933" Font-Size="X-Large" Font-Underline="true" Text="List of Books"></asp:Label><br /><br /><br /><br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookSystemDBConnectionString %>" SelectCommand="SELECT * FROM [BookMaster]" UpdateCommand="UPDATE BookMaster SET NumberOfCopies=@numberofcopies WHERE ISBN=@isbn"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AlternatingRowStyle-ForeColor="#ffcc00" AutoGenerateColumns="false" DataSourceID="SqlDataSource1" DataKeyNames="ISBN" AllowPaging="true" PageSize="10"  AllowSorting="true" ForeColor="White" OnRowDataBound="GridView1_RowDataBound" BackColor="Transparent">
                <HeaderStyle ForeColor="#ff9933" />
                <Columns>            

                        <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="true" SortExpression="ISBN" />  
                        <asp:BoundField DataField="Title" HeaderText="Title" ReadOnly="true" SortExpression="Title" />  
                        <asp:BoundField DataField="Author" HeaderText="Author" ReadOnly="true" SortExpression="Author" />
                         <asp:BoundField DataField="Subject" HeaderText="Subject" ReadOnly="true" SortExpression="Subject" />  
                        <asp:BoundField DataField="RackNumber" HeaderText="RackNumber" ReadOnly="true" SortExpression="RackNumber" /> 
                        <asp:TemplateField HeaderText="NoOfCopies">
                            <ItemTemplate>
                                <%# Eval("NumberOfCopies") %>
                            </ItemTemplate>
                            <EditItemTemplate>
                               <asp:TextBox ID="tb1" runat="server" Text='<%# Bind("NumberOfCopies") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>

<%--                        <asp:BoundField DataField="NumberOfCopies" HeaderText="NumberOfCopies" />  --%>
                        <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="true" SortExpression="Price" /> 
                        <asp:BoundField DataField="PublishYear" HeaderText=" Publish Year " ReadOnly="true" SortExpression="PublishYear" />  
                        <asp:BoundField DataField="AddressOfPublisher" HeaderText=" Address Of Publisher " ReadOnly="true" SortExpression="AddressOfPublisher"/>  
                        <asp:CommandField ShowEditButton="true" ControlStyle-ForeColor="#ff9933" /> 
                    
                </Columns>

            </asp:GridView>
                <br /> <br />
                 <asp:Button ID="quit_button" runat="server" Text="QUIT" Height="30px" Width="100px" OnClick="quit_button_Click" BackColor="Transparent" BorderStyle="Ridge" ForeColor="White"  />
        </div>
       </center>
    </form>

   

</body>
</html>
