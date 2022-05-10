﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditClientStepOne.aspx.cs" Inherits="IBS_Website.EditClientStepOne" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Client</title>
<link rel="stylesheet" href="Resources/CSS/EditClientStepOne.css">
    <link rel="icon" href="Resources/Images/ib.png" type="image/x-icon">
    <style>
        
.bg {
    background-image: url("Resources/Images/AddClientPic.jpg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
    </style>
</head>
<body class="bg">
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
    <form action="" method="post" autocomplete="off">
  <div class="container">
    <h1><center>Edit Client</center></h1>
	<br>
	<input type="text" placeholder="Client username*" name="name" pattern="[a-zA-Z0-9 ]+" title="Username can’t include special characters" required>
	<br>
<br>
     <button type="submit" class="signupbtn">Edit</button>
	  
  </div>
</form>
</body>
</html>
