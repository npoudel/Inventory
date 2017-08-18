<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="addProducts.aspx.cs" Inherits="addProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="container">
        <div class = "panel panel-danger">
   <div class = "panel-heading">
      <h3 class = "panel-title">
         <b>Add Products</b>
      </h3>
   </div>
   
   <div class = "panel-body">
        <table style="border-collapse: separate; border-spacing: 10px;">
            
    
          
                   <tr>
                       <th>Supplier:<a href="addSupplier.aspx" ><img src = "css/images/plus.png"   ></a></th>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td><asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                           </asp:DropDownList>
                       </td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <th>Product Name:</th>
                       <td>
                           <asp:TextBox ID="ProdName" runat="server" CssClass="form-control"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <th>Category :<a href="addCategory.aspx" ><img src = "css/images/plus.png"   ></a></th>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td><asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                           </asp:DropDownList>
                       </td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <th>Product Information:</th>
                       <td>
                           <asp:TextBox ID="ProdInfo" runat="server" TextMode="MultiLine" Rows="5" Columns="30" CssClass="form-control"></asp:TextBox>
                   </tr>
                   <tr>
                       <th>Quantity:<asp:TextBox ID="Quantity" runat="server" CssClass="form-control"></asp:TextBox>
                       </th>
                       <th>PPI:<asp:TextBox ID="Price" runat="server" CssClass="form-control"></asp:TextBox>
                       </th>
                   </tr>
                   <tr>
                       <th>Image:</th>
                       <th>
                           <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                       </th>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>
                           <asp:Button ID="Button1" runat="server" Text="Add"  class="btn btn-primary"    OnClick="Button1_Click" Width="89px" />
                       </td>
                   </tr>
               </table>
        </div>
            </div>
        </div>
              

       </asp:Content>

