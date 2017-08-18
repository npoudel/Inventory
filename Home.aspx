<%@ Page  EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

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
            <tr><td>
                <br />
                </td></tr>
                
                
           <tr><td>     <asp:TextBox ID="SearchBox" runat="server" CssClass="form-control"></asp:TextBox></td>
              <td>  <asp:Button ID="searchbtn" runat="server" Text="Search" CssClass="btn btn-default" OnClick="searchbtn_Click" /></td>
            </tr></table>
        
        <asp:GridView ID="GridView1" margin="0" runat="server" AutoGenerateColumns="false" CssClass="table table-hover" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
             <Columns >  
                        <asp:BoundField DataField="ProdName" HeaderText="Product Name" />  
                        <asp:BoundField DataField="ProdDescription" HeaderText="Description" />  
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" /> 
              <asp:TemplateField ShowHeader="False">
                  
            <ItemTemplate>
                <asp:HyperLink runat="server" ID="btnGo" Text="Add Product" NavigateUrl='<%# "updateProduct.aspx?id=" + Eval("P_ID") %>' />
            </ItemTemplate>
        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="true" ControlStyle-CssClass="ico del" />

             </Columns> 
        </asp:GridView>

	</div>
</div>

</asp:Content>


