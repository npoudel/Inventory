<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="updateProduct.aspx.cs" Inherits="updateProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <div id="navigation">
			<ul>
			    <li><a href="Home.aspx" class="active"><span>Home</span></a></li>
			    <li><a href="ManageProducts.aspx"><span>Manage Products</span></a></li>
			    <li><a href="Invoice.aspx"><span>Invoice</span></a></li>
			    <li><a href="#"><span>Photo Gallery</span></a></li>
			    <li><a href="#"><span>Products</span></a></li>
			    <li><a href="#"><span>Services Control</span></a></li>
			</ul>
		</div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="container">
	<div class="shell">
		<table>
            <tr>
                <th>
                    Add <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </th>
                </tr>
            <tr><td>Quantity</td>
               <td>
                   <asp:TextBox ID="TextBox1" runat="server" Enabled="false"></asp:TextBox>
                </td>
                </tr>
            <tr>
                <td>Description</td>
               <td>
                   <asp:TextBox ID="TextBox2" runat="server" Enabled="false"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>Supplier:</td>
               <td>
                   <asp:TextBox ID="TextBox3" runat="server" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Add Quantity:</td>
               <td>
                   <asp:TextBox ID="TextBox4" runat="server" class="form-control" OnTextChanged="TextBox4_TextChanged" AutoPostBack="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Total:</td>
               <td>
                   <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Insert" type="submit" CssClass="btn btn-block" OnClick="Button1_Click" />
                </td>
            </tr>

        </table>
        
    </div>
    </div>


</asp:Content>

