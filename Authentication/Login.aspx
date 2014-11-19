<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Main_Login" title="Login Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="content_block">
                <p style="font-size: large; font-family: 'Bradley Hand ITC'; color: #FF9966">
                    <b>If you are a member on our site please use the login form below:
            </b>
            </p>
     
            <br />
            <asp:Login ID="Login1" runat="server" CssClass="loginform" TitleText="">
     </asp:Login>
     <br />

            </div>
</asp:Content>

