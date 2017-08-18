<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="addSupplier.aspx.cs" Inherits="addSupplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="container">
         <div class = "panel panel-danger">
   <div class = "panel-heading">
      <h3 class = "panel-title">
             <b>Add Supplier</b>
      </h3>
   </div>
        <table style="border-collapse: separate; border-spacing: 10px;">
            <tr>
    
           <th> Code</th></tr>
             
  <tr> <td> 
       
       <asp:TextBox ID="Code" runat="server"  class="form-control" required="true"/>

   </td></tr>
            
    <tr> <th >Company Name 
        <asp:TextBox ID="CompanyName" runat="server"  class="form-control" required="true" /></th></tr>
            

            
    <tr><th>Address 
    <asp:TextBox ID="Address" runat="server"  class="form-control" required="true"/></th></tr>

    <tr><th>Email
    <asp:TextBox ID="Email" runat="server"  class="form-control col-md-8" required="true"  TextMode="Email" ValidateRequestMode="Enabled"/></th></tr>

           <tr><th>Contact
    <asp:TextBox ID="Contact" runat="server"  class="form-control " required="true"/> </th></tr>
            </table>
        <asp:Button ID="Button1" runat="server" Text="Add" class="btn btn-primary" onclick="Button1_Click" Width="89px"  />
             
            <br/>
            
        </div>
             </div>
        
</asp:Content>

