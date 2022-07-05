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
                SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemekler WHERE YemekId = @p1", conn.baglanti());
                komut.Parameters.AddWithValue("@p1", id);

                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read()) //belirlenen idye ait nesne veritabanında varsa ... : 
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }


                //if (Page.IsPostBack == false)
                //{
                    //Kategori Listesi
                    SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Kategoriler", conn.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();

                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "KategoriId";

                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();

                //}

                conn.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("UPDATE Tbl_Yemekler SET YemekAd=@p1, YemekMalzeme=@p2, YemekTarif=@p3, KategoriId=@p4 WHERE  YemekId=@p5 ", conn.baglanti());

            komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut3.Parameters.AddWithValue("@p5", id);

            komut3.ExecuteNonQuery();

            conn.baglanti().Close();

        }
    }
}