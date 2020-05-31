<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="DL_Speakcore_Code_Challenge.Registration" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
<script type="text/javascript">
    $(document).ready(function () {
        BindEvents();
    });

    function ValidatorUpdateDisplay(val)
    {
        if (typeof (val.display) == "string")
        {
            if (val.display == "None")
            {
                return;
            }
            if (val.display == "Dynamic")
            {
                val.style.display = val.isvalid ? "none" : "inline";
                return;
            }
        }

        val.style.visibility = val.isvalid ? "hidden" : "visible";

        //TODO:
        //* Update label classes
        if (val.isvalid)
        {
            $("#" + val.controltovalidate).removeClass("sc_light-red");
        }
        else
        {
            $("#" + val.controltovalidate).addClass("sc_light-red");
        }
    }

    function BindEvents() {
        //TODO:
        //* Assign Keydown / Change event handlers for input controls to have real-time
    }
</script>

    <div class="jumbotron">
        <h2>CONTACT INFORMATION</h2>
    </div>

    <div class="row sc_row">
        <div class="col-md-12">
            <p>
                <b>
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name: *"></asp:Label>
                </b>
            </p>
            <p>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    ID="rfvFirstName" 
                    runat="server"
                    ControlToValidate="txtFirstName">
                </asp:RequiredFieldValidator>
            </p>


            
            <p>
                <b>
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name: *"></asp:Label>
                </b>
            </p>
            <p>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator 
                    ID="rfvLastName" 
                    runat="server"
                    ControlToValidate="txtLastName">
                </asp:RequiredFieldValidator>
            </p>


            
            <p>
                <b>
                    <asp:Label ID="lblState" runat="server" Text="State: *"></asp:Label>
                </b>
            </p>
            <p>
                <asp:DropDownList ID="cmbState" runat="server" DataSourceID="SqlDataSource1" DataTextField="StateCode" DataValueField="StateID" AppendDataBoundItems="True">
                    <asp:ListItem Value="-1">Select State</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SpeakcoreConnectionString %>" SelectCommand="SELECT [StateID], [StateCode] FROM [State]"></asp:SqlDataSource>
                
                <asp:RequiredFieldValidator 
                    ID="rfvState" 
                    runat="server"
                    ControlToValidate="cmbState" 
                    CssClass="sc_dark-red" 
                    InitialValue ="-1"></asp:RequiredFieldValidator>
            </p>
            

            
            
            <p>
                Please provide your email address. All meeting correspondence will be sent via email.
            </p>

            <p>
                <b>
                    <asp:Label ID="lblEmail" runat="server" Text="Email: *"></asp:Label>
                </b>
            </p>
            <p>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><asp:CompareValidator ID="cvEmail" ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail" runat="server" ErrorMessage="Emails must match" CssClass="sc_dark-red"></asp:CompareValidator>
                
                <asp:RequiredFieldValidator 
                    ID="rfvEmail" 
                    runat="server"
                    ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            </p>


            
            <p>
                <b>
                    <asp:Label ID="lblConfirmEmail" runat="server" Text="Confirm Email: *"></asp:Label>
                </b>
            </p>
            <p>
                <asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox><asp:CompareValidator ID="cvCompareEmail" ControlToCompare="txtConfirmEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="Emails must match" CssClass="sc_dark-red"></asp:CompareValidator>
                
                <asp:RequiredFieldValidator 
                    ID="rfvConfirmEmail" 
                    runat="server"
                    ControlToValidate="txtConfirmEmail">
                </asp:RequiredFieldValidator>
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