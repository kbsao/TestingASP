using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManagerLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void manager_login_btn_Click(object sender, EventArgs e)
    {
        string tb_mgid = manager_id_value.Text;
        string tb_mgpwd = manager_pswd_value.Text;

        int mg_id = 0;

        String connectionString = @"Data Source=(localdb)\mssqllocaldb;Initial Catalog=BookSystemDB;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection(connectionString);

        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM ManagerDetails", conn);
            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {

                if (reader["Id"].ToString() == tb_mgid && reader["Password"].ToString() == tb_mgpwd)
                {
                    int.TryParse(reader["Id"].ToString(), out mg_id);
                    Session.Add("Name", reader["Name"].ToString());
                    Server.Transfer("SalesStatisticsPage.aspx?id=" + mg_id);
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials')</script>");
                    manager_id_value.Text=string.Empty;
                    manager_pswd_value.Text=string.Empty;
                }
            }

        }
        catch (Exception ex) { }

        finally
        {
            conn.Close();
        }
    }

    
}