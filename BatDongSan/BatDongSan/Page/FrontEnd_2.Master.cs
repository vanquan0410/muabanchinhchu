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
    public partial class FrontEnd_2 : System.Web.UI.MasterPage
    {
        string strCon = @"Data Source=DESKTOP-9R99DB1\SQLEXPRESS;Initial Catalog=BatDongSan;Integrated Security=True";
        SqlConnection conn = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(strCon);
            conn.Open();
            string query1 = "select * from TinDang join BatDongSan on BatDongSan.ID_BDS=TinDang.ID_BDS join Phuong on Phuong.ID_P=BatDongSan.ID_P join Quan on Quan.ID_Q=Phuong.ID_Q join ThanhPho on ThanhPho.ID_TP=Quan.ID_TP where ThanhPho.ID_TP=1";
            string query2 = "select * from TinDang join BatDongSan on BatDongSan.ID_BDS=TinDang.ID_BDS join Phuong on Phuong.ID_P=BatDongSan.ID_P join Quan on Quan.ID_Q=Phuong.ID_Q join ThanhPho on ThanhPho.ID_TP=Quan.ID_TP where ThanhPho.ID_TP=2";
            SqlDataAdapter adapter1 = new SqlDataAdapter(query1, conn);
            SqlDataAdapter adapter2 = new SqlDataAdapter(query2, conn);
            DataTable data1 = new DataTable();
            DataTable data2 = new DataTable();
            adapter1.Fill(data1);
            adapter2.Fill(data2);
            conn.Close();
            DataList1.DataSource = data1;
            DataList1.DataBind();
            DataList2.DataSource = data2;
            DataList2.DataBind();
        }
    }
}