<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="DL_Speakcore_Code_Challenge.Registration" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>CONTACT INFORMATION</h2>
    </div>

    <div class="row sc_row">
        <div class="col-md-12">
            <p>
                <b>First Name: *</b>
            </p>
            <p>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is required" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
            </p>


            
            <p>
                <b>Last Name: *</b>
            </p>
            <p>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is required" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
            </p>


            
            <p>
                <b>State: *</b>
            </p>
            <p>
                <asp:DropDownList ID="cmbState" runat="server"></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="State is required" ControlToValidate="cmbState"></asp:RequiredFieldValidator>
            </p>
            

            
            
            <p>
                Please provide your email address. All meeting correspondence will be sent via email.
            </p>

            <p>
                <b>Email: *</b>
            </p>
            <p>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail" runat="server" ErrorMessage="Emails must match"></asp:CompareValidator>
            </p>


            
            <p>
                <b>Confirm Email: *</b>
            </p>
            <p>
                <asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Email is required" ControlToValidate="txtConfirmEmail"></asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator2" ControlToCompare="txtConfirmEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="Emails must match"></asp:CompareValidator>
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
