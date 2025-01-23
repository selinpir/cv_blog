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
            DataSet1TableAdapters.hakkımdaTableAdapter dt = new DataSet1TableAdapters.hakkımdaTableAdapter();
            Repeater1.DataSource = dt.hakkimdalistele();
            Repeater1.DataBind();

            DataSet1TableAdapters.deneyimTableAdapter dt2 = new DataSet1TableAdapters.deneyimTableAdapter();
            Repeater2.DataSource = dt2.deneyimlistele();
            Repeater2.DataBind();

            DataSet1TableAdapters.egitimTableAdapter dt3 = new DataSet1TableAdapters.egitimTableAdapter();
            Repeater3.DataSource = dt3.egitimListele();
            Repeater3.DataBind();

            DataSet1TableAdapters.sertifikaTableAdapter dt4 = new DataSet1TableAdapters.sertifikaTableAdapter();
            Repeater4.DataSource = dt4.sertifikalistele();
            Repeater4.DataBind();

            DataSet1TableAdapters.hobilerTableAdapter dt5 = new DataSet1TableAdapters.hobilerTableAdapter();
            Repeater5.DataSource = dt5.hobilerListele();
            Repeater5.DataBind();

        }
    }
}