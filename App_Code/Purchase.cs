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
        public float unitprice { get; set; }
        public int quantity { get; set; }

        public Purchase()
        {
            this.id = 0;
            this.fullName = "";
            this.emailAddress = "";
            this.productname = "";
            this.unitprice = 0;
            this.quantity = 0;
        }

        public Purchase(int id, string fullName, string productname, float unitprice, int quantity)
        {
            this.id = id;
            this.fullName = fullName;
            this.productname = productname;
            this.unitprice = unitprice;
            this.quantity = quantity;
        }
}
