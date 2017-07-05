using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDAC_MaerkLine
{
    public partial class AddShipment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddShip_Click(object sender, EventArgs e)
        {
            if (cusName1.Text == "" || cusCompany1.Text == "" || DepartLoc1.Text == "" || ArrivalLoc1.Text == "" || Date1.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill in all fields.')", true);

            }
            else
            {
                SqlDataSource_InsertShipment.Insert();
                Response.Write("<script language='javascript'>window.alert('Successfully Added.');window.location='Default.aspx';</script>");
            }
        }

        protected void CancelShip_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}