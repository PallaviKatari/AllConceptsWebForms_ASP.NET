<%@ Page Title="Themes" Theme="default" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Themes.aspx.cs" Inherits="AllConceptsWebForms.Themes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Theme Demo Page</h1>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    </div>
</asp:Content>
