using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Yemek_Tarifi_Sitesi_ASPNET
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        sqlbaglanti connection = new sqlbaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlCommand 2 parametre alıyor
            //ilk parametre : query
            //ikinci parametre : Gerekli connection stringi parametre olarak alan, SqlConnection nesnesi.
            SqlCommand command = new SqlCommand("Select * From Tbl_Yemekler WHERE durum=1", connection.baglanti());
            SqlDataReader read = command.ExecuteReader();
            DataList2.DataSource = read;
            DataList2.DataBind(); //DataList'teki nesnelere Eval fonksiyonu ile ekledigim column adlarini, tablom ile iliskilendirdim.
        }
    }
}