<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="Stats.aspx.vb" Inherits="Stats" Title="Stats Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content_block">
        <p id="spp1">
            Check below for our site's stats!
        </p>
        <p id="spp2">
            There have been <span id="sps1">
                <asp:Label ID="Label1" runat="server"></asp:Label></span> vists to our website.
        </p>
        <p id="spp2">
            There have been a total of <span id="sps1">13,567</span> Pizzas ordered from our
            site!.
        </p>
    </div>
</asp:Content>
