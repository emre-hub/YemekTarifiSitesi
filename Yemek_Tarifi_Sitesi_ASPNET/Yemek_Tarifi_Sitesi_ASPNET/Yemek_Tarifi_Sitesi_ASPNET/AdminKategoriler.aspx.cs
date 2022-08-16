using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi_ASPNET
{
    public partial class AdminKategoriler : System.Web.UI.Page
    {
        sqlbaglanti conn = new sqlbaglanti();

        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                id = Request.QueryString["KategoriId"];
                islem = Request.QueryString["islem"];
            }

            SqlCommand command = new SqlCommand("SELECT * FROM Tbl_Kategoriler", conn.baglanti());
            SqlDataReader sqlDataReader = command.ExecuteReader();
            DataList1.DataSource = sqlDataReader;
            DataList1.DataBind();

            //Silme islemi
            if(islem == "sil")
            {
                SqlCommand commandDeletion = new SqlCommand("DELETE FROM Tbl_Kategoriler WHERE KategoriId=@p1", conn.baglanti());
                commandDeletion.Parameters.AddWithValue("@p1", id);
                commandDeletion.ExecuteNonQuery();
                conn.baglanti().Close();
            }


            Panel2.Visible = false;
            Panel4.Visible = false;

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

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Kategoriler (KategoriAd) values(@p1)", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            conn.baglanti().Close();
        }


    }
}