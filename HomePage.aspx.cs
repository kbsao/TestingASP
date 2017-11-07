using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void book_search_Click(object sender, EventArgs e)
    {
        String book_title = book_title_srch.Text;
        String book_author = book_author_srch.Text;
        String book_subject = book_subject_srch.Text;

        book_res.Visible = true;
        string ConnectionString = @"Data Source=(localdb)\mssqllocaldb;Initial Catalog=BookSystemDB;Integrated Security=True;Pooling=False";

        SqlConnection conn = new SqlConnection(ConnectionString);
      

        if ( (string.IsNullOrEmpty(book_title)) && (string.IsNullOrEmpty(book_author)) && (string.IsNullOrEmpty(book_subject)) )
        {
            Response.Write("<script>alert('Enter some query to search')</script>");
            book_res.Visible = false;
        }

        else
        {
            book_res.Visible = true;

            try
            {
                conn.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM BookMaster WHERE Title=@title OR Author lIKE '%@book_author%", conn);
                cmd.Parameters.AddWithValue("@title", book_title);
                cmd.Parameters.AddWithValue("@title", book_author);

                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {

                }
            }

            catch (Exception ex)
            {

            }

            finally
            {
                conn.Close();
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("User_details.aspx");
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes["onmouseover"] = "this.style.backgroundColor='#2F4F4F';";
            e.Row.Attributes["onmouseout"] = "this.style.backgroundColor='transparent';";
            e.Row.ToolTip = "Click last column for selecting this row.";
        }
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Session.Add("purchase_isbn", GridView1.Rows[e.NewSelectedIndex].Cells[1].Text);
        Server.Transfer("PurchaseInvoice.aspx");
    }
}
