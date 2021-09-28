<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Abel&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="styles.css" />
</head>
<body>
    
    <nav>
        <ul>
          <li><a class="active" href="index.aspx">Home</a></li>
          <li><a href="add.aspx">Add</a></li>
          <li><a href="invoice.aspx">Invoice</a></li>
          <li><a href="stocktake.aspx">Stocktake</a></li>
          <li><a href="chart.aspx">Chart</a></li>
        </ul>
    </nav>
    <br />
    <h1>Purchases</h1>


    <form id="form1" runat="server">
        <asp:Label ID="txtLargeOrders" runat="server" Text="Large Orders"></asp:Label>

        <asp:GridView ID="GridViewPurchases" runat="server">    
        </asp:GridView>
    </form>
</body>
</html>
