using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

/// <summary>
/// Summary description for Purchase
/// </summary>
/// 

public class Purchase
{
        public int id { get; set; }
        public string fullName { get; set; }
        public string emailAddress { get; set; }
        public string productname { get; set; }
        public double unitprice { get; set; }
        public int quantity { get; set; }
        public DateTime purchasedDate { get; set; }

        public Purchase()
        {
            this.id = 0;
            this.fullName = "";
            this.emailAddress = "";
            this.productname = "";
            this.unitprice = 0;
            this.quantity = 0;
            this.purchasedDate = new DateTime();
        }

        public Purchase(int id, string fullName, string emailAddress, string productname, double unitprice, int quantity, DateTime purchasedDate)
        {
            this.id = id;
            this.fullName = fullName;
            this.emailAddress = emailAddress;
            this.productname = productname;
            this.unitprice = unitprice;
            this.quantity = quantity;
            this.purchasedDate = purchasedDate;
        }
}
