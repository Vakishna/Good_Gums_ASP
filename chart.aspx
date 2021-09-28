﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chart.aspx.cs" Inherits="chart" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chart</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Abel&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="styles.css" />
</head>
<body>
    <nav>
        <ul>
          <li><a href="index.aspx">Home</a></li>
          <li><a href="add.aspx">Add</a></li>
          <li><a href="invoice.aspx">Invoice</a></li>
          <li><a href="stocktake.aspx">Stocktake</a></li>
          <li><a class="active" href="chart.aspx">Chart</a></li>
        </ul>
    </nav>

    <form id="form1" runat="server">
        <div>

        </div>
    </form>
</body>
</html>
