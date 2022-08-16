using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Yemek_Tarifi_Sitesi_ASPNET
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        sqlbaglanti conn = new sqlbaglanti(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Hakkimizda", conn.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            conn.baglanti().Close();
        }
    }
}