using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class SalesData : System.Web.UI.Page
{
    string fileLoc = @"C:\Users\DELL_PC\Desktop\bas_nish\file.txt";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (File.Exists(fileLoc))
        {
            using (TextReader tr = new StreamReader(fileLoc))
            {
                //Label2.Text = tr.ReadLine();
            }
        }
    }

   

}