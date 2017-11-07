using System;
using System.Collections.Generic;
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
        HttpCookie user_details = new HttpCookie("user_details");
        user_details["username"] = user_name_value.Text;
        user_details["useremail"] = user_email_value.Text;
        user_details.Expires = DateTime.Now.AddMinutes(-1);
        Response.Cookies.Add(user_details);

        Server.Transfer("CustomerBookRequest.aspx");

    }
}