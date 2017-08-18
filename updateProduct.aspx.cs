using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class updateProduct : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V2RL59C;Initial Catalog=InventoryDB;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
         var value = Convert.ToInt32(Request.QueryString["id"]);
        
        string commandString = "SELECT * FROM Product where P_ID= " + value;
                                           
        SqlCommand cm = new SqlCommand(commandString, conn);
        conn.Open();
        SqlDataReader dr = cm.ExecuteReader();
        if (dr.HasRows)
        {
            // Setup DataReader
            dr.Read();

            // Set DR values to Text fields
            TextBox1.Text = dr["Quantity"].ToString();
            Label1.Text = dr["ProdName"].ToString();
            TextBox2.Text = dr["ProdDescription"].ToString();



        }


        dr.Close();
        conn.Close();


    }







    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Close();
        var value = Convert.ToInt32(Request.QueryString["id"]);
        
        conn.Open();
            string commandString = "update Product set Quantity=@total where P_ID= " + value;
        
        SqlCommand cm = new SqlCommand(commandString, conn);
        cm.Parameters.AddWithValue("@total",TextBox5.Text);

        cm.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("Home.aspx");
    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        int total = 0;
        total = int.Parse(TextBox1.Text) + int.Parse(TextBox4.Text);
        TextBox5.Text = total.ToString();
    }
}
