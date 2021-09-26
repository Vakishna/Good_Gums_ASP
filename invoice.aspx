<%@ Page Language="C#" AutoEventWireup="true" CodeFile="invoice.aspx.cs" Inherits="invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Invoice</title>
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
                        <asp:TextBox ID="txtFullName" runat="server" Width="98.6%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" Display="None" ErrorMessage="Full name is required"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="cvLenFullName" runat="server" OnServerValidate="ValidateStringLength" Display="None" ControlToValidate="txtFullName" ErrorMessage="Name should be under 50 characters long"></asp:CustomValidator>
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
                        <asp:RequiredFieldValidator ID="rfvTxtItem1" runat="server" ControlToValidate="txtItemName1" ErrorMessage="Item Name (1) Required" Display="None"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="cvLenName1" runat="server" OnServerValidate="ValidateNameLength" Display="None" ControlToValidate="txtItemName1" ErrorMessage="(Item 1) must be < 100 Characters!"></asp:CustomValidator>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtUnitPrice1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTxtUnitPrice1" runat="server" ControlToValidate="txtUnitPrice1" ErrorMessage="Unit Price (1) Required" Display="None"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvmaxUnitPrice1" runat="server" ErrorMessage="Unit Price (Line 1) < 1000.00" MinimumValue="0" MaximumValue="1000.00" Type="Double" Display="None" ControlToValidate="txtUnitPrice1"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtQty1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTxtQty1" runat="server" ControlToValidate="txtQty1" ErrorMessage="Quantity (1) Required" Display="None"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvmaxQty1" runat="server" ErrorMessage="Quantity (Line 1) Maxiumum quantity < 100" MinimumValue="0" MaximumValue="100" Type="Integer" Display="None" ControlToValidate="txtQty1"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">                    
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtItemName2" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="cvFilledOrEmptyName2" runat="server" OnServerValidate="validateFilledOrEmpty2" Display="None" ControlToValidate="txtItemName2" ErrorMessage="Please ensure all (Line 2) items are filled OR empty"></asp:CustomValidator>
                        <asp:CustomValidator ID="cvLenName2" runat="server" OnServerValidate="ValidateNameLength" Display="None" ControlToValidate="txtItemName2" ErrorMessage="(Item 2) must be < 100 Characters!"></asp:CustomValidator>                        
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtUnitPrice2" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="cvFilledOrEmptyPrice2" runat="server" OnServerValidate="validateFilledOrEmpty2" Display="None" ControlToValidate="txtUnitPrice2" ErrorMessage="Please ensure all (Line 2) items are filled OR empty"></asp:CustomValidator>
                        <asp:RangeValidator ID="rvmaxUnitPrice2" runat="server" ErrorMessage="Unit Price (Line 2) < 1000.00" MinimumValue="0" MaximumValue="1000.00" Type="Double" ControlToValidate="txtUnitPrice2" Display="None"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtQty2" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="cvFilledOrEmptyQty2" runat="server" OnServerValidate="validateFilledOrEmpty2" Display="None" ControlToValidate="txtQty2" ErrorMessage="Please ensure all (Line 2) items are filled OR empty"></asp:CustomValidator>
                        <asp:RangeValidator ID="rvmaxQty2" runat="server" ErrorMessage="Quantity (Line 2) Maxiumum quantity < 100" MinimumValue="0" MaximumValue="100" Type="Integer" Display="None" ControlToValidate="txtQty2"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">                     
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtItemName3" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="cvFilledOrEmptyName3" runat="server" OnServerValidate="validateFilledOrEmpty3" Display="None" ControlToValidate="txtItemName3" ErrorMessage="Please ensure all (Line 3) items are filled OR empty"></asp:CustomValidator>
                        <asp:CustomValidator ID="cvLenName3" runat="server" OnServerValidate="ValidateNameLength" Display="None" ControlToValidate="txtItemName3" ErrorMessage="(Item 3) must be < 100 Characters!"></asp:CustomValidator>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtUnitPrice3" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="cvFilledOrEmptyPrice3" runat="server" OnServerValidate="validateFilledOrEmpty3" Display="None" ControlToValidate="txtUnitPrice3" ErrorMessage="Please ensure all (Line 3) items are filled OR empty"></asp:CustomValidator>
                        <asp:RangeValidator ID="rvmaxUnitPrice3" runat="server" ErrorMessage="Unit Price (Line 3) < 1000.00" MinimumValue="0" MaximumValue="1000.00" Type="Double" ControlToValidate="txtUnitPrice3" Display="None"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">
                        <asp:TextBox ID="txtQty3" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="cvFilledOrEmptyQty3" runat="server" OnServerValidate="validateFilledOrEmpty3" Display="None" ControlToValidate="txtQty3" ErrorMessage="Please ensure all (Line 3) items are filled OR empty"></asp:CustomValidator>
                        <asp:RangeValidator ID="rvmaxQt3" runat="server" ErrorMessage="Quantity (Line 3) Maxiumum quantity < 100" MinimumValue="0" MaximumValue="100" Type="Integer" Display="None" ControlToValidate="txtQty3"></asp:RangeValidator>
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
                        <asp:Button ID="btnInvoiceSubmit" OnClick="btnSubmitInvoice_Click" runat="server" Text="Submit" Width="99.7%" />
                    </asp:TableCell>
                    <asp:TableCell BorderColor="Black" BorderWidth="1">                     
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:ValidationSummary ID="invoiceVS" runat="server" />
        </div>
    </form>
</body>
</html>
