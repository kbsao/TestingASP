using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void details_submit_Click(object sender, EventArgs e)
    {
        string var_name = user_name_value.Text;
        string var_email = user_email_value.Text;
        int read;

        String connectionString = @"Data Source=(localdb)\mssqllocaldb;Initial Catalog=BookSystemDB;Integrated Security=True;
         Pooling=False";
        SqlConnection conn = new SqlConnection(connectionString);

        try
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand("INSERT INTO CustomerTable (CustomerEmail,CustomerName) VALUES (@db_email,@db_name)", conn);
            cmd.Parameters.AddWithValue("@db_email", var_email);
            cmd.Parameters.AddWithValue("@db_name", var_name);

            read = cmd.ExecuteNonQuery();

            if (read > 0)
            {
            
                Session.Add("username", var_name);
                Session.Add("useremail", var_email);
                Server.Transfer("CustomerBookRequest.aspx");

            }
            else
            {
                checklbl.Text = "Request Unsucessful.Try again!";
                Server.Transfer("UserDetails.aspx");
            }
        }
        catch (Exception ex) { }

        finally
        {
            conn.Close();
        }
        
    }
}