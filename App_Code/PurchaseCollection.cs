using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

/// <summary>
/// Summary description for PurchaseCollection
/// </summary>
/// 

    [XmlRoot (ElementName = "PurchaseCollection")]
    public class PurchaseCollection
    {

        public List<Purchase> purchases { get; set; }

        public PurchaseCollection()
        {
            purchases = new List<Purchase>();
        }

    }

