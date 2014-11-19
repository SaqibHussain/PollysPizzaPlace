<%@ Page Language="VB" AutoEventWireup="false" CodeFile="test.aspx.vb" Inherits="test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/pollysmenu.mdb" 
            SelectCommand="SELECT * FROM [PizzaMenu] WHERE ([ID] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="ID={0}" Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="ID" DataSourceID="AccessDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                <asp:BoundField DataField="RegularPrice" HeaderText="RegularPrice" 
                    SortExpression="RegularPrice" />
                <asp:BoundField DataField="LargePrice" HeaderText="LargePrice" 
                    SortExpression="LargePrice" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
