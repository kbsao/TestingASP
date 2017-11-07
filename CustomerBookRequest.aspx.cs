using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerBookRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //string u_name = Session["username"].ToString();
            //cust_name.Text += " " + u_name;
            //string u_email = Session["useremail"].ToString();
            //cust_email_value.Text = u_email;
            //cust_email_value.Enabled = false;
            //showdate.Text = DateTime.Now.ToString();

            HttpCookie cookie = Request.Cookies["user_details"];
            if (cookie != null)
            {
                cust_name.Text += cookie["username"].ToString();
                cust_email_value.Text = Request.Cookies["user_details"]["useremail"];
                Response.Cookies["user_details"].Expires = DateTime.Now.AddDays(-1);

            }
        }
    }
    protected void cust_req_btn_Click(object sender, EventArgs e)
    {
        string tb_title = book_name_value.Text;
        string tb_author = book_author_value.Text;
        string tb_publishyear = publish_year_value.Text;
        string tb_subject = book_subject_value.Text;
        string tb_email = cust_email_value.Text;

        int read;

        String connectionString = @"Data Source=(localdb)\mssqllocaldb;Initial Catalog=BookSystemDB;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection(connectionString);

        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO BookRequest (Title,Author,Subject,UserEmail,PublishYear) VALUES (@db_title,@db_author,@db_subject,@db_email,@db_publishyear)", conn);
            cmd.Parameters.AddWithValue("@db_title", tb_title);
            cmd.Parameters.AddWithValue("@db_author", tb_author);
            cmd.Parameters.AddWithValue("@db_subject", tb_subject);
            cmd.Parameters.AddWithValue("@db_publishyear", tb_publishyear);
            cmd.Parameters.AddWithValue("@db_email", tb_email);

            read = cmd.ExecuteNonQuery();

            if (read > 0)
            {
                Response.Write("<script>alert('Request saved')</script>");
                //checklbl.Text = "Request Saved!";
                Server.Transfer("PageNavigation.aspx");
            }
            else
            {
                checklbl.Text = "Request Unsucessful.Try again!";
                Server.Transfer("CustomerBookRequest.aspx");
            }
        }
        catch (Exception ex) { }

        finally
        {
            conn.Close();
        }

    }
}