﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="print.aspx.cs" Inherits="print" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table {
            border-collapse: collapse;
            padding: 5px;
        }
        div {
            display: inline-block;
        }
    </style>
</head>
<body>
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
            </asp:Table>
        </div>
    </form>
</body>
</html>
