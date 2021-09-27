<%@ Page Language="C#" MaintainScrollPositionOnPostBack="true" AutoEventWireup="true" CodeFile="stocktake.aspx.cs" Inherits="stocktake" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stocktake</title>
    <link rel="stylesheet" href="styles.css" />
    <script src="jquery-3.6.0.js"></script>
</head>
<body>
    <nav>
        <ul>
          <li><a href="index.aspx">Home</a></li>
          <li><a  href="add.aspx">Add</a></li>
          <li><a href="invoice.aspx">Invoice</a></li>
          <li><a class="active" href="stocktake.aspx">Stocktake</a></li>
          <li><a href="chart.aspx">Chart</a></li>
        </ul>
    </nav>

    <form id="form1" runat="server">
        <div>
            <asp:Table ID="tblStocktake" runat="server">
                <asp:TableRow BorderColor="Black" BorderWidth="1">
                    <asp:TableCell ColumnSpan="5">
                        <asp:Label runat="server" Text="Reorder Level: "></asp:Label>                        
                        <asp:Button ID="btnLess" runat="server" OnClick="btnLess_Click" Text="-" autopostback="false" />
                        <asp:TextBox ID="refillLvl" runat="server" ReadOnly="True" Text="10"></asp:TextBox>
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="+" autopostback="false" />
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1"></asp:TableCell>                    
                </asp:TableRow>

                <asp:TableRow BorderColor="Black" BorderWidth="1">                    
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:Label ID="lblItemName" runat="server" Text="Item Name: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:Label ID="lblUnitPrice" runat="server" Text="Stock Quantity: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:Label ID="lblStockQty" runat="server" Text="Unit Price: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:Label ID="lblReorderQty" runat="server" Text="Reorder Quantity: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:Label ID="lblSubtotal" runat="server" Text="Subtotal: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow BorderColor="Black" BorderWidth="1">
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtItem1" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="lenTxtItem1Cv" runat="server" ErrorMessage="Item (Line 1) must be <= 100 characters" Display="None" OnServerValidate="ValidateStringLength" ControlToValidate="txtItem1"></asp:CustomValidator>
                        <asp:RequiredFieldValidator ID="txtItem1RFV" Display="None" runat="server" ControlToValidate="txtItem1" ErrorMessage="Item Name (Line 1) cannot be empty"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtStockQty1" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="txtStockQty1Rv" ControlToValidate="txtStockQty1" runat="server" MinimumValue="0" MaximumValue="100" ErrorMessage="Stock quantity (Line 1) must be under 100" Type="Integer" Display="None"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="txtStockQty1RFV" Display="None" runat="server" ControlToValidate="txtStockQty1" ErrorMessage="Stock Quantity (Line 1) cannot be empty"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtUnitPrice1" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="txtUnitPrice1Rv" runat="server" ErrorMessage="Unit Price (Line 1) Must be between 0.00 and 1000.00" MinimumValue="0.00" MaximumValue="1000.00" Type="Double" ControlToValidate="txtUnitPrice3" Display="None"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="txtUnitPrice1RFV" Display="None" runat="server" ControlToValidate="txtUnitPrice1" ErrorMessage="Unit Price (Line 1) cannot be empty"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:Label ID="lblReorderQty1" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:Label ID="lblSubtotal1" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">                     
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow BorderColor="Black" BorderWidth="1">
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtItem2" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="lenTxtItem2Cv" runat="server" ErrorMessage="Item (Line 2) must be <= 100 characters" Display="None" OnServerValidate="ValidateStringLength" ControlToValidate="txtItem2"></asp:CustomValidator>
                        <asp:CustomValidator ID="cvFilledOrEmptyName2" runat="server" OnServerValidate="validateFilledOrEmpty2" Display="None" ControlToValidate="txtItem2" ErrorMessage="Please ensure all (Line 2) items are filled OR empty"></asp:CustomValidator>                        
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtStockQty2" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="txtStockQty2RV" ControlToValidate="txtStockQty2" runat="server" MinimumValue="0" MaximumValue="100" ErrorMessage="Stock quantity (Line 2) must be under 100" Type="Integer" Display="None"></asp:RangeValidator>
                        <asp:CustomValidator ID="cvFilledOrEmptyStockQty2" runat="server" OnServerValidate="validateFilledOrEmpty2" Display="None" ControlToValidate="txtStockQty2" ErrorMessage="Please ensure all (Line 2) items are filled OR empty"></asp:CustomValidator>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtUnitPrice2" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="txtUnitPrice2Rv" runat="server" ErrorMessage="Unit Price (Line 2) Must be between 0.00 and 1000.00" MinimumValue="0.00" MaximumValue="1000.00" Type="Double" ControlToValidate="txtUnitPrice2" Display="None"></asp:RangeValidator>
                        <asp:CustomValidator ID="cvFilledOrEmptyUnitPrice2" runat="server" OnServerValidate="validateFilledOrEmpty2" Display="None" ControlToValidate="txtUnitPrice2" ErrorMessage="Please ensure all (Line 2) items are filled OR empty"></asp:CustomValidator>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:Label ID="lblReorderQty2" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:Label ID="lblSubtotal2" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">                     
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow BorderColor="Black" BorderWidth="1">
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtItem3" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="lenTxtItem3Cv" runat="server" ErrorMessage="Item (Line 3) must be <= 100 characters" Display="None" OnServerValidate="ValidateStringLength" ControlToValidate="txtItem3"></asp:CustomValidator>
                        <asp:CustomValidator ID="cvFilledOrEmptyName3" runat="server" OnServerValidate="validateFilledOrEmpty3" Display="None" ControlToValidate="txtItem3" ErrorMessage="Please ensure all (Line 3) items are filled OR empty"></asp:CustomValidator>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtStockQty3" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="txtStockQty3Rv" ControlToValidate="txtStockQty3" runat="server" MinimumValue="0" MaximumValue="100" ErrorMessage="Stock quantity (Line 3) must be under 100" Type="Integer" Display="None"></asp:RangeValidator>
                        <asp:CustomValidator ID="cvFilledOrEmptyStockQty3" runat="server" OnServerValidate="validateFilledOrEmpty3" Display="None" ControlToValidate="txtStockQty3" ErrorMessage="Please ensure all (Line 3) items are filled OR empty"></asp:CustomValidator>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtUnitPrice3" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="txtUnitPrice3Rv" runat="server" ErrorMessage="Unit Price (Line 3) Must be between 0.00 and 1000.00" MinimumValue="0.00" MaximumValue="1000.00" Type="Double" ControlToValidate="txtUnitPrice3" Display="None"></asp:RangeValidator>
                        <asp:CustomValidator ID="cvFilledOrEmptyUnitPrice3" runat="server" OnServerValidate="validateFilledOrEmpty3" Display="None" ControlToValidate="txtUnitPrice3" ErrorMessage="Please ensure all (Line 3) items are filled OR empty"></asp:CustomValidator>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:Label ID="lblReorderQty3" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:Label ID="lblSubtotal3" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">                     
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow BorderColor="Black" BorderWidth="1">
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:Button ID="btnCalculateStockTake" runat="server" OnClick="btcCalculateStockTake_Click" Text="Calculate" autopostback="true" />
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">                    
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:Label ID="lblTot" runat="server" Text="Total:"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">                        
                        <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">                                                
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:ValidationSummary ID="stocktakeVS" runat="server" />
        </div>
    </form>

    <script>
       
    </script>
</body>
</html>
