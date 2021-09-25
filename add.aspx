<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <h1>Add Purchase</h1>
    <form id="AddPurchaseForm" runat="server">
        <fieldset>
            <legend>Purchase Form</legend>
            <br />
            <div>
                <asp:Label ID="lblFullName" runat="server" Text="Full Name: "></asp:Label>
                <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblEmailAddress" runat="server" Text="Email Address: "></asp:Label>
                <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
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
            </div>
            <div>
                <asp:Label ID="lblQty" runat="server" Text="Quantity: "></asp:Label>
                <asp:TextBox ID="txtQty" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        </fieldset>



    </form>
</body>
</html>
