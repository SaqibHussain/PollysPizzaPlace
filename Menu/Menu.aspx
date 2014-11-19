<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="Menu.aspx.vb" Inherits="Menu_Menu" Title="Menu Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content_block">
        <p id="mp1">
            Pizzas!
        </p>
        <p>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/pollysmenu.mdb"
                SelectCommand="SELECT * FROM [PizzaMenu]"></asp:AccessDataSource>
            <asp:GridView ID="mpGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1"
                EmptyDataText="There are no data records to display." AllowSorting="True" BorderStyle="None" CellPadding="4"
                GridLines="None" CssClass="mp2" DataKeyNames="ID">
                <Columns>
                    <asp:CommandField SelectText="More Info" ShowSelectButton="True">
                        <ItemStyle CssClass="center" Width="50px"/>
                    </asp:CommandField>
                    <asp:BoundField DataField="Name" SortExpression="Name" 
                        HeaderText="Name" ReadOnly="True">
                        <HeaderStyle ForeColor="#CCCCCC" />
                        <ItemStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Description" HeaderText="Description" 
                        SortExpression="Description" >
                        <HeaderStyle ForeColor="#CCCCCC" />
                        <ItemStyle Width="250px" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                        <HeaderStyle Font-Underline="True" ForeColor="#CCCCCC" />
                    </asp:ImageField>
                    <asp:BoundField DataField="RegularPrice" DataFormatString="£{0}" 
                        HeaderText="Regular Price" SortExpression="RegularPrice" >
                        <HeaderStyle ForeColor="#CCCCCC" />
                        <ItemStyle CssClass="center" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </p>
    </div>
</asp:Content>
