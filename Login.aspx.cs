using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V2RL59C;Initial Catalog=InventoryDB;Integrated Security=True"))
        {

           SqlCommand com = new SqlCommand("Select * from Roles", conn);
            conn.Open();
            DropDownList1.DataSource = com.ExecuteReader();

            DropDownList1.DataTextField = "RoleName";
            DropDownList1.DataValueField = "Id";
            DropDownList1.DataBind();
            conn.Close();

        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V2RL59C;Initial Catalog=InventoryDB;Integrated Security=True");
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from LogIn where UserName =@username and Password=@password", conn);
        cmd.Parameters.AddWithValue("@username", username.Text);
        cmd.Parameters.AddWithValue("@password", password.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        
        if (dt.Rows.Count > 0)
           {
           

                Session["UserName"] = username.Text;
                Response.Redirect("Home.aspx");

            }

            
            
        else
        {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");


            }
        }




    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}
    

   /* protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-V2RL59C;Initial Catalog=InventoryDB;Integrated Security=True");

        con.Open();

       var str = "Select * from Login";

       var com = new SqlCommand(str);

       var sqlda = new SqlDataAdapter(com.CommandText, con);

       var dt = new DataTable();

        sqlda.Fill(dt);

       var RowCount = dt.Rows.Count;
       

        for (int i = 0; i < RowCount; i++)

        {

           var  UserName = dt.Rows[i]["UserName"].ToString();

           var Password = dt.Rows[i]["Password"].ToString();

            if (UserName == username.Text && Password == password.Text)

            {

                Session["UserName"] = username.Text;

                if (dt.Rows[i]["UserType"].ToString() == "1")
                {
                    

                    Response.Redirect("Home.aspx");
                }

                else if (dt.Rows[i]["UserType"].ToString() == "2")
                {
                    

                    Response.Redirect("Home1.aspx");
                }

               

            }

            else

            {

                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");


            }

        }

    }
    */
    

    
