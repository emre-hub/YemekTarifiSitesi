using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;    

namespace Yemek_Tarifi_Sitesi_ASPNET
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        sqlbaglanti bgl = new sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            //sqlbaglanti sınıfımda veritabanıma baglanmistim,
            //burada ilgili tablolara baglanacagim SQL sorgularini yaziyorum.
            SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader(); //verileri oku
            DataList1.DataSource = oku; //datalist'e okunan verileri ekle
            DataList1.DataBind(); // dataliste verileri bagla.
        }
    }
}