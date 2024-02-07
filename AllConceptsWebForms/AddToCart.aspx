<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="AllConceptsWebForms.AddToCart" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:GridView runat="server" ID="gvDetails" />
        <br />
        <asp:Button ID="btnAdd" Text="Add to Cart" runat="server" OnClick="Add" />
        <asp:Button ID="btnContinue" Text="Continue Shopping" runat="server" OnClick="Continue" />
        <br />
        <asp:GridView runat="server" ID="gvCartItems" />
    </div>
</asp:Content>

