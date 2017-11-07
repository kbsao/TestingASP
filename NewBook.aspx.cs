using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class NewBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void book_new_Click(object sender, EventArgs e)
    {
        int read;


        if (!(string.IsNullOrWhiteSpace(book_isbn_value.Text)) && !(string.IsNullOrWhiteSpace(book_title_value.Text)) && !(string.IsNullOrWhiteSpace(book_author_value.Text)))

        {

            String connectionString = @"Data Source=(localdb)\mssqllocaldb;Initial Catalog=BookSystemDB;Integrated Security=True;Pooling=False";
            SqlConnection conn = new SqlConnection(connectionString);

            try
            {
                conn.Open();

                SqlCommand cmd = new SqlCommand("INSERT INTO BookMaster (ISBN,Title,Author,Subject,RackNumber,NumberOfCopies,Price,PublishYear,AddressOfPublisher) VALUES (@db_isbn,@db_title,@db_author,@db_subject,@db_racknumber,@db_noofcopies,@db_price,@db_publishyear,@db_addressofpublisher)", conn);
                cmd.Parameters.AddWithValue("@db_isbn", book_isbn_value.Text);
                cmd.Parameters.AddWithValue("@db_title", book_title_value.Text);
                cmd.Parameters.AddWithValue("@db_author", book_author_value.Text);
                cmd.Parameters.AddWithValue("@db_subject", book_subject_value.Text);
                cmd.Parameters.AddWithValue("@db_racknumber", book_rackno_value.Text);
                cmd.Parameters.AddWithValue("@db_noofcopies", book_copies_value.Text);
                cmd.Parameters.AddWithValue("@db_price", book_price_value.Text);
                cmd.Parameters.AddWithValue("@db_publishyear", book_edition_value.Text);
                cmd.Parameters.AddWithValue("@db_addressofpublisher", book_pubaddr_value.Text);

                read = cmd.ExecuteNonQuery();

                if (read > 0)
                {
                    Response.Write("<script>alert('New Book Record Saved!')</script>");
                    Server.Transfer("SalesStatistics.aspx"); ;
                    HtmlMeta meta = new HtmlMeta();
                    meta.HttpEquiv = "Refresh";
                    meta.Content = "2;url=ManagerLogin.aspx";
                    this.Page.Controls.Add(meta);
                }
                else
                {
                    checklbl.Text = "Request Unsucessful.Try again!";
                }
            }
            catch (Exception ex) { }

            finally
            {
                conn.Close();
            }
        }

        else
        {
            Response.Write("<script>alert('Book ISBN, Title and Author have to be filled!')</script>");

        }
    }
}