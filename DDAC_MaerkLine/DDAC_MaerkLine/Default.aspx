<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DDAC_MaerkLine._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Maersk Line - Transport and Logistics</h1> <br />
        <p class="lead">Welcome to Cloud Services Platform for Maersk Line.</p>
        <p class="lead">Shipment Management</p>

    </div>

    <div class="row">
        <div class="col-md-4" id="addDiv">
            <h2>Add Shipment</h2>
            <p>
                Add the Maersk Line Shipment
            </p> <br />
            <p>
                <a class="btn btn-default" href="AddShipment.aspx" style="background-color:#A8A8A8">Insert Shipment&raquo;</a>
            </p>
        </div>
        <div class="col-md-4" id="modifyDiv">
            <h2>Modify Shipment</h2>
            <p>
                Edit or Delete on the Shipment Details. [Admin]
            </p> <br />
            <p>
                <a class="btn btn-default" href="ModifyShipment.aspx" style="background-color:#A8A8A8" >Modify Shipment&raquo;</a>
            </p>
        </div>
        <div class="col-md-4" id="viewDiv">
            <h2>View Shipment</h2>
            <p>
                User can easily View the shipment from the Maersk Line.
            </p> <br />
            <p>
                <a class="btn btn-default" href="ViewShipment.aspx" style="background-color:#A8A8A8" >View Shipment &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
