<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="AllConceptsWebForms.Products" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:GridView runat="server" ID="gvProducts" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                <asp:HyperLinkField DataNavigateUrlFormatString="~/AddToCart.aspx?Id={0}" DataNavigateUrlFields="ProductID"
                    Text="View Details" HeaderText="Details" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
