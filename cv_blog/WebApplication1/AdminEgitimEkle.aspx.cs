using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AdminEgitimEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Egitim_tblTableAdapter dt= new DataSet1TableAdapters.Egitim_tblTableAdapter();    
            dt.EgitimEkle(TextBox1.Text,TextBox2.Text,TextBox3.Text, TextBox4.Text, TextBox5.Text);
            Response.Redirect("AdminEgitimler.aspx");

        }
    }
}