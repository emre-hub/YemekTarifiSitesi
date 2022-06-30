using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi_ASPNET
{
    public partial class iletisim : System.Web.UI.Page
    {
        sqlbaglanti connection = new sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Mesajlar (MesajGonderen, MesajBaslik, MesajMail, MesajIcerik)" +
                " VALUES (@p1, @p2, @p3, @p4)", connection.baglanti());
            komut.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2", txtMail.Text);
            komut.Parameters.AddWithValue("@p3", txtKonu.Text);
            komut.Parameters.AddWithValue("@p4", txtMesaj.Text);
            komut.ExecuteNonQuery();
            connection.baglanti().Close();
        }
    }
}