using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AdminEgitimler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.Egitim_tblTableAdapter dt = new DataSet1TableAdapters.Egitim_tblTableAdapter();
            Repeater1.DataSource = dt.EgitimListele();
            Repeater1.DataBind();
        }
    }
}