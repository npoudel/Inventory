using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addProducts : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V2RL59C;Initial Catalog=InventoryDB;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V2RL59C;Initial Catalog=InventoryDB;Integrated Security=True"))
        {

            SqlCommand com = new SqlCommand("Select * from Supplier1", conn);
            conn.Open();
            DropDownList2.DataSource = com.ExecuteReader();

            DropDownList2.DataTextField = "CompanyName";
            DropDownList2.DataValueField = "S_ID";




            DropDownList2.DataBind();
            conn.Close();
        }
        using (SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V2RL59C;Initial Catalog=InventoryDB;Integrated Security=True"))
        {

            SqlCommand com = new SqlCommand("Select * from Category", conn);
            conn.Open();
            DropDownList1.DataSource = com.ExecuteReader();

            DropDownList1.DataTextField = "CategoryName";
            DropDownList1.DataValueField = "C_ID";




            DropDownList1.DataBind();
            conn.Close();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("App Data/Upload/" + str));
            string Image = "App Data/Upload/" + str.ToString();
           
            string S_Id = DropDownList2.SelectedValue;
        string C_Id = DropDownList1.SelectedValue;
        
        SqlCommand cmd = new SqlCommand("insert into Product(S_ID, ProdName, C_ID, ProdDescription, Quantity, PPI, Image) values ('" + S_Id + "','" + ProdName.Text + "','" +
        C_Id + "','" + ProdInfo.Text + "','" + Quantity.Text + "','"+Price.Text +"','"+Image +"')", conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("addProducts.aspx");

    }

   

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}