<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="addCategory.aspx.cs" Inherits="addCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="container">
         <div class = "panel panel-danger">
   <div class = "panel-heading">
      <h3 class = "panel-title">
             <b>Add Category</b>
      </h3>
   </div>
        <table style="border-collapse: separate; border-spacing: 10px;">
            <tr>
    
           <th> Category Name</th></tr>
             
  <tr> <td> 
       
       <asp:TextBox ID="CategoryName" runat="server"  class="form-control" required="true"/>

   </td><tr>
            
     <th >Description</th>

  </tr>
                <tr><td>
                    <asp:TextBox ID="Description" runat="server" TextMode="multiline" Columns="30" Rows="4" required="true" CssClass="form-control" Width="233px"></asp:TextBox>   
            </table>
        <asp:Button ID="Button1" runat="server" Text="Add" class="btn btn-primary" onclick="Button1_Click" Width="89px"  />
             
            <br/>
            
        </div>
             </div>
</asp:Content>

