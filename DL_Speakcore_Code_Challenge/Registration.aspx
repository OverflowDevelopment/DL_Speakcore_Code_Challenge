<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="DL_Speakcore_Code_Challenge.Registration" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>CONTACT INFORMATION</h2>
    </div>

    <div class="row sc_row">
        <div class="col-md-12">
            <p>
                <b>
                    <asp:Label ID="Label1" runat="server" Text="First Name: *"></asp:Label>
                </b>
            </p>
            <p>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is required" ControlToValidate="txtFirstName" CssClass="sc_dark-red"></asp:RequiredFieldValidator>
            </p>


            
            <p>
                <b>
                    <asp:Label ID="Label2" runat="server" Text="Last Name: *"></asp:Label>
                </b>
            </p>
            <p>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is required" ControlToValidate="txtLastName" CssClass="sc_dark-red"></asp:RequiredFieldValidator>
            </p>


            
            <p>
                <b>
                    <asp:Label ID="Label3" runat="server" Text="State: *"></asp:Label>
                </b>
            </p>
            <p>
                <asp:DropDownList ID="cmbState" runat="server" DataSourceID="SqlDataSource1" DataTextField="StateCode" DataValueField="StateID"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SpeakcoreConnectionString %>" SelectCommand="SELECT [StateID], [StateCode] FROM [State]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="State is required" ControlToValidate="cmbState"></asp:RequiredFieldValidator>
            </p>
            

            
            
            <p>
                Please provide your email address. All meeting correspondence will be sent via email.
            </p>

            <p>
                <b>
                    <asp:Label ID="Label4" runat="server" Text="Email: *"></asp:Label>
                </b>
            </p>
            <p>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmail" CssClass="sc_dark-red"></asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail" runat="server" ErrorMessage="Emails must match" CssClass="sc_dark-red"></asp:CompareValidator>
            </p>


            
            <p>
                <b>
                    <asp:Label ID="Label5" runat="server" Text="Confirm Email: *"></asp:Label>
                </b>
            </p>
            <p>
                <asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Email is required" ControlToValidate="txtConfirmEmail" CssClass="sc_dark-red"></asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator2" ControlToCompare="txtConfirmEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="Emails must match" CssClass="sc_dark-red"></asp:CompareValidator>
            </p>

            
            <p>
                <asp:CheckBox ID="chkNewsletter" Text="Subscribe to Newsletter" runat="server" />
            </p>



            <p style="text-align:right;">
                <asp:Button ID="btnContinue" runat="server" Text="Continue" OnClick="btnContinue_Click" />
            </p>
        </div>
    </div>

</asp:Content>
