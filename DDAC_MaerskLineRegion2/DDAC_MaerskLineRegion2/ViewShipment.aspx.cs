using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDAC_MaerskLineRegion2
{
    public partial class ViewShipment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BackView_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}