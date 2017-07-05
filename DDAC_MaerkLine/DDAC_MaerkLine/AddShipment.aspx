<%@ Page Title="Maersk Line - Insert Shipment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddShipment.aspx.cs" Inherits="DDAC_MaerkLine.AddShipment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Insert Shipment</h2>
        <p class="lead">Scheduling Section</p>
    </div>

    <div>
        <h2>Information Details</h2> <br />
        <h4>Please Ensure all Column are insert to avoid information conlict.</h4>
        <br /><br />
        <p>Customer Name: </p>
            <asp:TextBox ID="cusName1" runat="server" Width="200px"/> <br />
        <p>Customer Company: </p>
             <asp:TextBox ID="cusCompany1" runat="server" Width="200px"/> <br />
        <p>Departure Location: </p>
             <asp:TextBox ID="DepartLoc1" runat="server" Width="200px"/> <br />
        <p>Arrival Location: </p>
             <asp:TextBox ID="ArrivalLoc1" runat="server" Width="200px"/> <br />
        <p>Date: </p>
             <asp:TextBox ID="Date1" runat="server" Width="200px"/> <br /> <br />

        <asp:Button ID="AddShip" runat="server" Text="Add" OnClick="AddShip_Click" />
        <asp:Button Style="margin-left:20px" ID="CancelShip" runat="server" Text="Cancel" OnClick="CancelShip_Click" />

    </div>
    <asp:SqlDataSource ID="SqlDataSource_InsertShipment" runat="server" ConnectionString="<%$ ConnectionStrings:DDACMaerkLine20170705045729_dbConnectionString %>" DeleteCommand="DELETE FROM [Shipment] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Shipment] ([CusName], [CusCompany], [DepartLoc], [ArrivalLoc], [Date]) VALUES (@CusName, @CusCompany, @DepartLoc, @ArrivalLoc, @Date)" SelectCommand="SELECT * FROM [Shipment]" UpdateCommand="UPDATE [Shipment] SET [CusName] = @CusName, [CusCompany] = @CusCompany, [DepartLoc] = @DepartLoc, [ArrivalLoc] = @ArrivalLoc, [Date] = @Date WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="cusName1" Name="CusName" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="cusCompany1" Name="CusCompany" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="DepartLoc1" Name="DepartLoc" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="ArrivalLoc1" Name="ArrivalLoc" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Date1" Name="Date" PropertyName="Text" Type="String" />
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

