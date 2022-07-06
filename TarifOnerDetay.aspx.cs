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
        }
    }
}