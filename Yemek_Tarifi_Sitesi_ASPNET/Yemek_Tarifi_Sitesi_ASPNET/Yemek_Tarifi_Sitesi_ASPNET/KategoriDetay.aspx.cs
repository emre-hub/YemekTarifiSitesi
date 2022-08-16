using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi_ASPNET
{
    public partial class KategoriDetay : System.Web.UI.Page
    {

        sqlbaglanti connection = new sqlbaglanti();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //KategoriId'ye gore sorgu yapacagiz,
            kategoriid = Request.QueryString["KategoriId"]; // KategoriId'nin bizi sayfaya yonlendiren linkte oldugunu biliyoruz. MasterPage'de tasarladik.
            //kategoriid ile eşleşen degerleri al : 
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemekler WHERE KategoriId=@p1", connection.baglanti()); 
            komut.Parameters.AddWithValue("@p1", kategoriid);

            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}