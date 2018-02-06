using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XEx03Quotation
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SalesPrice"] != null)
            {
                float sales = (float) Session["SalesPrice"];
                float discount = (float) Session["DiscountAmount"];
                float total = (float) Session["TotalPrice"];
                lblSalesPrice.Text = sales.ToString("c");
                lblDiscountAmount.Text = discount.ToString("c");
                lblTotalPrice.Text = total.ToString("c");
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Session["SalesPrice"] = null;
                Session["DiscountAmount"] = null;
                Session["TotalPrice"] = null;

                string email = txtEmail.Text;
                string name = txtName.Text;

                lblMessage.Text = $"Quotation sent to {name} at {email}.";
            }
        }
    }
}