using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi_ASPNET
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        sqlbaglanti conn = new sqlbaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MesajId"];

            SqlCommand command = new SqlCommand("SELECT * FROM Tbl_Mesajlar WHERE MesajId = @p1",conn.baglanti());
            command.Parameters.AddWithValue("@p1", id);

            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                txtGonderen.Text = dr[1].ToString();
                txtBaslik.Text = dr[2].ToString();
                txtMail.Text = dr[3].ToString();
                txtMesaj.Text = dr[4].ToString();
            }
            conn.baglanti().Close();
        }
    }
}