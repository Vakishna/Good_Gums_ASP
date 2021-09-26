<%@ Page Language="C#" AutoEventWireup="true" CodeFile="invoice.aspx.cs" Inherits="invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table {
            border-collapse: collapse;
            padding: 5px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server" BackColor="LightGreen" BorderColor="Black" BorderWidth="1">
                <asp:TableRow runat="server" BorderColor="Black" BorderWidth="1">
                    <asp:TableCell ColumnSpan="3" BorderColor="Black" BorderWidth="1"> 
                        <asp:Label ID="lblFullName" runat="server" Text="Full Name"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtFullName" runat="server" Width="97%"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1" Width="25px"> 
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell BorderColor="Black" BorderWidth="1" >
                        <asp:Label ID="lblItemName" runat="server" Text="Item Name:"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:Label ID="lblUnitPrice" runat="server" Text="Unit Price:"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:Label ID="lblQty" runat="server" Text="Quantity:"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtItemName1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtUnitPrice1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtQty1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                     
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtItemName2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtUnitPrice2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtQty2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">                     
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtItemName3" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtUnitPrice3" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtQty3" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">                     
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:Button ID="btnInvoiceSubmit" runat="server" Text="Submit" Width="97%"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
