using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;

public partial class add : System.Web.UI.Page
{
    
    
    
    
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ClearFormFields(object sender, EventArgs e)
    {
        txtFullName.Text = "";
        txtEmailAddress.Text = "";
        txtQty.Text = "";
        txtUnitPrice.Text = "";       
    }


    protected void btnAddSubmit_Click(object sender, EventArgs e)
    {


        string filePath = Path.Combine(Server.MapPath("~"), @"GoodGumsXML.xml");

        try
        {
            XmlSerializer xmlSerializer = new XmlSerializer(typeof(PurchaseCollection));
            FileStream fs = new FileStream(filePath, FileMode.Open);
            PurchaseCollection purchases =
                (PurchaseCollection)xmlSerializer.Deserialize(fs);
            fs.Close();

            int id = purchases.purchases.Count + 1;
            string fullName = txtFullName.Text;
            string emailAddress = txtEmailAddress.Text;
            string productname = ddlProductName.SelectedValue;
            int qty = Int32.Parse(txtQty.Text);
            double unitprice = Double.Parse(txtUnitPrice.Text);

            Purchase newPurchase = new Purchase(id, fullName, emailAddress, productname, unitprice, qty);
            purchases.purchases.Add(newPurchase);

            Session["purchaseCollection"] = purchases;

        } catch (Exception ex)
        {
            lblMessage.Text = ex.ToString();
        }

        try
        {
            PurchaseCollection purchaseCollection = (PurchaseCollection)Session["purchaseCollection"];
            XmlSerializer xmlSerializer = new XmlSerializer(typeof(PurchaseCollection));
            StreamWriter streamWriter = new StreamWriter(filePath);
            xmlSerializer.Serialize(streamWriter, purchaseCollection);
            streamWriter.Close();
        } catch (Exception ex) {
            lblMessage.Text = ex.ToString();
        }

        ClearFormFields(sender, e);
        Response.Redirect(Request.Url.ToString(), false);
    }
}