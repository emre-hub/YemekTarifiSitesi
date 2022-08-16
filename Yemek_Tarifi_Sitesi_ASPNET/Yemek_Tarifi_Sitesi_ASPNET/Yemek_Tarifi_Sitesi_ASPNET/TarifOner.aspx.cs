using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi_ASPNET
{
    public partial class TarifOner : System.Web.UI.Page
    {
        sqlbaglanti conn = new sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("INSERT INTO Tbl_Tarifler (TarifAd, TarifMalzeme, TarifYapilis, TarifResim, TarifSahip, TarifSahipMail)" +
                "values(@t1,@t2,@t3,@t4,@t5,@t6)", conn.baglanti());
            command.Parameters.AddWithValue("@t1", TxtTarifAd.Text);
            command.Parameters.AddWithValue("@t2", TxtMalzemeler.Text);
            command.Parameters.AddWithValue("@t3", TxtTarif.Text);
            command.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            command.Parameters.AddWithValue("@t5", TxtTarifOneren.Text);
            command.Parameters.AddWithValue("@t6", TxtMailAdresi.Text);
            command.ExecuteNonQuery();
            conn.baglanti().Close();
            Response.Write("Tarifiniz alınmıştır, teşekkür ederiz.");
        }
    }
}