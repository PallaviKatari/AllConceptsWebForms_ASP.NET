<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CascadingDropdownlist.aspx.cs" Inherits="AllConceptsWebForms.CascadingDropdownlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" DataTextField="CountryName" DataValueField="CountryID"></asp:DropDownList>
                <br />
                <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True" DataTextField="StateName" DataValueField="StateID"></asp:DropDownList>
                <br />
                <asp:DropDownList ID="DropDownList3" runat="server" DataTextField="CityName" DataValueField="CityID"></asp:DropDownList>
            </div>
        </div>
    </form>
</body>
</html>
