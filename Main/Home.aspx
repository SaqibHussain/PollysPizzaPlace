<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="Home.aspx.vb" Inherits="Home" Title="Home Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content_block_HP">
        <p id="hpp1">
            Hey there, pizza lover!</p>
        <p id="hpp1">
            Welcome to Pollys Pizza Place</p>
        <p id="hpp2">
            Why not?</p>
        <p id="hpp3">
            Check out our offers for kids...
            <a href="../Menu/Menu.aspx"><img src="../images/Kidseatfree.png" /></a>
            
        </p>
        <p id="hpp4">
            Get yourself a meal deal...
            <a href="../Menu/Menu.aspx"><img src="../images/mealdeal.png" /></a>
        </p>
        <p id="hpp5">
            Have Double the fun...
            <a href="../Menu/Menu.aspx"><img src="../images/doubledeal.png" /></a>
        </p>
        <p id="hpp6">
            Feed the whole family...
            <a href="../Menu/Menu.aspx"><img src="../images/feedthewholefamily.png" /></a>
        </p>
        <br />
    </div>
</asp:Content>
