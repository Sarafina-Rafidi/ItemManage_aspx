using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ItemManage
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetItemList();
            }
        }

        SqlConnection connection = new SqlConnection("Data Source=.;Initial Catalog=aspx_crud_operation;Integrated Security=True");

        protected void Insert_Click(object sender, EventArgs e)
        {
            int itemId = int.Parse(TextBox1.Text);
            string name = TextBox2.Text,
                category = DropDownList1.SelectedValue,
                availability = RadioButtonList1.SelectedValue;
            float price = float.Parse(TextBox3.Text);
            DateTime dAdd = DateTime.Parse(TextBox4.Text);

            connection.Open();
            SqlCommand cmd = new SqlCommand("Insert into ItemSetup values ('" +itemId+ "','" +name+ "','" +category+ "','" +price+ "','" +dAdd+ "','" +availability+ "')", connection);
            cmd.ExecuteNonQuery();
            connection.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully saved');", true);
            GetItemList();
        }

        void GetItemList()
        {
            SqlCommand cmd = new SqlCommand("Select itemId as 'Id', itemName 'Item Name', category as 'Category', price as 'Price', dateAdded as 'Date Added', availability as 'Availability' from ItemSetup", connection);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            int itemId = int.Parse(TextBox1.Text);
            string name = TextBox2.Text,
                category = DropDownList1.SelectedValue,
                availability = RadioButtonList1.SelectedValue;
            float price = float.Parse(TextBox3.Text);
            DateTime dAdd = DateTime.Parse(TextBox4.Text);

            connection.Open();
            SqlCommand cmd = new SqlCommand("Update ItemSetup set itemId = '" + itemId + "', itemName = '" + name + "', category = '" + category + "', price = '" + price + "', dateAdded = '" + dAdd + "', availability = '" + availability + "' ", connection);
            cmd.ExecuteNonQuery();
            connection.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully updated');", true);
            GetItemList();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            int itemId = int.Parse(TextBox1.Text);
            
            connection.Open();
            SqlCommand cmd = new SqlCommand("Delete ItemSetup where itemId = '" + itemId + "' ", connection);
            cmd.ExecuteNonQuery();
            connection.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully deleted');", true);
            GetItemList();
        }

        protected void Get_Click(object sender, EventArgs e)
        {
            int itemId = int.Parse(TextBox1.Text);
            SqlCommand cmd = new SqlCommand("Select itemId as 'Id', itemName 'Item Name', category as 'Category', price as 'Price', dateAdded as 'Date Added', availability as 'Availability' from ItemSetup where itemId = '" +itemId+ "' ", connection);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Load_Click(object sender, EventArgs e)
        {
            GetItemList();
        }
    }
}