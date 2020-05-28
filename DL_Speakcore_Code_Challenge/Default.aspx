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
                <input id="txtPassword" type="text" />
            </p>
            <p style="text-align:right;">
                <input id="txtLogin" type="button" value="Login" />
            </p>
        </div>
    </div>

</asp:Content>
