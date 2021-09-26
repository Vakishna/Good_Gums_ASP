<%@ Page Language="C#" AutoEventWireup="true" CodeFile="print.aspx.cs" Inherits="print" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Print Invoice</title>
    <style>
        table {
            border-collapse: collapse;
            padding: 5px;
        }
        div {
            display: inline-block;
        }
    </style>
    <link rel="stylesheet" href="styles.css" />
</head>
<body>

    <nav>
        <ul>
          <li><a href="index.aspx">Home</a></li>
          <li><a href="add.aspx">Add</a></li>
          <li><a class="active" href="invoice.aspx">Invoice</a></li>
          <li><a href="stocktake.aspx">Stocktake</a></li>
          <li><a href="chart.aspx">Chart</a></li>
        </ul>
    </nav>


    <form id="form1" runat="server">
        <div style="background-color: lightgreen;">
            
            <asp:Label ID="lblIssuedTo" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lblIssuedDate" runat="server" Text=""></asp:Label>


            <asp:Table ID="Table1" runat="server" Width="350px">
                
                <asp:TableRow BorderColor="Black" BorderWidth="1">
                    <asp:TableCell BorderColor="Black" BorderWidth="1">Item</asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">Unit Price</asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">Quantity</asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">Subtotal</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"><asp:Label ID="lblItem1" runat="server" Text="---"></asp:Label></asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"><asp:Label ID="lblUnitPrice1" runat="server" Text="$0.00"></asp:Label></asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"><asp:Label ID="lblQty1" runat="server" Text="0"></asp:Label></asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"><asp:Label ID="lblTotal1" runat="server" Text="$0.00"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"><asp:Label ID="lblItem2" runat="server" Text="---"></asp:Label></asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"><asp:Label ID="lblUnitPrice2" runat="server" Text="$0.00"></asp:Label></asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"><asp:Label ID="lblQty2" runat="server" Text="0"></asp:Label></asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"><asp:Label ID="lblTotal2" runat="server" Text="$0.00"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"><asp:Label ID="lblItem3" runat="server" Text="---"></asp:Label></asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"><asp:Label ID="lblUnitPrice3" runat="server" Text="$0.00"></asp:Label></asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"><asp:Label ID="lblQty3" runat="server" Text="0"></asp:Label></asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"><asp:Label ID="lblTotal3" runat="server" Text="$0.00"></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"><asp:Label ID="lblTotalCell" runat="server" Text="Total: "></asp:Label></asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"><asp:Label ID="Label2" runat="server" Text=""></asp:Label></asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"><asp:Label ID="Label3" runat="server" Text=""></asp:Label></asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"><asp:Label ID="lblGrandTotal" runat="server" Text=""></asp:Label></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <asp:Label ID="terms" runat="server" Text="Terms: Invoice is due to be paid in 14 days."></asp:Label>
            <br />
            <asp:Label ID="lblDueDate" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
