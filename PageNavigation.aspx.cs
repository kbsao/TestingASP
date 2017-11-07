using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PageNavigation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DropDownList1.Items.Add("Simple");
            DropDownList1.Items.Add("Fancy");

            if(Session["Theme"] != null)
            {
                DropDownList1.Items.FindByText(Session["Theme"].ToString()).Selected = true;
            }
        }
    }

    protected void Page_PreInit(object sender, EventArgs e)
    {
        if(Session["Theme"]!=null)
        {
            Page.Theme = Session["Theme"].ToString();

        }
    }
        protected void book_srch_Click(object sender, EventArgs e)
    {
        Server.Transfer("HomePage.aspx");
    }


    protected void book_sales_Click(object sender, EventArgs e)
    {
        Server.Transfer("ManagerLogin.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["Theme"] = DropDownList1.SelectedValue;
        Server.Transfer("PageNavigation.aspx");
    }
}