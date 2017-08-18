<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Invoice.aspx.cs" Inherits="Invoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <div id="navigation">
			<ul>
			    <li><a href="Home.aspx" ><span>Home</span></a></li>
			    <li><a href="ManageProducts.aspx"><span>Manage Products</span></a></li>
			    <li><a href="Invoice.aspx" class="active"><span>Invoice</span></a></li>
			    <li><a href="#"><span>Photo Gallery</span></a></li>
			    <li><a href="#"><span>Products</span></a></li>
			    <li><a href="#"><span>Services Control</span></a></li>
			</ul>
		</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div id="container">
         <div class = "panel panel-danger">
   <div class = "panel-heading">
      <h3 class = "panel-title">
         <b>Add Products</b>
      </h3>
   </div>
         <div class="shell">

    
		     <table style="width: 100%">
                 <tr>
                     <th>Invoice No:</th>
                     <td>
                         <asp:TextBox ID="TextBox1" runat="server" Width="200px" class="form-control" Enabled="false"  ></asp:TextBox>
                     </td>
                    
                     
                     <td>
                         &nbsp;</td>
                     
                        <td style="width: 174px"> <asp:Button ID="generation" runat="server" Text="Generate" OnClick="generation_Click" /></td>
                     <th>Date:</th>
                     <td style="width: 226px">
                         <asp:Calendar ID="Calendar1" runat="server" Visible="false" Height="107px" OnSelectionChanged="Calendar1_SelectionChanged" Width="130px"></asp:Calendar>
                         <asp:TextBox ID="TextBox2" runat="server" class="form-control " Width="192px"></asp:TextBox>
                         <asp:Button ID="Button1" runat="server" CssClass="add-button" Height="30px" OnClick="Button1_Click" Text="Calender" Width="90px" />
                     </td>
                 </tr>
                 <tr>
                     <th>Department Name:</th>
                     <td>
                         <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" class="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                         </asp:DropDownList>
                     </td>
                     <th>&nbsp;</th>
                     <th style="width: 174px">Department Code:</th>
                     <td style="width: 226px">
                         <asp:TextBox ID="TextBox3" runat="server" class="form-control" ></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <th>&nbsp;</th>
                     <td>
                         &nbsp;</td>
                     <th>&nbsp;</th>
                     <th style="width: 174px">&nbsp;</th>
                     <td style="width: 226px">
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <th>Requested Date:</th>
                    <td style="width: 226px">
                         <asp:Calendar ID="Calendar2" visible="false" runat="server" Height="107px" OnSelectionChanged="Calendar2_SelectionChanged" Width="130px"></asp:Calendar>
                         <asp:TextBox ID="TextBox4" runat="server" class="form-control " Width="192px"></asp:TextBox>
                         <asp:Button ID="Button4" runat="server" CssClass="add-button" Height="30px" OnClick="Button4_Click" Text="Calender" Width="90px" />
                     </td>
                     <td>&nbsp;</td>
                     <td style="width: 174px">&nbsp;</td>
                     <td style="width: 226px">&nbsp;</td>
                 </tr>
                 <tr>
                     <th>&nbsp;</th>
                     <td>
                         &nbsp;</td>
                     <td>&nbsp;</td>
                     <td style="width: 174px">&nbsp;</td>
                     <td style="width: 226px">&nbsp;</td>
                 </tr>
                 <tr>
                     <th>Item Name:</th>
                     <td>
                         <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                     </td>
                     
                     <th>&nbsp;</th>
                     

                     <th style="width: 174px">Item Code:</th>
                     <td style="width: 226px">
                         <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <th style="height: 21px"></th>
                     <td style="height: 21px">
                         </td>
                     <th style="height: 21px"></th>

                     <th style="width: 174px; height: 21px"></th>
                     <td style="width: 226px; height: 21px;">
                         </td>
                 </tr>
                  <tr>
                     <th>Quantity Available:</th>
                     <td>
                         <asp:TextBox ID="TextBox6" runat="server" Enabled="false"></asp:TextBox>
                     </td>
                      <td>
                          &nbsp;</td>
                    
                      <td style="width: 174px">
                          <strong>Description</strong></td>
                      <td>
                          <asp:TextBox ID="TextBox10" runat="server" TextMode="multiline" CssClass="form-control"></asp:TextBox></td>
                      </tr>


                      <tr>
                          <th>Unit Price:</th>
                     <td>
                         <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" OnTextChanged="TextBox8_TextChanged" AutoPostBack="true"></asp:TextBox>
                      </td>
                          
                          
                      <td>

                       </td>
                    
                      <td style="width: 174px">
                          &nbsp;</td>


                    
                 </tr>
                  <tr>
                      <th>Quantity Required:</th>
                     <td>
                         <asp:TextBox ID="TextBox7" runat="server" class="form-control" OnTextChanged="TextBox7_TextChanged" ></asp:TextBox>
                     </td>
                     <th>&nbsp;</th>
                     <td style="width: 174px">
                         <strong>Amount:</strong></td>
                      <td>
                          <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
                      </td>
                    
                      <td>
                          &nbsp;</td>
                    
                 </tr>
                  <tr>
                     
                      <td>
                          &nbsp;</td>
                    
                      <td>
                          <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" />
                      &nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Button ID="Button3" runat="server" Text="Print" />
&nbsp;&nbsp;&nbsp;
                      </td>
                    
                 </tr>
             </table>

    
		 </div>
       </div>
         </div>

</asp:Content>

