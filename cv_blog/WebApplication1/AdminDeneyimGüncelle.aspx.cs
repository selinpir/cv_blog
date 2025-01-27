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
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            TextBox5.Enabled = false;  
            TextBox5.Text = x.ToString();

            DataSet1TableAdapters.Deneyim_tblTableAdapter dt=new DataSet1TableAdapters.Deneyim_tblTableAdapter();
            TextBox1.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].BASLIK;
            TextBox2.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].ALTBASLIK;
            TextBox3.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].ACIKLAMA;
            TextBox4.Text = dt.DeneyimGetir(Convert.ToInt16(x))[0].TARIH;

        }
    }
}