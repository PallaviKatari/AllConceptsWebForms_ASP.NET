<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="AllConceptsWebForms.Customers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        body {
            font-family: Arial;
            font-size: 10pt;
        }

        table {
            border: 1px solid #ccc;
            border-collapse: collapse;
        }

            table th {
                background-color: #F7F7F7;
                color: #333;
                font-weight: bold;
            }

            table th, table td {
                padding: 5px;
                border: 1px solid #ccc;
            }
    </style>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound"
        DataKeyNames="CustomerId" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
        PageSize="3" AllowPaging="true" OnPageIndexChanging="OnPaging" OnRowUpdating="OnRowUpdating"
        OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added.">
        <Columns>
            <asp:TemplateField HeaderText="Name" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name") %>' Width="140"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Country" ItemStyle-Width="150">
                <ItemTemplate>
                    <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("Country") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtCountry" runat="server" Text='<%# Eval("Country") %>' Width="140"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"
                ItemStyle-Width="150" />
        </Columns>
    </asp:GridView>
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
        <tr>
            <td style="width: 150px">Name:<br />
                <asp:TextBox ID="txtName" runat="server" Width="140" />
            </td>
            <td style="width: 150px">Country:<br />
                <asp:TextBox ID="txtCountry" runat="server" Width="140" />
            </td>
            <td style="width: 150px">
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" EnableTheming="false" />
            </td>
        </tr>
    </table>
</asp:Content>
