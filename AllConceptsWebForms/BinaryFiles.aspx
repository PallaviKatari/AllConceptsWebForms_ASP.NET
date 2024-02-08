<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BinaryFiles.aspx.cs" Inherits="AllConceptsWebForms.BinaryFiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" />

        <br />

    </div>
    <p>

        <asp:Button ID="btnUpload" runat="server" Text="Upload"
            OnClick="btnUpload_Click" />

    </p>
    <p>

        <asp:Label ID="lblMessage" runat="server" Text=""
            Font-Names="Arial"></asp:Label>
    </p>
    <p>
        &nbsp;
    </p>
    <hr />
    <div>
        &nbsp;Wizard Control
    <asp:Wizard ID="Wizard1" runat="Server" BackColor="#C4E6E4" BorderWidth="1px" CellPadding="4" CellSpacing="2"
        SideBarStyle-VerticalAlign="Top" OnActiveStepChanged="StepChanged" OnFinishButtonClick="FinishButtonClicked">

        <HeaderTemplate>
            Example of Wizard Control<br />
            <i><%= "Step " + (Wizard1.ActiveStepIndex + 1) + " of " + Wizard1.WizardSteps.Count%></i>
        </HeaderTemplate>
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="Personal Information" StepType="start">
                <b>Name</b>
                <asp:TextBox ID="txtName" runat="Server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Req1" runat="Server" ControlToValidate="txtName" Text="Please enter name."></asp:RequiredFieldValidator>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" Title="Contact Information" StepType="Step">
                <table>
                    <tr>
                        <td><b>Contact Number</b></td>
                        <td>
                            <asp:TextBox ID="txtNumber" runat="Server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Email</b></td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="Server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep3" runat="server" Title="Address Details" StepType="finish">
                <table>
                    <tr>
                        <td><b>Address</b></td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="Server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><b>City</b></td>
                        <td>
                            <asp:TextBox ID="txtCity" runat="Server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep4" runat="Server" Title="Thanks" StepType="complete">
                Thanks, Your details are as follows .... >>>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    </div>

    <br />
    <br />

    <asp:Wizard ID="Wizard2" runat="server" OnFinishButtonClick="Wizard2_FinishButtonClick" OnActiveStepChanged="Wizard2_ActiveStepChanged">
        <WizardSteps>

            <asp:WizardStep ID="WizardStep5" runat="server" Title="Employee ID" StepType="Start">
                <b>ID:</b>
                <asp:TextBox ID="TextBox1" runat="Server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="Server" ControlToValidate="TextBox1" Text="Please enter ID."></asp:RequiredFieldValidator>
            </asp:WizardStep>

            <asp:WizardStep ID="WizardStep6" runat="server" Title="Employee Name" StepType="Step">
                <b>Name:</b>
                <asp:TextBox ID="TextBox2" runat="Server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="Server" ControlToValidate="TextBox2" Text="Please enter name."></asp:RequiredFieldValidator>
            </asp:WizardStep>

            <asp:WizardStep ID="WizardStep7" runat="server" Title="Designation" StepType="Finish">
                <b>Designation:</b>
                <asp:TextBox ID="TextBox3" runat="Server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="Server" ControlToValidate="TextBox3" Text="Please enter designation."></asp:RequiredFieldValidator>
            </asp:WizardStep>

            <asp:WizardStep ID="WizardStep8" runat="Server" Title="Thanks" StepType="Complete">
                Thanks, Your details are as follows .... >>>
            </asp:WizardStep>

        </WizardSteps>
    </asp:Wizard>

    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

    <asp:Wizard ID="Wizard3" runat="server">
        <WizardSteps>
            <asp:WizardStep runat="server" Title="Step 1">
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step 2">
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
</asp:Content>
