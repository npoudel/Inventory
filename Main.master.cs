using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            Label1.Text = Session["Username"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }

    }
   


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
        
            if (LinkButton1.Text == "Log Out")
            {
                Session.Abandon();
                Response.AppendHeader("Cache-Control", "no-store");
                Response.Redirect("Login.aspx");
            }
        

    }
}
