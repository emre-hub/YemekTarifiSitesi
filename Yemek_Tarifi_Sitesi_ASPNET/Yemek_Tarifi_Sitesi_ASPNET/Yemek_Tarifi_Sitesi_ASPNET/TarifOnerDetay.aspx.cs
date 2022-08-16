using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi_ASPNET
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {

        sqlbaglanti conn = new sqlbaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TarifId"];

            if(Page.IsPostBack == false)
            {
                id = Request.QueryString["TarifId"];
                SqlCommand command = new SqlCommand("SELECT * FROM Tbl_Tarifler WHERE TarifId=@p1", conn.baglanti());
                command.Parameters.AddWithValue("@p1", id);

                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    txtYemekAd.Text = dr[1].ToString();
                    txtMalzemeler.Text = dr[2].ToString();
                    txtTarif.Text = dr[3].ToString();
                    //fupTarifResim.Text = dr[4].ToString();
                    txtTarifOneren.Text = dr[5].ToString();
                    txtOnerenMail.Text = dr[6].ToString();
                }

                conn.baglanti().Close();

                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Kategoriler", conn.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

            }
        }

        protected void btnTarifiOnayla_Click(object sender, EventArgs e)
        {


            //YEMEGIN DURUMUNU GUNCELLE
            SqlCommand command = new SqlCommand("UPDATE Tbl_Tarifler SET TarifDurum = 1 WHERE TarifId = @p1", conn.baglanti());

            command.Parameters.AddWithValue("@p1", id);

            command.ExecuteNonQuery();
            
            conn.baglanti().Close();


            //Yemegi Ana Sayfaya Ekle
            SqlCommand command2 = new SqlCommand("INSERT INTO Tbl_Yemekler " +
                "(YemekAd, YemekMalzeme, YemekTarif, KategoriId)" +
                " VALUES (@p1, @p2, @p3, @p4)", conn.baglanti());

            command2.Parameters.AddWithValue("@p1", txtYemekAd.Text);
            command2.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
            command2.Parameters.AddWithValue("@p3", txtTarif.Text);
            command2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);

            command2.ExecuteNonQuery();
            conn.baglanti().Close();

        }
    }
}