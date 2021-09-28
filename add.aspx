<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Purchase</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Abel&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="styles.css" />
</head>
<body>
    <nav>
        <ul>
          <li><a href="index.aspx">Home</a></li>
          <li><a class="active" href="add.aspx">Add</a></li>
          <li><a href="invoice.aspx">Invoice</a></li>
          <li><a href="stocktake.aspx">Stocktake</a></li>
          <li><a href="chart.aspx">Chart</a></li>
        </ul>
    </nav>
    <br />
    <h1>Add Purchase</h1>
    <form id="AddPurchaseForm" runat="server">
        <fieldset>
            <legend>Purchase Form</legend>
            <br />
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            
            <div>
                <asp:Label ID="lblFullName" runat="server" Text="Full Name: "></asp:Label>
                <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFullName" Display="none" runat="server" ErrorMessage="Please enter your full name" ControlToValidate="txtFullName"></asp:RequiredFieldValidator>               
            </div>
            <div>
                <asp:Label ID="lblEmailAddress" runat="server" Text="Email Address: "></asp:Label>
                <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" Display="none" ErrorMessage="Email is required" ControlToValidate="txtEmailAddress"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmailAddress" ErrorMessage="Invalid Email Format" Enabled="True" Display="None"></asp:RegularExpressionValidator>
            </div>           
            <div>
                <asp:Label ID="lblProductName" runat="server" Text="Product Name: "></asp:Label>
                <asp:DropDownList ID="ddlProductName" runat="server">
                     <asp:ListItem Enabled="True" Selected="False" Text="Silver Princess Gum" Value="Silver Princess Gum" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Snow Gum" Value="Snow Gum" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Red Flowering Gum" Value="Red Flowering Gum" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Crimson Bottlebrush" Value="Crimson Bottlebrush" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Happy Wanderer" Value="Happy Wanderer" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Poa Grass" Value="Poa Grass" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Golden Wattle" Value="Golden Wattle" />   
                     <asp:ListItem Enabled="True" Selected="False" Text="Lilly Pilly" Value="Lilly Pilly" /> 
                     <asp:ListItem Enabled="True" Selected="False" Text="Canberra Bells" Value="Canberra Bells" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Grevillia Firecracker" Value="Grevillia Firecracker" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Silky Oak" Value="Silky Oak" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Waratah" Value="Waratah" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Rose Boronia" Value="Rose Boronia" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Tall Kangaroo Paw" Value="Tall Kangaroo Paw" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Rusty Gum" Value="Rusty Gum" />
                </asp:DropDownList>
            </div>
            <div>
                <asp:Label ID="lblUnitPrice" runat="server" Text="Unit Price: "></asp:Label>
                <asp:TextBox ID="txtUnitPrice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUnitPrice" ControlToValidate="txtUnitPrice" runat="server" ErrorMessage="Required Unit Price" Display="None"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvUnitPrice" runat="server" ErrorMessage="Invalid Unit Price" Display="None" ControlToValidate="txtUnitPrice" MinimumValue="0.10" MaximumValue="10000.00" Type="Double"></asp:RangeValidator>
            </div>
            <div>
                <asp:Label ID="lblQty" runat="server" Text="Quantity: "></asp:Label>
                <asp:TextBox ID="txtQty" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTxtQty" ControlToValidate="txtQty" runat="server" ErrorMessage="Required Quantity" Display="None"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvQty" runat="server" ErrorMessage="Invalid Quantity" Display="None" ControlToValidate="txtQty" MinimumValue="1" MaximumValue="1000" Type="Integer"></asp:RangeValidator>
            </div>
            <div>
                <asp:ValidationSummary ID="vsAdd" runat="server" />
            </div>
            <asp:Button ID="btnAddSubmit" OnClick="btnAddSubmit_Click" runat="server" Text="Submit" />
        </fieldset>
    </form>
</body>
</html>
