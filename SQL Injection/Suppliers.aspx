<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Suppliers.aspx.cs" Inherits="SQL_Injection.Suppliers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <h2>Suppliers and Products</h2>
    <br/>
    
  <asp:GridView ID="gv_supplier" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px"   > 
    <Columns>
        <asp:HyperLinkField  ItemStyle-HorizontalAlign="Left" HeaderText="Company Name" DataNavigateUrlFields="SupplierID" DataNavigateUrlFormatString="Suppliers.aspx?SupplierId={0}" DataTextField="CompanyName" />
        <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="ContactName" HeaderText="Contact Name" />
        <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="Country" HeaderText="Country" />
    </Columns>
      <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
      <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
      <RowStyle BackColor="White" ForeColor="#330099" />
      <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
      <SortedAscendingCellStyle BackColor="#FEFCEB" />
      <SortedAscendingHeaderStyle BackColor="#AF0101" />
      <SortedDescendingCellStyle BackColor="#F6F0C0" />
      <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>

   <asp:GridView ID="gv_products" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
    <Columns>
        <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="ProductName" HeaderText="Product Name" />
        <asp:BoundField  ItemStyle-HorizontalAlign="Center" DataField="QuantityPerUnit" HeaderText="Quantity Per Unit" />
        <asp:BoundField  ItemStyle-HorizontalAlign="Center" DataField="UnitPrice" HeaderText="Unit Price" />
    </Columns>
       <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
       <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
       <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
       <RowStyle BackColor="White" ForeColor="#330099" />
       <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
       <SortedAscendingCellStyle BackColor="#FEFCEB" />
       <SortedAscendingHeaderStyle BackColor="#AF0101" />
       <SortedDescendingCellStyle BackColor="#F6F0C0" />
       <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>



</asp:Content>
