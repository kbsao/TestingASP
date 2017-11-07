<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="BookSearch_css.css" rel="stylesheet" />
    <link href="HomePageCSS.css" rel="stylesheet" />
</head>
<body id="Background_Cover" style=" background-image: url(images/WelcomeBG3.jpg) !important;background-size: cover !important;" >
    <form id="form1" runat="server">
        <div style="height:80px"></div>
        <center>
        <div id="page_view">
            <br />
            
            <asp:Label ID="Label1" runat="server" Text="Enter Book Details" ForeColor="#ff9933" Font-Size="X-Large" Font-Underline="true" ></asp:Label>
            <br /><br /><br />
            <asp:TextBox ID="book_title_srch" runat="server" placeholder ="Book Title" ForeColor="#ffffff" BorderStyle="Ridge" BorderWidth="1" ></asp:TextBox> 
            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="book_author_srch" runat="server" placeholder ="Author Name" ForeColor="#ffffff" BorderStyle="Ridge" BorderWidth="1"></asp:TextBox><br />
            <br />
            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="book_subject_srch" runat="server" placeholder ="Subject" ForeColor="#ffffff" BorderStyle="Ridge" BorderWidth="1" Height="20px" Width="200px"></asp:TextBox> 
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <br /><br /><br />
            <asp:Button ID="book_search" ForeColor="#ffffff" BorderStyle="Ridge" runat="server" Text="Search" OnClick="book_search_Click" Style="width:200px; height:40px; background-color: transparent ; font-weight: 700; border: ridge;" />
                 <br /><br />
             <asp:Button ID="Button1" runat="server" Text="Couldn't find the book?" ForeColor="#ffffff" BorderStyle="Ridge"  OnClick="Button1_Click" Style="width:200px; height:40px; background-color: transparent ; font-weight: 700; border: ridge;"/>
            
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookSystemDBConnectionString %>" SelectCommand="SELECT * FROM
                BookMaster WHERE Title LIKE '%' + @book_title + '%' OR Author LIKE '%' + @book_author + '%' OR Subject LIKE '%' + @book_subject + '%' ">
                <SelectParameters>
                    <asp:ControlParameter Name="book_title" ControlID="book_title_srch" PropertyName="Text" ConvertEmptyStringToNull="true" DefaultValue="0" />
                </SelectParameters>
                <SelectParameters>
                    <asp:ControlParameter Name="book_author" ControlID="book_author_srch" PropertyName="Text" DefaultValue="0" />
                </SelectParameters>
                 <SelectParameters> 
                     <asp:ControlParameter Name="book_subject" ControlID="book_subject_srch" PropertyName="Text" DefaultValue="0" />
                 </SelectParameters>
            </asp:SqlDataSource>
        
            <br /><br />
            </div>

            <div style="height:20px"></div>

            <div  id="book_res" visible="false" runat="server">
                <br /><br /><br />
           <asp:GridView ID="GridView1" AlternatingRowStyle-ForeColor="#33ccff"  runat="server" DataSourceID="SqlDataSource1" AutoGenerateSelectButton="True" ForeColor="white" HeaderStyle-ForeColor="blue" HeaderStyle-BackColor="Black"
           DataValueField="ISBN" OnRowDataBound="GridView1_RowDataBound" BackColor="Transparent"  OnSelectedIndexChanging="GridView1_SelectedIndexChanging" AutoGenerateColumns="False" DataKeyNames="ISBN">
               <HeaderStyle Font-Bold="true" ForeColor="#ff9933" BackColor="Transparent" />
               <Columns>
                   
                   <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
                   <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                   <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                   <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                   <asp:BoundField DataField="RackNumber" HeaderText="RackNumber" SortExpression="RackNumber" />
                   <asp:BoundField DataField="NumberOfCopies" HeaderText="NumberOfCopies" SortExpression="NumberOfCopies" />
                   <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                   <asp:BoundField DataField="PublishYear" HeaderText="PublishYear" SortExpression="PublishYear" />
                   <asp:BoundField DataField="AddressOfPublisher" HeaderText="AddressOfPublisher" SortExpression="AddressOfPublisher" />
               </Columns>
                </asp:GridView>
            <br />
            <br />
           </div>
            </center>
    </form>
</body>
    
  
</html>
