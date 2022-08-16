using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi_ASPNET
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        sqlbaglanti conn = new sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

            Panel2.Visible = false;

            if(Page.IsPostBack == false)
            {
                SqlCommand command = new SqlCommand("SELECT * FROM Tbl_Hakkimizda", conn.baglanti());
                SqlDataReader dr = command.ExecuteReader();

                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                }
                dr.Close();
                conn.baglanti().Close();
            }

                
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
            SqlCommand command = new SqlCommand("UPDATE Tbl_Hakkimizda SET Metin=@p1", conn.baglanti());

            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.ExecuteNonQuery();

            conn.baglanti().Close();
        }
    }
}