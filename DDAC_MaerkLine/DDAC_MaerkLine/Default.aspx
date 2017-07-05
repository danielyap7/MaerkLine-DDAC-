<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DDAC_MaerkLine._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Maersk Line - Transport and Logistics</h1> <br />
        <p class="lead">Welcome to Cloud Services Platform for Maersk Line.</p>
        <p class="lead">Shipment Management</p>

    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Add Shipment</h2>
            <p>
                Add the Maersk Line Shipment
            </p> <br />
            <p>
                <a class="btn btn-default" href="AddShipment.aspx" style="background-color:#A8A8A8">Insert &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Modify Shipment</h2>
            <p>
                Edit or Delete on the Shipment Details.
            </p> <br />
            <p>
                <a class="btn btn-default" href="ModifyShipment.aspx" style="background-color:#A8A8A8" >Modify &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950" style="background-color:#A8A8A8" >Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
