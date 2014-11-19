<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="Messages.aspx.vb" Inherits="Hidden_Messages" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content_block">
        <p id="mpp1">
            View recent messages left by users</p>
        <p>
            <asp:Xml ID="Xml1" runat="server" DocumentSource="comments.xml" TransformSource="Messages.xslt"></asp:Xml>
        </p>
    </div>
</asp:Content>
