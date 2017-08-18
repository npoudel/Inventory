using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addCategory : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V2RL59C;Initial Catalog=InventoryDB;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into Category(CategoryName, Description) values ('" + CategoryName.Text + "','" + Description.Text +  "')", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Redirect("addProducts.aspx");

    }
}