using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SalesStatisticsPage : System.Web.UI.Page
{
    string bk_title;
    string bk_author;
    string bk_subject;
    string bk_publishyear;
    string bk_email;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String manager_name = Session["Name"].ToString();
            string ID = Request.QueryString["id"];

            welcome.Text += manager_name + " (" + ID +")"; 

        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("NewBook.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("SalesData.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        //new books
        Server.Transfer("ManagerUpdateBook.aspx");



    }




    protected void Button4_Click(object sender, EventArgs e)
    {
        //Server.Transfer("CheckBookCopies.aspx");
        int read;

        String connectionString = @"Data Source=(localdb)\mssqllocaldb;Initial Catalog=BookSystemDB;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection(connectionString);

        SqlCommand cmd = new SqlCommand("SELECT * FROM BookMaster WHERE NumberOfCopies < 5", conn);
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();

        try
        {
            conn.Open();
            adapter.Fill(ds, "Detail");

        }
        catch (Exception ex) { }

        finally
        {
            conn.Close();
        }

        foreach (DataRow row in ds.Tables["Detail"].Rows)
        {

            bk_title = row["Title"].ToString();
            bk_author = row["Author"].ToString();
            bk_subject = row["Subject"].ToString();
            bk_publishyear = row["PublishYear"].ToString();
            bk_email = "NA";

            //checklbl.Text += bk_title + " " + bk_author;

            try
            {
                conn.Open();

                //SqlCommand cmd1 = new SqlCommand("INSERT INTO BookRequest (Title,Author,Subject,UserEmail,PublishYear) VALUES (@db_title,@db_author,@db_subject,@db_email,@db_publishyear)", conn);
                SqlCommand cmd1 = new SqlCommand("INSERT INTO BookRequest (Title,Author,Subject,UserEmail,PublishYear) VALUES ('" + bk_title + "','" + bk_author + "', '" + bk_subject + "', '" + bk_email + "','" + bk_publishyear + "')", conn);

                //cmd.Parameters.AddWithValue("@db_title", bk_title);
                //cmd.Parameters.AddWithValue("@db_author", bk_author);
                //cmd.Parameters.AddWithValue("@db_subject", bk_subject);
                //cmd.Parameters.AddWithValue("@db_email", bk_email);
                //cmd.Parameters.AddWithValue("@db_publishyear", bk_publishyear);

                read = cmd1.ExecuteNonQuery();

                if (read > 0)
                {
                    //checklbl.Text = "Threshold checked!";
                    Response.Write("<script>alert('Request Saved!')</script>");

                }
                else
                {
                    Response.Write("<script>alert('Request cannot be saved!Try again.')</script>");


                }
            }
            catch (SqlException ex)
            {
                // checklbl.Text = ex.ToString();

            }

            finally
            {
                conn.Close();
            }
        }
    }
}