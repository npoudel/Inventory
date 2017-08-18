using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    StringBuilder table = new StringBuilder();
    
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V2RL59C;Initial Catalog=InventoryDB;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)

    {
        if (!IsPostBack)
        {
            gvbind();
        }

    }
    protected void gvbind()
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select * from Product", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        conn.Close();

        if (ds.Tables[0].Rows.Count > 0)
        {



            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            GridView1.DataSource = ds;
            GridView1.DataBind();
            int columncount = GridView1.Rows[0].Cells.Count;
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
            GridView1.Rows[0].Cells[0].Text = "No Records Found";
        }
    }

   
    



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("updateProduct.aspx?ID=" + GridView1.DataKeys[(GridView1.SelectedIndex)].Values["P_ID"].ToString());
    }


    protected void searchbtn_Click(object sender, EventArgs e)
    {
        String strConn = "Data Source=DESKTOP-V2RL59C;Initial Catalog=InventoryDB;Integrated Security=True ";
        SqlConnection conn = new SqlConnection(strConn);
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select * FROM Product where"+ " ProdName like @SearchByTagTB  + '%'", conn);

        try
        {

            SqlParameter search = new SqlParameter();
            search.ParameterName = "@SearchByTagTB";
            search.Value = SearchBox.Text.Trim();

            cmd.Parameters.Add(search);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            //Connection Object Closed
            conn.Close();
        }
    }
}