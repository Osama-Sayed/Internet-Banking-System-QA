﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TransferMoney.aspx.cs" Inherits="IBS_Website.TransferMoney" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Transfer Money</title>
    <link rel="icon" href="Resources/Images/ib.png" type="image/x-icon">
    <meta charset="utf-8">
    <link rel="stylesheet" href="Resources\CSS\TransferMoney.css">
</head>
<body>
    
    <form id="TMForm" runat="server" target="_top" method="post" autocomplete="off" >
  <div class="container">
    <h1><center>Transfer Money</center></h1>
	<br>
	<asp:TextBox ID="SourceAN" runat="server" type="text" placeholder="Source Account Number*" name="Sourceaccno" pattern="[0-9]+" title="An Source Account Number can't include character or special character" required></asp:TextBox>
	<br>
    <asp:TextBox ID="DestinationAN" runat="server" type="text" placeholder="Destination Account Number*" name="Destinationaccno" pattern="[0-9]+" title="A Destination Account Number can't include character or special character" required></asp:TextBox>
	<br>
	<asp:TextBox ID="Amount" runat="server" type="text" placeholder="Amount*" name="Amount" pattern="[0-9]+" title="An Amount can't have characters or special character" required></asp:TextBox>
	<br>
	<asp:DropDownList ID="CurrencyDDL" runat="server" class="currency" name="currency">

    <asp:ListItem Value="">Select Currency</asp:ListItem>
    <asp:ListItem value="EGP">Egyptian Pound</asp:ListItem>
    <asp:ListItem value="EUR">Euro</asp:ListItem>    
    <asp:ListItem value="USD">US Dollar</asp:ListItem>
 
    </asp:DropDownList>
<br>
<br>
      <asp:Button ID="TransferM" runat="server" Text="Transfer" class="TransferBtn"></asp:Button>
  </div>
</form>
</body>
</html>
