using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManagerUpdateBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes["onmouseover"] = "this.style.backgroundColor='#176105';";
            e.Row.Attributes["onmouseout"] = "this.style.backgroundColor='transparent';";
            e.Row.ToolTip = "Click last column for selecting this row.";
        }
    }

    protected void quit_button_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx");
    }
}