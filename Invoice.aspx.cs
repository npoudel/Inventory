using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Invoice : System.Web.UI.Page

{
    SqlConnection conn = new SqlConnection("Data Source=DESKTOP-V2RL59C;Initial Catalog=InventoryDB;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)

        {
            FillDropdown();
            FillDropdown1();
        }

    }
    void FillDropdown()
    {
        SqlCommand com = new SqlCommand("Select * from Product", conn);
        conn.Open();
        
        SqlDataAdapter dap = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        dap.Fill(ds);
        DropDownList2.DataSource = ds;

        DropDownList2.DataTextField = "ProdName";
        DropDownList2.DataValueField = "P_ID";
        DropDownList2.DataBind();
        this.DropDownList2.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Please Select", "0"));
        conn.Close();
    }
    void FillDropdown1()
    {
        SqlCommand com = new SqlCommand("Select * from DepartmentInfo", conn);
        conn.Open();

        SqlDataAdapter dap = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        dap.Fill(ds);
        DropDownList1.DataSource = ds;

        DropDownList1.DataTextField = "DepartmentName";
        DropDownList1.DataValueField = "Dept_ID";
        DropDownList1.DataBind();
        this.DropDownList1.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Please Select", "0"));
        conn.Close();

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Calendar1.Visible = false;
        System.DateTime myDate = new System.DateTime();
        myDate = Calendar1.SelectedDate;
        TextBox2.Text = myDate.ToString("MM/dd/yyyy");
        Calendar1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Calendar1.Visible == false)

        {
            Calendar1.Visible = true;

        }

        else

        {

            Calendar1.Visible = false;

        }
    }

    protected void generation_Click(object sender, EventArgs e)
    {
        string SelectedDateTime = TextBox2.Text;

        DateTime dt = DateTime.Parse(SelectedDateTime);

        SqlCommand cmd = new SqlCommand("insert into Invoice(InvoiceDate) values ('" + dt + "')", conn);

        conn.Open();

        cmd.ExecuteNonQuery();
        conn.Close();
        SqlCommand cm = new SqlCommand("SELECT TOP 1 * FROM Invoice ORDER BY InvoiceID DESC", conn);
        conn.Open();
        SqlDataReader read = cm.ExecuteReader();
        while (read.Read())
        {
            TextBox1.Text = read["InvoiceNo"].ToString();

        }

        read.Close();






    }

    protected void insert_Click(object sender, EventArgs e)
    {
       

       

    }
   


    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {



        // Sets Selected Values
        string ID = DropDownList2.SelectedValue;

        string connectionString = "Data Source=DESKTOP-V2RL59C;Initial Catalog=InventoryDB;Integrated Security=True";
        //get records from Employee table by User ID
        string commandString = "SELECT * FROM Product " +
                                            String.Format("WHERE (P_ID = '{0}')", ID);
        SqlConnection cnn = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(commandString, cnn);
        cnn.Open();

        // Execute SQL and get returned Reader
        SqlDataReader dr = cmd.ExecuteReader();

        // Test for values in DataReader
        if (dr.HasRows)
        {
            // Setup DataReader
            dr.Read();

            // Set DR values to Text fields
            TextBox6.Text = dr["Quantity"].ToString();
            TextBox5.Text = dr["P_ID"].ToString();
            TextBox8.Text = dr["PPI"].ToString();
            TextBox10.Text = dr["ProdDescription"].ToString();
           
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('NO data')</script>");

        }

        // Close connections
        dr.Close();
        cnn.Close();
    }
















    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Sets Selected Values
        string ID = DropDownList1.SelectedValue;

        string connectionString = "Data Source=DESKTOP-V2RL59C;Initial Catalog=InventoryDB;Integrated Security=True";
        //get records from Employee table by User ID
        string commandString = "SELECT * FROM DepartmentInfo " +
                                            String.Format("WHERE (Dept_ID = '{0}')", ID);
        SqlConnection cnn = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(commandString, cnn);
        cnn.Open();

        // Execute SQL and get returned Reader
        SqlDataReader dr = cmd.ExecuteReader();

        // Test for values in DataReader
        if (dr.HasRows)
        {
            // Setup DataReader
            dr.Read();

            // Set DR values to Text fields
            TextBox3.Text = dr["DepartmentCode"].ToString();
           

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('NO data')</script>");

        }

        // Close connections
        dr.Close();
        cnn.Close();
    }

    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {
        
    }


    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {
        float total = 0;
        if (int.Parse(TextBox7.Text) > int.Parse(TextBox6.Text))
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Quantity Not available')</script>");
            TextBox9.Text = string.Empty;
            TextBox7.Text = string.Empty;
        }
        else
        {



            total = int.Parse(TextBox7.Text) * float.Parse(TextBox8.Text);
            TextBox9.Text = total.ToString();
            
        }
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        Calendar2.Visible = false;
        System.DateTime myDate = new System.DateTime();
        myDate = Calendar2.SelectedDate;
        TextBox4.Text = myDate.ToString("MM/dd/yyyy");
        Calendar2.Visible = false;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
       
            if (Calendar2.Visible == false)

            {
                Calendar2.Visible = true;

            }

            else

            {

                Calendar2.Visible = false;

            }
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int remaining = 0;
        remaining= int.Parse(TextBox6.Text) - int.Parse(TextBox7.Text);
        string ID = DropDownList2.SelectedValue;

        string connectionString = "Data Source=DESKTOP-V2RL59C;Initial Catalog=InventoryDB;Integrated Security=True";
        //get records from Employee table by User ID
        string commandString = "update  Product  set Quantity='"+remaining+"' " +
                                            String.Format("WHERE (P_ID = '{0}')", ID);
        SqlConnection cnn = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(commandString, cnn);
        cnn.Open();
        cmd.ExecuteNonQuery();
        
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + remaining + "')</script>");

        TextBox5.Text = string.Empty;
        TextBox6.Text = string.Empty;
        TextBox8.Text = string.Empty;
        TextBox7.Text = string.Empty;
        TextBox9.Text = string.Empty;
        string deptname = DropDownList1.SelectedItem.ToString();
        string name = DropDownList2.SelectedItem.ToString();
        string SelectedDateTime = TextBox2.Text;
        string SelectedDate = TextBox4.Text;

        DateTime dt = DateTime.Parse(SelectedDateTime);

        DateTime dt2 = DateTime.Parse(SelectedDate);
        


        string query = "insert into invoicebill(InvoiceNo,Date,RequestedDate, DepartmentName, DepartmentCode,ItemName,ItemCode,Description,Quantity) values ('"+TextBox1.Text+"','"+dt+"','"+dt2+"','"+ deptname + "','"+TextBox3.Text+"','"+name+"','"+TextBox5.Text+"','"+TextBox10.Text+"','"+TextBox7.Text+"')";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand com = new SqlCommand(query, conn);
        conn.Open();
        com.ExecuteNonQuery();
        conn.Close();
    }
}