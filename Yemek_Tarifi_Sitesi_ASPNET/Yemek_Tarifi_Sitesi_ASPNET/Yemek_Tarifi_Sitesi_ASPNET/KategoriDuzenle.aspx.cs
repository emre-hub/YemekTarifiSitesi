using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi_ASPNET
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlbaglanti conn = new sqlbaglanti();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Sayfa yüklendiğinde, TextBoxlar otomatik olarak sayfaya ait kategorinin bilgileriyle doldurulacak :
            id = Request.QueryString["KategoriId"]; //Sayfaya yönlendirildiğinde, KategoriId'ye atanan değer. 

            if(Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Kategoriler WHERE KategoriId=@p1", conn.baglanti());
                komut.Parameters.AddWithValue("@p1", id);

                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read()) //belirlenen idye ait nesne veritabanında varsa ... : 
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                }

                conn.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Kategoriler set KategoriAd=@p1, KategoriYemekAdeti=@p2 WHERE KategoriId = @p3", conn.baglanti());

            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            conn.baglanti().Close();
        }
    }
}