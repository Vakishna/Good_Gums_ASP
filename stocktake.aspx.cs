﻿using System;
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


    protected void btcCalculateStockTake_Click(object sender, EventArgs e)
    {
        int reoderLevel = Int32.Parse(refillLvl.Text.ToString());
        int stockQty = Int32.Parse(txtStockQty1.Text.ToString());

        if (stockQty < reoderLevel)
        {
            int toOrderQt = reoderLevel - stockQty;
            double price = Double.Parse(txtUnitPrice1.Text);
            double toOrderDouble = Double.Parse(toOrderQt.ToString());
            double totalToOrderPrice = price * toOrderDouble;


            lblReorderQty1.Text = toOrderDouble.ToString();
            lblSubtotal1.Text = "$" + totalToOrderPrice.ToString();


        }
    }
}