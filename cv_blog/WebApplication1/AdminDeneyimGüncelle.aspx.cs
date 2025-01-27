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
        // AdminDeneyimGüncelle.aspx.cs
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // Sadece ilk yüklemede çalışsın
            {
                if (Request.QueryString["ID"] != null)
                {
                    int x = Convert.ToInt16(Request.QueryString["ID"]); // Int16 -> Int32
                    TextBox5.Enabled = false;
                    TextBox5.Text = x.ToString();

                    DataSet1TableAdapters.Deneyim_tblTableAdapter dt = new DataSet1TableAdapters.Deneyim_tblTableAdapter();
                    DataSet1.Deneyim_tblDataTable deneyim = dt.DeneyimGetir(Convert.ToInt16(x));

                    if (deneyim.Rows.Count > 0) // Veri varsa devam et
                    {
                        TextBox1.Text = deneyim[0].BASLIK;
                        TextBox2.Text = deneyim[0].ALTBASLIK;
                        TextBox3.Text = deneyim[0].ACIKLAMA;
                        TextBox4.Text = deneyim[0].TARIH;
                    }
                    else // Veri yoksa kullanıcıyı yönlendir
                    {
                        Response.Redirect("AdminDeneyimler.aspx");
                    }
                }
                else // ID parametresi eksikse yönlendir
                {
                    Response.Redirect("AdminDeneyimler.aspx");
                }
            }
        }
    }
} 

