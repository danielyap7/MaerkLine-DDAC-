<%@ Page Title="Maersk Line - Modify Shipment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifyShipment.aspx.cs" Inherits="DDAC_MaerkLine.ModifyShipment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="jumbotron">
        <h2>Modification Shipment</h2>
        <p class="lead">Modify Scheduling Section</p>
    </div>

    <div class="container" style="background-color:aliceblue; padding:10px">
        <h3>List of Details Shipment</h3>
        <p class="lead">Any Modification on Edit or Delete Shipment are able to perform below</p> <br />

        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource_ModifyShipment" Width="1003px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="CusName" HeaderText="CusName" SortExpression="CusName" />
                <asp:BoundField DataField="CusCompany" HeaderText="CusCompany" SortExpression="CusCompany" />
                <asp:BoundField DataField="DepartLoc" HeaderText="DepartLoc" SortExpression="DepartLoc" />
                <asp:BoundField DataField="ArrivalLoc" HeaderText="ArrivalLoc" SortExpression="ArrivalLoc" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
       <asp:Button ID="BackEdit" runat="server" Text="Back" OnClick="BackEdit_Click" />


    </div>
    <asp:SqlDataSource ID="SqlDataSource_ModifyShipment" runat="server" ConnectionString="<%$ ConnectionStrings:DDACMaerkLine20170705045729_dbConnectionString %>" DeleteCommand="DELETE FROM [Shipment] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Shipment] ([CusName], [CusCompany], [DepartLoc], [ArrivalLoc], [Date]) VALUES (@CusName, @CusCompany, @DepartLoc, @ArrivalLoc, @Date)" SelectCommand="SELECT * FROM [Shipment]" UpdateCommand="UPDATE [Shipment] SET [CusName] = @CusName, [CusCompany] = @CusCompany, [DepartLoc] = @DepartLoc, [ArrivalLoc] = @ArrivalLoc, [Date] = @Date WHERE [Id] = @Id">
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
