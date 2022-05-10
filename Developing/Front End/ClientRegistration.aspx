﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientRegistration.aspx.cs" Inherits="IBS_Website.ClientRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Client Registration</title>
    <link rel="stylesheet" href="Resources\CSS\ClientRegistration.css"/>
    <link rel="icon" href="Resources/Images/ib.png" type="image/x-icon">
    <meta charset="utf-8">
</head>
<body>
   
<form  method="post" autocomplete="off" id="ClientRegForm" runat="server">
  <div class="container">
    <h1><center>Register</center></h1>
	<br>
	<asp:TextBox ID="UsernameR" runat="server" placeholder="Username*" name="name" pattern="[a-zA-Z0-9 ]+" title="Username can’t include special characters" required OnTextChanged="UsernameR_TextChanged" ></asp:TextBox>
	<br>
    <asp:TextBox ID="passwordR" runat="server" type="password" placeholder="Password*" name="psw" required OnTextChanged="passwordR_TextChanged"></asp:TextBox>
	<br>
    <asp:TextBox ID="passwordconfR" runat="server" type="password" placeholder="Confirm Password*" name="psw" oninput="check(this)" required OnTextChanged="passwordconfR_TextChanged"></asp:TextBox>
	<br>
	<script language='javascript' type='text/javascript'>
        function check(input) {
            if (input.value != document.getElementById('passwordR').value) {
                input.setCustomValidity('Passwords do not match');
            } else {
                // input is valid -- reset the error message
                input.setCustomValidity('');
            }
        }
    </script>
    <asp:TextBox ID="AccountNumR" runat="server" type="text" placeholder="Account Number*"  pattern="[0-9]+" title="An Account Number can't include character or special character" name="accountnumber" required OnTextChanged="AccountNumR_TextChanged"></asp:TextBox>
    <br>
	<asp:TextBox ID="EmailR" runat="server" type="email" placeholder="E-mail*" name="clientemail" title="The email format must be valid" required OnTextChanged="EmailR_TextChanged"></asp:TextBox> 
	<br>
	<asp:TextBox ID="PhoneNumR" runat="server" type="text" placeholder="Phone Number*" name="phone" pattern="[0-9]+" title="A phone can only have numbers" required OnTextChanged="PhoneNumR_TextChanged"></asp:TextBox>
	<br>
    <br>
	  <asp:Button ID="RegisterC" runat="server" Text="Register" class="RegC" OnClick="RegisterC_Click" ></asp:Button>
  </div>
</form>

</body>
</html>
