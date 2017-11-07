using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BookReceipt : System.Web.UI.Page
{
    string book_title, book_author, book_price;
    protected void Page_Load(object sender, EventArgs e)
    {
        //showdate.Text = DateTime.Now.ToString();

        //HttpCookie cookie = Request.Cookies["user_details"];
        //if (cookie != null)
        //{
        //    cust_name_value.Text = cookie["username"].ToString();
        //    cust_email_value.Text = Request.Cookies["user_details"]["useremail"];
        //    Response.Cookies["user_details"].Expires = DateTime.Now.AddDays(-1);
        //}
        if (!IsPostBack)
        {
            cust_name_value.Text = Session["username"].ToString();
            cust_email_value.Text = Session["useremail"].ToString();
            book_title = Request.QueryString["title"];
            book_author = Request.QueryString["author"];
            book_price = Request.QueryString["price"];

            lbl_booktitle.Text = "<b>" +lbl_booktitle.Text + "</b>" + book_title;
            lbl_bookauthor.Text = "<b>" + lbl_bookauthor.Text + "</b>" + book_author;
            lbl_bookprice.Text = "<b>" + lbl_bookprice.Text + "</b>" + book_price;

            TimeZoneInfo timzoe = TimeZoneInfo.FindSystemTimeZoneById("India Standard Time");


            DateTime indiaTime = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, timzoe);

            lbldate.Text = indiaTime.ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("PageNavigation.aspx");
    }
}