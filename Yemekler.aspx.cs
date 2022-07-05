using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi_ASPNET
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlbaglanti conn = new sqlbaglanti();

        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;


            if(Page.IsPostBack == false)
            {
                id = Request.QueryString["YemekId"];
                islem = Request.QueryString["islem"]; //Yemekler.aspx'te ilgili satirda islem=sil demistik; oradak islem, bu.


                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Kategoriler", conn.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                ddlKategori.DataTextField = "KategoriAd";
                ddlKategori.DataValueField = "KategoriId";

                ddlKategori.DataSource = dr2;
                ddlKategori.DataBind();
            }


            //Yemek Listesi
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemekler",conn.baglanti());
            SqlDataReader dr = komut.ExecuteReader();

            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Silme işlemi
            if(islem == "sil")
            {
                SqlCommand deletionCommand = new SqlCommand("DELETE From Tbl_Yemekler WHERE YemekId = @p1", conn.baglanti());
                deletionCommand.Parameters.AddWithValue("@p1", id);
                deletionCommand.ExecuteNonQuery();

            }
            conn.baglanti().Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            //Yemek Ekleme
            SqlCommand komut3 = new SqlCommand("INSERT INTO Tbl_Yemekler (YemekAd, YemekMalzeme, YemekTarif, KategoriId)" +
                "values (@p1, @p2, @p3, @p4)", conn.baglanti());

            komut3.Parameters.AddWithValue("@p1", txtAd.Text);
            komut3.Parameters.AddWithValue("@p2", txtMalzeme.Text);
            komut3.Parameters.AddWithValue("@p3", txtTarif.Text);
            komut3.Parameters.AddWithValue("@p4", ddlKategori.SelectedValue);
            komut3.ExecuteNonQuery();

            conn.baglanti().Close();

            //Kategoriye Ait Yemek Adetini Arttır : 

            SqlCommand komut4 = new SqlCommand("UPDATE Tbl_Kategoriler SET KategoriYemekAdeti=KategoriYemekAdeti+1 WHERE KategoriId = @p1", conn.baglanti());
            komut4.Parameters.AddWithValue("@p1" , ddlKategori.SelectedValue);
            komut4.ExecuteNonQuery();
            conn.baglanti().Close();

        }
    }
}