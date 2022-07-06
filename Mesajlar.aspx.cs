using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi_ASPNET
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        sqlbaglanti conn = new sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            SqlCommand command = new SqlCommand("SELECT * FROM Tbl_Mesajlar", conn.baglanti());

            SqlDataReader dr = command.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}