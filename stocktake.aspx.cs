using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class stocktake : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {       


    }

    protected void ValidateStringLength(object sender, ServerValidateEventArgs e)
    {
        e.IsValid = e.Value.Length <= 100;
    }

    protected void btnLess_Click(object sender, EventArgs e)
    {
        int cVal = Int32.Parse(refillLvl.Text);

        if (cVal >= 1)
        {
            cVal--;
            refillLvl.Text = cVal.ToString();
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int cVal = Int32.Parse(refillLvl.Text);
        if (cVal <= 999)
        {
            cVal++;
            refillLvl.Text = cVal.ToString();
        }
    }

    protected void validateFilledOrEmpty2(object sender, ServerValidateEventArgs e)
    {
        if ((txtItem2.Text.Length == 0) && (txtStockQty2.Text.Length == 0) && (txtUnitPrice2.Text.Length == 0))
        {
            e.IsValid = true;
        }
        if ((txtItem2.Text.Length != 0) && (txtStockQty2.Text.Length != 0) && (txtUnitPrice2.Text.Length != 0))
        {
            e.IsValid = true;
        }
        else
        {
            e.IsValid = false;
        }
    }

    protected void validateFilledOrEmpty3(object sender, ServerValidateEventArgs e)
    {
        if ((txtItem3.Text.Length == 0) && (txtStockQty3.Text.Length == 0) && (txtUnitPrice3.Text.Length == 0))
        {
            e.IsValid = true;
        }
        if ((txtItem3.Text.Length != 0) && (txtStockQty3.Text.Length != 0) && (txtUnitPrice3.Text.Length != 0))
        {
            e.IsValid = true;
        }
        else
        {
            e.IsValid = false;
        }
    }

    protected void btcCalculateStockTake_Click(object sender, EventArgs e)
    {

        if (!Page.IsValid) return;

        int reoderLevel = Int32.Parse(refillLvl.Text.ToString());
        int stockQty1 = Int32.Parse(txtStockQty1.Text.ToString());

        if (stockQty1 < reoderLevel)
        {
            int toOrderQt = reoderLevel - stockQty1;
            double price = Double.Parse(txtUnitPrice1.Text);
            double toOrderDouble = Double.Parse(toOrderQt.ToString());
            double totalToOrderPrice = price * toOrderDouble;


            lblReorderQty1.Text = toOrderDouble.ToString();
            lblSubtotal1.Text = "$" + totalToOrderPrice.ToString();
        }

        if (txtItem2.Text.Length > 0)
        {

            int stockQty2 = Int32.Parse(txtStockQty2.Text.ToString());
            int toOrderQt = reoderLevel - stockQty2;

            if (stockQty2 < reoderLevel)
            {
                double price = Double.Parse(txtUnitPrice2.Text);
                double toOrderDouble = Double.Parse(toOrderQt.ToString());
                double totalToOrderPrice = price * toOrderDouble;

                lblReorderQty2.Text = toOrderDouble.ToString();
                lblSubtotal2.Text = "$" + totalToOrderPrice.ToString();
            }
        }

        if (txtItem3.Text.Length > 0)
        {

            int stockQty3 = Int32.Parse(txtStockQty3.Text.ToString());
            int toOrderQt = reoderLevel - stockQty3;

            if (stockQty3 < reoderLevel)
            {
                double price = Double.Parse(txtUnitPrice3.Text);
                double toOrderDouble = Double.Parse(toOrderQt.ToString());
                double totalToOrderPrice = price * toOrderDouble;

                lblReorderQty3.Text = toOrderDouble.ToString();
                lblSubtotal3.Text = "$" + totalToOrderPrice.ToString();
            }
        }
    }
}