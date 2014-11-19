<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="FindUs.aspx.vb" Inherits="About_FindUs" Title="Find Us Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content_block">
        <p id="fup1">
            Get directions to Pollys Pizza Place using the maps below!</p>
        <p id="fup2">
            <iframe width="640" height="480" frameborder="0" scrolling="no" marginheight="0"
                marginwidth="0" src="http://maps.google.co.uk/maps/ms?hl=en&amp;safe=off&amp;client=firefox-a&amp;ie=UTF8&amp;msa=0&amp;msid=216254862535549111580.00049ea0ac327faed506a&amp;ll=52.286354,-0.842857&amp;spn=0.012601,0.027466&amp;z=15&amp;iwloc=00049ea0ac38a7270e129&amp;output=embed">
            </iframe>
        </p>
        <p id="fup3">
            <a href="http://maps.google.co.uk/maps/ms?hl=en&amp;safe=off&amp;client=firefox-a&amp;ie=UTF8&amp;msa=0&amp;msid=216254862535549111580.00049ea0ac327faed506a&amp;ll=52.286354,-0.842857&amp;spn=0.012601,0.027466&amp;z=15&amp;iwloc=00049ea0ac38a7270e129&amp;source=embed" style="color:#CCCCCC">
                View Pollys Pizza Place in a larger map</a>
        </p>
    </div>
</asp:Content>
