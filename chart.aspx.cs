using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;


public partial class chart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        // TODO: Add axis
        DataSet ds = new DataSet();
        ds = GetData(sender, e);
        yearlyEarningsChart.DataSource = ds;
        yearlyEarningsChart.Series[0].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Line;


    }


    protected DataSet GetData(object sender, EventArgs e)
    {
        string filePath = Path.Combine(Server.MapPath("~"), @"GoodGumsXML.xml");


        Dictionary<string, double> yearlyEarnings = new Dictionary<string, double>();

        XmlSerializer xmlSerializer = new XmlSerializer(typeof(PurchaseCollection));
        FileStream fs = new FileStream(filePath, FileMode.Open);
        PurchaseCollection purchases =
            (PurchaseCollection)xmlSerializer.Deserialize(fs);
        fs.Close();

        foreach (Purchase purchase in purchases.purchases)
        {

            string purchaseYear = purchase.purchasedDate.Year.ToString();
            bool yearExists = yearlyEarnings.ContainsKey(purchaseYear);

            if (yearExists)
            {
                yearlyEarnings[purchaseYear] += (Double.Parse(purchase.quantity.ToString()) * purchase.quantity);
            }
            else
            {
                yearlyEarnings.Add(purchaseYear, Double.Parse(purchase.quantity.ToString()) * purchase.quantity);
            }
        }

        DataSet ds = new DataSet("yearlyEarnings");

        DataTable yrSales = ds.Tables.Add("yearlySales");

        yrSales.Columns.Add("Year");
        yrSales.Columns.Add("Sales");


        foreach(KeyValuePair<string, double> yearsales in yearlyEarnings)
        {
            yrSales.Rows.Add(yearsales.Key, yearsales.Value);
        }

        return ds;

    }



}