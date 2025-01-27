using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AdminEgitimGüncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    if (Request.QueryString["ID"] != null)
                    {
                        int x = Convert.ToInt32(Request.QueryString["ID"]);
                        TextBox6.Enabled = false;
                        TextBox6.Text = x.ToString();

                        DataSet1TableAdapters.Egitim_tblTableAdapter dt = new DataSet1TableAdapters.Egitim_tblTableAdapter();
                        DataSet1.Egitim_tblDataTable egitim = dt.EgitimGetir(Convert.ToInt16(x));

                        if (egitim.Rows.Count > 0)
                        {
                            TextBox1.Text = egitim[0].BASLIK;
                            TextBox2.Text = egitim[0].ALTBASLIK;
                            TextBox3.Text = egitim[0].ACIKLAMA;
                            TextBox4.Text = egitim[0].GNO;
                            TextBox5.Text = egitim[0].TARİH;
                        }
                        else
                        {
                            Response.Redirect("AdminEgitimler.aspx");
                        }
                    }
                    else
                    {
                        Response.Redirect("AdminEgitimler.aspx");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Hata: " + ex.Message + "');</script>");
                }
            }
        }
    


     // BUTON TIKLAMA METODU SINIF İÇİNDE TANIMLANDI
        protected void Button1_Click(object sender, EventArgs e) /*çalışmıyor*/
        {
            try
            {
                int id = Convert.ToInt32(TextBox6.Text); // Int32 kullanıldı
                DataSet1TableAdapters.Egitim_tblTableAdapter dt = new DataSet1TableAdapters.Egitim_tblTableAdapter();

                // Parametrelerin sırası ve türü kontrol edildi
                dt.EgitimGüncelle(
                    TextBox1.Text,
                    TextBox2.Text,
                    TextBox3.Text,
                    TextBox4.Text,
                    TextBox5.Text,              
                    Convert.ToInt16(id)
                );

                Response.Redirect("AdminEgitimler.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Hata: " + ex.Message.Replace("'", "") + "');</script>");
            }
        }
    }
}