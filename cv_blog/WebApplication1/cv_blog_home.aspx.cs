using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Hakkimda_tblTableAdapter dt = new DataSet1TableAdapters.Hakkimda_tblTableAdapter();
            Repeater1.DataSource = dt.HakkimdaListele();
            Repeater1.DataBind();

            DataSet1TableAdapters.Deneyim_tblTableAdapter dt2 = new DataSet1TableAdapters.Deneyim_tblTableAdapter();
            Repeater2.DataSource = dt2.DeneyimListele();
            Repeater2.DataBind();

            DataSet1TableAdapters.Egitim_tblTableAdapter dt3 = new DataSet1TableAdapters.Egitim_tblTableAdapter();
            Repeater3.DataSource = dt3.EgitimListele();
            Repeater3.DataBind();

            DataSet1TableAdapters.Sertifika_tblTableAdapter dt4 = new DataSet1TableAdapters.Sertifika_tblTableAdapter();
            Repeater4.DataSource = dt4.SertifikaListele();
            Repeater4.DataBind();

            DataSet1TableAdapters.Hobiler_tblTableAdapter dt5 = new DataSet1TableAdapters.Hobiler_tblTableAdapter();
            Repeater5.DataSource = dt5.HobiListele();
            Repeater5.DataBind();

        }
    }
}