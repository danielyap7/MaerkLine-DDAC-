<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddShipment.aspx.cs" Inherits="DDAC_MaerkLine.AddShipment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        button {
            margin: 10px;

        }
    </style>

    <div>
        <h2>Insert Shipment</h2>
        <p class="lead">Scheduling Section</p>
    </div>

    <div>
        <h2>Information Details</h2> <br />
        <h4>Please Ensure all Column are insert to avoid information conlict.</h4>
        <br /><br />
        <p>Customer Name: </p>
            <asp:TextBox ID="cusName" runat="server" Width="200px"/> <br />
        <p>Customer Company: </p>
             <asp:TextBox ID="cusCompany" runat="server" Width="200px"/> <br />
        <p>Departure Location: </p>
             <asp:TextBox ID="DepartLoc" runat="server" Width="200px"/> <br />
        <p>Arrival Location: </p>
             <asp:TextBox ID="ArrivalLoc" runat="server" Width="200px"/> <br />
        <p>Date: </p>
             <asp:TextBox ID="Date" runat="server" Width="200px"/> <br /> <br />

        <asp:Button ID="AddShip" runat="server" Text="Add" OnClick="AddShip_Click" />
        <asp:Button Style="margin-left:20px" ID="CancelShip" runat="server" Text="Cancel" OnClick="CancelShip_Click" />


    </div>

</asp:Content>
