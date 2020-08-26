using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BatDongSan.Page
{
    public partial class Search : System.Web.UI.UserControl
    {
        string strCon = @"Data Source=DESKTOP-9R99DB1\SQLEXPRESS;Initial Catalog=BatDongSan;Integrated Security=True";
        SqlConnection conn = null;
        SqlDataAdapter adapter = null;
        DataTable data = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            conn = new SqlConnection(strCon);
            conn.Open();
            string query = "select * from Quan where ID_TP=" + DropDownList1.SelectedValue + "";
            adapter = new SqlDataAdapter(query, conn);
            data = new DataTable();
            adapter.Fill(data);
            conn.Close();
            DropDownList2.DataSource = data;
            DropDownList2.DataTextField = "Name_Q";
            DropDownList2.DataValueField = "ID_Q";
            DropDownList2.DataBind();
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            conn = new SqlConnection(strCon);
            conn.Open();
            string query = "select * from Phuong where ID_Q=" + DropDownList2.SelectedValue + "";
            adapter = new SqlDataAdapter(query, conn);
            data = new DataTable();
            adapter.Fill(data);
            conn.Close();
            DropDownList3.DataSource = data;
            DropDownList3.DataTextField = "Name_P";
            DropDownList3.DataValueField = "ID_P";
            DropDownList3.DataBind();
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            
        }
    }
}