<%@ Page Title="Maersk Line - View Shipment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewShipment.aspx.cs" Inherits="DDAC_MaerkLine.ViewShipment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h2>Modification Shipment</h2>
        <p class="lead">Modify Scheduling Section</p>
    </div>

    <div style="background-color:aliceblue; padding:10px">
        <h3>View Shipment</h3>
        <p class="lead">All Client Shipment information will show as below</p> <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource_ViewShipment">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="CusName" HeaderText="CusName" SortExpression="CusName" />
                <asp:BoundField DataField="CusCompany" HeaderText="CusCompany" SortExpression="CusCompany" />
                <asp:BoundField DataField="DepartLoc" HeaderText="DepartLoc" SortExpression="DepartLoc" />
                <asp:BoundField DataField="ArrivalLoc" HeaderText="ArrivalLoc" SortExpression="ArrivalLoc" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource_ViewShipment" runat="server" ConnectionString="<%$ ConnectionStrings:DDACMaerkLine20170705045729_dbConnectionString %>" DeleteCommand="DELETE FROM [Shipment] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Shipment] ([CusName], [CusCompany], [DepartLoc], [ArrivalLoc], [Date]) VALUES (@CusName, @CusCompany, @DepartLoc, @ArrivalLoc, @Date)" SelectCommand="SELECT * FROM [Shipment]" UpdateCommand="UPDATE [Shipment] SET [CusName] = @CusName, [CusCompany] = @CusCompany, [DepartLoc] = @DepartLoc, [ArrivalLoc] = @ArrivalLoc, [Date] = @Date WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CusName" Type="String" />
            <asp:Parameter Name="CusCompany" Type="String" />
            <asp:Parameter Name="DepartLoc" Type="String" />
            <asp:Parameter Name="ArrivalLoc" Type="String" />
            <asp:Parameter Name="Date" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CusName" Type="String" />
            <asp:Parameter Name="CusCompany" Type="String" />
            <asp:Parameter Name="DepartLoc" Type="String" />
            <asp:Parameter Name="ArrivalLoc" Type="String" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
