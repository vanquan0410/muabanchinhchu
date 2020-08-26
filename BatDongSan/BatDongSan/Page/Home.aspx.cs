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
    public partial class Home : System.Web.UI.Page
    {
        string strCon = @"Data Source=DESKTOP-9R99DB1\SQLEXPRESS;Initial Catalog=BatDongSan;Integrated Security=True";
        SqlConnection conn = null;
        SqlDataAdapter adapter = null;
        DataTable data = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(strCon);
            conn.Open();
            string query = "select * from TinDang join BatDongSan on BatDongSan.ID_BDS=TinDang.ID_BDS join Phuong on Phuong.ID_P=BatDongSan.ID_P join Quan on Quan.ID_Q=Phuong.ID_Q join ThanhPho on ThanhPho.ID_TP=Quan.ID_TP";
            adapter = new SqlDataAdapter(query, conn);
            data = new DataTable();
            adapter.Fill(data);
            conn.Close();
            DataList1.DataSource = data;
            DataList1.DataBind();
        }
    }
}