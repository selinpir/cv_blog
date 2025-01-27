using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AdminDeneyimGüncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["ID"] != null)
                {
                    int x = Convert.ToInt32(Request.QueryString["ID"]); // Int32 kullanıldı
                    TextBox5.Enabled = false;
                    TextBox5.Text = x.ToString();

                    DataSet1TableAdapters.Deneyim_tblTableAdapter dt = new DataSet1TableAdapters.Deneyim_tblTableAdapter();
                    DataSet1.Deneyim_tblDataTable deneyim = dt.DeneyimGetir(Convert.ToInt16(x)); // Int32 parametre

                    if (deneyim.Rows.Count > 0)
                    {
                        TextBox1.Text = deneyim[0].BASLIK;
                        TextBox2.Text = deneyim[0].ALTBASLIK;
                        TextBox3.Text = deneyim[0].ACIKLAMA;
                        TextBox4.Text = deneyim[0].TARIH;
                    }
                    else
                    {
                        Response.Redirect("AdminDeneyimler.aspx");
                    }
                }
                else
                {
                    Response.Redirect("AdminDeneyimler.aspx");
                }
            }
        }

        // BUTON TIKLAMA METODU SINIF İÇİNDE TANIMLANDI
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(TextBox5.Text); // Int32 kullanıldı
                DataSet1TableAdapters.Deneyim_tblTableAdapter dt = new DataSet1TableAdapters.Deneyim_tblTableAdapter();

                // Parametrelerin sırası ve türü kontrol edildi
                dt.DeneyimGüncelle(
                    TextBox1.Text,
                    TextBox2.Text,
                    TextBox3.Text,
                    TextBox4.Text,
                    Convert.ToInt16(id)
                );

                Response.Redirect("AdminDeneyimler.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Hata: " + ex.Message.Replace("'", "") + "');</script>");
            }
        }
    }
}