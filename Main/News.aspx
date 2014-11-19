<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="News.aspx.vb" Inherits="News" Title="News Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content_block">
        <p id="npp1">
            News.... Keep yourself updated in the world of Polly</p>
        <p id="npp2">
            <asp:Xml ID="Xml1" runat="server" DocumentSource="News.xml" TransformSource="News.xslt"></asp:Xml>
        </p>
    </div>
</asp:Content>
