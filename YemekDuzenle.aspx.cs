using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi_ASPNET
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlbaglanti conn = new sqlbaglanti();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Sayfa yüklendiğinde, TextBoxlar otomatik olarak sayfaya ait kategorinin bilgileriyle doldurulacak :
            id = Request.QueryString["YemekId"]; //Sayfaya yönlendirildiğinde, YemekId'ye atanan değer. 

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemekler WHERE YemekId=@p1", conn.baglanti());
                komut.Parameters.AddWithValue("@p1", id);

                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read()) //belirlenen idye ait nesne veritabanında varsa ... : 
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }

                conn.baglanti().Close();
            }
        }
    }
}