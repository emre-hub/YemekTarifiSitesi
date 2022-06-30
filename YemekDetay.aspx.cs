using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi_ASPNET
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlbaglanti conn = new sqlbaglanti();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //AnaSayfa'dan YemekDetay sayfasına taşınan değer, "YemekId".
            //AnaSayfa'da yemek adına tıklandığında sorgu olarak YemekId'yi alıyor,
            //sorgu(query)yu string bir degiskene atıyorum(yemekid) :
            yemekid = Request.QueryString["YemekId"]; 

            SqlCommand komut = new SqlCommand("SELECT YemekAd FROM Tbl_Yemekler WHERE YemekId=@p1", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid); //id degerini sqlcommand sorgusuna ekliyorum
            SqlDataReader sqlDataReader = komut.ExecuteReader();
            while (sqlDataReader.Read()) //okunacak veri unique id'ye sahip tek bir veri
            {
                Label3.Text = sqlDataReader[0].ToString(); //veriye ulastigimda YemekAdi olan 0. index'teki degeri String olarak Label3'e atiyorum.
            }
            conn.baglanti().Close();
            
            
            //Yorumları Listele

            //ilgili yemege ait yorumlara gore sorguyu filtreliyorum
            //YemekId'sine gore tum yorumlari getirdim : 
            SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Yorumlar WHERE YemekId=@p2", conn.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }
    }
}
