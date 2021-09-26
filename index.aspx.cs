using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Xml.Serialization;
using System.Data;
using System.Xml;


public partial class index : System.Web.UI.Page
{

    protected void CalcLargeOrders(object sender, EventArgs e) {
        string filePath = Path.Combine(Server.MapPath("~"), @"GoodGumsXML.xml");

        XmlSerializer xmlSerializer = new XmlSerializer(typeof(PurchaseCollection));
        FileStream fs = new FileStream(filePath, FileMode.Open);
        PurchaseCollection purchases =
            (PurchaseCollection)xmlSerializer.Deserialize(fs);
        fs.Close();

        int largeOrders = 0;

        foreach (Purchase purchase in purchases.purchases)
        {
            if (purchase.quantity >= 10)
            {
                largeOrders++;
            }
        }
        txtLargeOrders.Text = "Large Orders:" + largeOrders.ToString();
    }
    

    protected void PopulatePurchaseGridView(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("id", typeof(string));
        dt.Columns.Add("emailAddress", typeof(string));
        dt.Columns.Add("productname", typeof(string));
        dt.Columns.Add("unitprice", typeof(string));
        dt.Columns.Add("quantity", typeof(string));

        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("./GoodGumsXML.xml"));
        XmlNodeList nodeList = doc.SelectNodes("/PurchaseCollection/purchases/Purchase");

        foreach (XmlNode node in nodeList)
        {
            DataRow dtrow = dt.NewRow();
            dtrow["id"] = node["id"].InnerText;
            dtrow["emailAddress"] = node["emailAddress"].InnerText;
            dtrow["productname"] = node["productname"].InnerText;
            dtrow["unitprice"] = node["unitprice"].InnerText;
            dtrow["quantity"] = node["quantity"].InnerText;
            dt.Rows.Add(dtrow);
        }

        GridViewPurchases.DataSource = dt;
        GridViewPurchases.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["purchaseCollection"] = new PurchaseCollection();
            PopulatePurchaseGridView(sender, e);
            CalcLargeOrders(sender, e);
        }
    }
}