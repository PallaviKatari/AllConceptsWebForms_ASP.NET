<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Charts.aspx.cs" Inherits="AllConceptsWebForms.Charts" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Chart ID="Chart1" runat="server" Height="400px" Width="400px" Palette="Excel">
        <Titles>
            <asp:Title ShadowOffset="3" Name="Items" />
        </Titles>
        <Legends>
            <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default" LegendStyle="Row" />
        </Legends>
        <Series>
            <asp:Series Name="Default" />
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1" BorderWidth="0" />
        </ChartAreas>
    </asp:Chart>
</asp:Content>

