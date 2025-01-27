using System;
using WebApplication1;
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
                
                    TextBox1.Text = dt.HakkimdaListele()[0].AD;
                    TextBox2.Text = dt.HakkimdaListele()[0].SOYAD;
                    TextBox3.Text = dt.HakkimdaListele()[0].ADRES;
                    TextBox4.Text = dt.HakkimdaListele()[0].MAIL;
                    TextBox5.Text = dt.HakkimdaListele()[0].TELEFON;
                    TextBox6.Text = dt.HakkimdaListele()[0].ACIKLAMA;
                    TextBox7.Text = dt.HakkimdaListele()[0].fotograf;
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Hakkimda_tblTableAdapter dt1 = new Hakkimda_tblTableAdapter();
            dt1.Hakkimda_güncelle(TextBox1.Text,TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text,TextBox7.Text);
            Response.Redirect("Default.Aspx");
        }
    }
}