using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class invoice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
   
    }

    protected void ValidateStringLength(object sender, ServerValidateEventArgs e)
    {
        e.IsValid = txtFullName.Text.Length < 50;
    }

    protected void validateFilledOrEmpty2(object sender, ServerValidateEventArgs e)
    {
        if ((txtItemName2.Text.Length == 0) && (txtQty2.Text.Length == 0) && (txtUnitPrice2.Text.Length == 0))
        {
            e.IsValid = true;
        }        
        if ((txtItemName2.Text.Length != 0) && (txtQty2.Text.Length != 0) && (txtUnitPrice2.Text.Length != 0))
        {
            e.IsValid = true;
        } else
        {
            e.IsValid = false;
        }
    }

    protected void btnSubmitInvoice_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid) return;


        Server.Transfer("print.aspx", true);


    }


}