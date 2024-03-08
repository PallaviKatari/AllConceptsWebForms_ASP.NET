<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="AllConceptsWebForms.Email" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <table align="center" width="60%">
            <tr>
                <td>to</td>
                <td>
                    <asp:TextBox ID="to" runat="server" Width="99%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorTo" runat="server" ErrorMessage="Field is Required" ForeColor="
Red" ControlToValidate="to"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ExpValidatorTo" runat="server" ErrorMessage="Email is invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="to"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <!-- ... (similar formatting for other form elements) ... -->
        </table>
    </form>
</body>
</html>
