<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="ManageProducts.aspx.cs" Inherits="ManageProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <div id="navigation">
			<ul>
			    <li><a href="Home.aspx" ><span>Home</span></a></li>
			    <li><a href=" ManageProducts.aspx" class="active"><span>Manage Products</span></a></li>
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
    
					
					
					
					
						
						
						
								
						
							<input type="button " class="btn btn-success" onclick="location.href='addProducts.aspx';" value="Add New Product" />
                        
							<input type="button" class="btn btn-primary" value="Add New Category" />
						
						
					
				</div>
       </div>
</asp:Content>

