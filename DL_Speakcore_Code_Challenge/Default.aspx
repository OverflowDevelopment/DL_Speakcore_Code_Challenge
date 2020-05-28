<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DL_Speakcore_Code_Challenge._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>LOGIN</h2>
    </div>

    <div class="row sc_row">
        <div class="col-md-12">
            <p>
                Please enter the case sensitive password from your official invitation.
            </p>
            <p>
                <b>Password:</b>
            </p>
            <p>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </p>
            <p style="text-align:right;">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </p>
        </div>
    </div>

</asp:Content>
