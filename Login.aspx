<%@ Page EnableEventValidation="false" Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css2/StyleSheet.css" rel="stylesheet" />
    <link href="css1/bootstrap.css" rel="stylesheet" />
    <link href="css1/bootstrap.min.css" rel="stylesheet" />
</head>
<body>

<div id="wrapper">

	<!--<form name="login-form" class="login-form"  method="post">-->
	<div class="login-form">
		<div class="header">
            <img src="css2/images/tulogo.png" height="75" width="100"/><span class="h1" spellcheck="True" style="color: #3366FF; font-style: normal; font-variant: normal; font-weight: 700; font-size: medium;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Paschimanchal Campus&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
               </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="color: #3366FF; font-style: normal; font-variant: normal; font-weight: 700; font-size: medium;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Inventory System<br />
            </span>

		<h1>Login Form</h1>
		<span>Fill out the form below to login to access the inventory system.</span>
		</div>
	
		
            <form runat="server">
                <div class="content">
            <b>UserType:</b><asp:DropDownList ID="DropDownList1" runat="server" class="form-control" ></asp:DropDownList> <br />
         <asp:TextBox ID="username" runat="server" Class="input username" placeholder="Username"></asp:TextBox>   
		<div class="user-icon"></div>
        <asp:TextBox ID="password" runat="server" placeholder="Password" CssClass="input password" TextMode="Password" ></asp:TextBox>
		<div class="pass-icon"></div>		
                
		
           </div>
		<div class="footer">
          <table> 
     <tr><td>   <asp:Button ID="Button1" runat="server" Text="Login" CssClass="button" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Text="Cancel"  class="register" OnClick="Button2_Click"/></td></tr>
              </table>
            </div>
               </form>
		</div>
	
	</div>
        
    

    
<div class="gradient"></div>



    
</body>
   
</html>
