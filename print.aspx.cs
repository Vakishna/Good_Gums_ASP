using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class print : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {

            DateTime today = DateTime.Now;
            
            lblIssuedTo.Text = "Invoiced To: " + Request.Form["txtFullName"];
            lblIssuedDate.Text = "Date Issued: " + today.ToString();

            if (Request.Form["txtItemName1"].Length > 0)
            {
                lblItem1.Text = Request.Form["txtItemName1"];
                lblUnitPrice1.Text = "$" + Request.Form["txtUnitPrice1"];
                lblQty1.Text = Request.Form["txtQty1"];
                double total1 = Double.Parse(Request.Form["txtUnitPrice1"]) * Double.Parse(lblQty1.Text);
                lblTotal1.Text = "$" + total1;
            }
            if (Request.Form["txtItemName2"].Length > 0)
            {
                lblItem2.Text = Request.Form["txtItemName2"];
                lblUnitPrice2.Text = "$" + Request.Form["txtUnitPrice2"];
                lblQty2.Text = Request.Form["txtQty2"];
                double total2 = Double.Parse(Request.Form["txtUnitPrice2"]) * Double.Parse(lblQty2.Text);
                lblTotal2.Text = "$" + total2;
            }
            if (Request.Form["txtItemName3"].Length > 0)
            {
                lblItem3.Text = Request.Form["txtItemName3"];
                lblUnitPrice3.Text = "$" + Request.Form["txtUnitPrice3"];
                lblQty3.Text = Request.Form["txtQty3"];
                double total3 = Double.Parse(Request.Form["txtUnitPrice3"]) * Double.Parse(lblQty3.Text);                
                lblTotal3.Text = "$" + total3;
            }

            double totalPrice = Double.Parse(Request.Form["txtUnitPrice1"]) * Double.Parse(lblQty1.Text);
            totalPrice += Double.Parse(Request.Form["txtUnitPrice2"]) * Double.Parse(lblQty2.Text);
            totalPrice += Double.Parse(Request.Form["txtUnitPrice3"]) * Double.Parse(lblQty3.Text); ;

            lblGrandTotal.Text = "$" + totalPrice.ToString();

            TimeSpan duration = new TimeSpan(14, 0, 0, 0);
            lblDueDate.Text = "Due Date: " + today.Add(duration).ToString();
        } catch (Exception ex)
        {
            lblIssuedTo.Text = ex.ToString();            
        }      
    }
}