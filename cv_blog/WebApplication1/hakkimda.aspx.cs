using System;
using WebApplication1.DataSet1TableAdapters;

namespace page
{
    public partial class hakkimda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Hakkimda_tblTableAdapter dt = new Hakkimda_tblTableAdapter();
                var data = dt.HakkimdaListele();

                if (data.Rows.Count > 0)
                {
                    TextBox1.Text = data[0].AD;
                    TextBox2.Text = data[0].SOYAD;
                    TextBox3.Text = data[0].ADRES;
                    TextBox4.Text = data[0].MAIL;
                    TextBox5.Text = data[0].TELEFON;
                    TextBox6.Text = data[0].ACIKLAMA;
                    TextBox7.Text = data[0].fotograf;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Hakkimda_tblTableAdapter dt = new Hakkimda_tblTableAdapter();
                dt.Hakkimda_güncelle(
                    TextBox1.Text,
                    TextBox2.Text,
                    TextBox3.Text,
                    TextBox4.Text,
                    TextBox5.Text,
                    TextBox6.Text,
                    TextBox7.Text
                );

                Response.Redirect("Default.aspx");
            }
            catch (Exception ex)
            {
                Label1.Text = "Hata oluştu: " + ex.Message;
            }
        }
    }
}