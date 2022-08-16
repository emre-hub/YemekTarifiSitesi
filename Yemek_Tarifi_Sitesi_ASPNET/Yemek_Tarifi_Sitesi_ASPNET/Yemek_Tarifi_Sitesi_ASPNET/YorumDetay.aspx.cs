using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi_ASPNET
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlbaglanti conn = new sqlbaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumId"];

            SqlCommand command = new SqlCommand("SELECT YorumAdSoyad, YorumMail, YorumIcerik, YemekAd " +
            "FROM Tbl_Yorumlar INNER JOIN Tbl_Yemekler ON Tbl_Yorumlar.YemekId=Tbl_Yemekler.YemekId" +
            " WHERE YorumId = @p1", conn.baglanti());

            command.Parameters.AddWithValue("@p1", id);

            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                txtAd.Text = dr[0].ToString();
                txtMail.Text = dr[1].ToString();
                txtYorum.Text = dr[2].ToString();
                txtYemek.Text = dr[3].ToString();
            }
            conn.baglanti().Close();

        }

        protected void btnOnay_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("UPDATE Tbl_Yorumlar SET YorumIcerik=@p1, YorumOnay=@p2 WHERE YorumId=@p3", conn.baglanti());
            command.Parameters.AddWithValue("@p1", txtYorum.Text);
            command.Parameters.AddWithValue("@p2", "True"); //"1"
            command.Parameters.AddWithValue("@p3", id);

            command.ExecuteNonQuery();
            conn.baglanti().Close();
        }
    }
}