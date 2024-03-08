<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckboxList.aspx.cs" Inherits="AllConceptsWebForms.CheckboxList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <table style="width: 70%;">

                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataTextField="empname"
                        DataValueField="empname" AutoPostBack="True" RepeatLayout="OrderedList" Width="432px">
                    </asp:CheckBoxList>

                    <asp:Label ID="lbmsg" runat="server"></asp:Label>

                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                        Text="Click here to show the Data" />

                </table>
            </div>
        </div>
    </form>
</body>
</html>
