using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class PurchaseInvoice : System.Web.UI.Page
{
    string noc;
    string id;
    int temp, temp2;
    int flag = 0;
    int sales_noofbooks=0;
    int sales_revenue=0;
    string fileLoc = @"C:\Users\DELL_PC\Desktop\bas_nish\file.txt";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        String book_isbn = GridView1.Rows[0].Cells[0].Text;
        String book_title = GridView1.Rows[0].Cells[1].Text;
        String book_author = GridView1.Rows[0].Cells[2].Text;
        String book_noc = GridView1.Rows[0].Cells[5].Text;
        String book_price = GridView1.Rows[0].Cells[6].Text;

        int read;    

        String connectionString = @"Data Source=(localdb)\mssqllocaldb;Initial Catalog=BookSystemDB;Integrated Security=True;Pooling=False";
        SqlConnection conn = new SqlConnection(connectionString);

        try
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand("INSERT INTO PurchaseBooks (ISBN,Title,Author,NumberOfCopies,Price) VALUES (@db_isbn,@db_title,@db_author,@db_noc,@db_price)", conn);
            cmd.Parameters.AddWithValue("@db_isbn", book_isbn);
            cmd.Parameters.AddWithValue("@db_title", book_title);
            cmd.Parameters.AddWithValue("@db_author", book_author);
            cmd.Parameters.AddWithValue("@db_noc", book_noc);
            cmd.Parameters.AddWithValue("@db_price", book_price);

            read = cmd.ExecuteNonQuery();

            if (read > 0)
            {
              
               int.TryParse(book_price, out temp2);
                sales_revenue += temp2;
                Response.Write("<script>alert('Book entry entered for purchasing!')</script>");
                FileStream fs = null;

                if (!File.Exists(fileLoc))
                {
                    using (fs = File.Create(fileLoc))
                    {

                    }
                }

                if (File.Exists(fileLoc))
                {
                    using (StreamWriter sw = new StreamWriter(fileLoc))
                    {
                        sw.Write(sales_noofbooks);
                    }



                }
                else
                {
                    Response.Write("<script>alert('Request Unsucessful.Try again!')</script>");
                }
            }
        }
        catch (Exception ex) { }

        finally
        {
            conn.Close();
        }


        //NoofCopies

      
        try
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM BookMaster", conn);
            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                noc = reader["NumberOfCopies"].ToString();
                id = reader["ISBN"].ToString();
                int.TryParse(noc, out temp);
                temp--;
                lbl_noc.Text = temp.ToString(); 
            }
        }
        catch (Exception ex) { }

        finally
        {
            conn.Close();
        }

        try
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand("UPDATE BookMaster SET NumberOfCopies=@numbcopies WHERE ISBN=@book_id", conn);
            cmd.Parameters.AddWithValue("@numbcopies",lbl_noc.Text);
            cmd.Parameters.AddWithValue("@book_id",id);

            read = cmd.ExecuteNonQuery();

            if(read > 0)
            {
                Session["gv"] = GridView1;
                String b_title = GridView1.Rows[0].Cells[1].Text;
                String b_author = GridView1.Rows[0].Cells[2].Text;
                String b_price = GridView1.Rows[0].Cells[6].Text;

                Server.Transfer("UserPurchaseDetails.aspx?title="+b_title + "&author=" +b_author + "&price=" +b_price);

                HtmlMeta meta = new HtmlMeta();
                meta.HttpEquiv = "Refresh";
                meta.Content = "3;url=BookReceipt.aspx";
                this.Page.Controls.Add(meta);

            }
            else
            {
                Response.Write("<script>alert('Request Unsucessful.Try again!')</script>");
                Server.Transfer("HomePage.aspx");
            }



        }
        catch (Exception ex) { }

        finally
        {
            conn.Close();
        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("HomePage.aspx");
    }

}