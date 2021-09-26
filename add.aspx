<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Purchase</title>
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
                     <asp:ListItem Enabled="True" Selected="False" Text="Eucalyptus Caesia" Value="eucalyptusCaesia" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Eucalyptus Pauciflora" Value="eucalyptusPauciflora" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Corymbia Ficifolia" Value="corymbiaFicifolia" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Callistemon Citrinus" Value="callistemonCitrinus" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Hardenbergia Violacea" Value="hardenbergiaViolacea" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Poa Labillardierei" Value="poaLabillardierei" />    
                     <asp:ListItem Enabled="True" Selected="False" Text="Syzygium Smithii" Value="syzygiumSmithii" /> 
                     <asp:ListItem Enabled="True" Selected="False" Text="Correa Federation Bell X Mannii" Value="correaFederationBellXMannii" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Grevillea Alpina X Rosmarinifolia" Value="grevilleaAlpinaXRosmarinifolia" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Grevillia Robusta" Value="grevilliaRobusta" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Telopea Speciosissima" Value="telopeaSpeciosissima" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Boronia Serrulata" Value="boroniaSerrulata" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Anigozanthos Flavidus" Value="anigozanthosFlavidus" />
                     <asp:ListItem Enabled="True" Selected="False" Text="Angophora Costata" Value="angophoraCostata" />
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
