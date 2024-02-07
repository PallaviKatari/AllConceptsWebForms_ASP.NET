<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataControls.aspx.cs" Inherits="AllConceptsWebForms.DataControls" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        GRIDVIEW
    </div>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    <br />
    <hr />
    FORMVIEW<asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="empid" DataSourceID="SqlDataSource2" GridLines="Both">
        <EditItemTemplate>
            empid:
                <asp:Label ID="empidLabel1" runat="server" Text='<%# Eval("empid") %>' />
            <br />
            empname:
                <asp:TextBox ID="empnameTextBox" runat="server" Text='<%# Bind("empname") %>' />
            <br />
            designation:
                <asp:TextBox ID="designationTextBox" runat="server" Text='<%# Bind("designation") %>' />
            <br />
            mobile:
                <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <InsertItemTemplate>
            empname:
                <asp:TextBox ID="empnameTextBox" runat="server" Text='<%# Bind("empname") %>' />
            <br />
            designation:
                <asp:TextBox ID="designationTextBox" runat="server" Text='<%# Bind("designation") %>' />
            <br />
            mobile:
                <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            empid:
                <asp:Label ID="empidLabel" runat="server" Text='<%# Eval("empid") %>' />
            <br />
            empname:
                <asp:Label ID="empnameLabel" runat="server" Text='<%# Bind("empname") %>' />
            <br />
            designation:
                <asp:Label ID="designationLabel" runat="server" Text='<%# Bind("designation") %>' />
            <br />
            mobile:
                <asp:Label ID="mobileLabel" runat="server" Text='<%# Bind("mobile") %>' />
            <br />

        </ItemTemplate>
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
    </asp:FormView>
    <br />
    <hr />
    DETAILS VIEW<br />
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="empid" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="empid" HeaderText="empid" ReadOnly="True" SortExpression="empid" InsertVisible="False" />
            <asp:BoundField DataField="empname" HeaderText="empname" SortExpression="empname" />
            <asp:BoundField DataField="designation" HeaderText="designation" SortExpression="designation" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    </asp:DetailsView>
    <br />
    <hr />
    LISTVIEW AND DATA PAGER<br />
    <br />
    <asp:DataPager ID="DataPager3" runat="server" PagedControlID="ListView1">
        <Fields>
            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
            <asp:NumericPagerField />
            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
        </Fields>
    </asp:DataPager>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="empid" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <li style="background-color: #FFF8DC;">empid:
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("empid") %>' />
                <br />
                empname:
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("empname") %>' />
                <br />
                designation:
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("designation") %>' />
                <br />
                mobile:
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("mobile") %>' />
                <br />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #008A8C; color: #FFFFFF;">empid:
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("empid") %>' />
                <br />
                empname:
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("empname") %>' />
                <br />
                designation:
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("designation") %>' />
                <br />
                mobile:
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("mobile") %>' />
                <br />
                <asp:Button ID="Button1" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">empid:
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("empid") %>' />
                <br />
                empname:
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("empname") %>' />
                <br />
                designation:
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("designation") %>' />
                <br />
                mobile:
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("mobile") %>' />
                <br />
                <asp:Button ID="Button2" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="Button3" runat="server" CommandName="Cancel" Text="Clear" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
            <br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #DCDCDC; color: #000000;">empid:
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("empid") %>' />
                <br />
                empname:
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("empname") %>' />
                <br />
                designation:
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("designation") %>' />
                <br />
                mobile:
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("mobile") %>' />
                <br />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">empid:
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("empid") %>' />
                <br />
                empname:
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("empname") %>' />
                <br />
                designation:
                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("designation") %>' />
                <br />
                mobile:
                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("mobile") %>' />
                <br />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [Emp28]"></asp:SqlDataSource>
    <hr />
    <div class="auto-style1">
        <h2 style="color: black;" class="auto-style1">EMPLOYEE DETAILS</h2>
    </div>

    <asp:DataList ID="DataList2" runat="server" BackColor="#99CCFF" BorderColor="Blue" BorderStyle="Double" DataKeyField="empid" DataSourceID="SqlDataSource2" Font-Bold="True" Font-Italic="True" ForeColor="#6600FF" RepeatColumns="5" RepeatDirection="Horizontal">
        <ItemTemplate>
            empid:
                <asp:Label ID="empidLabel" runat="server" Text='<%# Eval("empid") %>' />
            <br />
            empname:
                <asp:Label ID="empnameLabel" runat="server" Text='<%# Eval("empname") %>' />
            <br />
            designation:
            <asp:Label ID="designationLabel" runat="server" Text='<%# Eval("designation") %>' />
            <br />
            mobile:
            <asp:Label ID="mobileLabel" runat="server" Text='<%# Eval("mobile") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormsConnectionString2 %>" ProviderName="<%$ ConnectionStrings:WebFormsConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [emp28] WHERE ([designation] = @designation)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DataList2" DefaultValue="Trainer" Name="designation" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>

</asp:Content>
