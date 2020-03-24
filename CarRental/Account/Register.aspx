﻿<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CarRental.Account.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:PlaceHolder runat="server" ID="RegisterSection" Visible="false">
        <h2><%: Title %>.</h2>
        <p class="text-danger">
            <asp:Literal runat="server" ID="ErrorMessage" />
        </p>
        <div class="form-horizontal">
            <h4>Create a new account</h4>
            <hr />
            <asp:ValidationSummary runat="server" CssClass="text-danger" />
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                        CssClass="text-danger" ErrorMessage="The email field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="FullName" CssClass="col-md-2 control-label">Full Name</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="FullName" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="FullName"
                        CssClass="text-danger" ErrorMessage="The full name field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Phone" CssClass="col-md-2 control-label">Phone</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Phone" CssClass="form-control" TextMode="Number" />
                    <asp:CustomValidator runat="server" ControlToValidate="Phone"
                        CssClass="text-danger" OnServerValidate="Phone_ServerValidate" ErrorMessage="The Required Length for Phone is 10 Digits" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Address" CssClass="col-md-2 control-label">Address</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Address" CssClass="form-control" />
                    <br />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" OnClick="CreateUser" Text="Register" CssClass="btn btn-default" />
                </div>
            </div>
        </div>
    </asp:PlaceHolder>

    <asp:PlaceHolder runat="server" ID="AlreadyLoginSection" Visible="false">
        <h1 class="text-center">You are already logged in
        </h1>
    </asp:PlaceHolder>
</asp:Content>
