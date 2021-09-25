<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="txtLargeOrders" runat="server" Text="Large Orders"></asp:Label>

        <asp:GridView ID="GridViewPurchases" runat="server">    
        </asp:GridView>
    </form>
</body>
</html>
