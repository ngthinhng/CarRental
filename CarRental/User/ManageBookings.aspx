﻿<%@ Page Title="Manage Your Bookings" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageBookings.aspx.cs" Inherits="CarRental.User.ManageBookings" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:LinkButton runat="server" Text="Back" CssClass="btn btn-primary btn-lg marginTopSmall" PostBackUrl="~/User/Default.aspx" />
    <hr />
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <asp:GridView ID="ManageBookingsGridView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
        AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" EmptyDataText="No Record found"
        OnRowCommand="ManageBookingsGridView_RowCommand" CssClass="table table-hover table-bordered marginTopBig">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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

        <Columns>
            <asp:TemplateField Visible="false">
                <ItemTemplate>
                    <asp:Label runat="server" ID="Id_Item" Text='<%#Bind("BookingId") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Start Date">
                <ItemTemplate>
                    <asp:Label runat="server" ID="StartDate_Item" Text='<%#Bind("StartDate") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="End Date">
                <ItemTemplate>
                    <asp:Label runat="server" ID="EndDate_Item" Text='<%#Bind("EndDate") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <asp:Label runat="server" ID="Status_Item" Text='<%#Bind("Status") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Cost">
                <ItemTemplate>
                    <asp:Label runat="server" ID="Cost_Item" Text='<%#Bind("Cost") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button runat="server" Text="Cancel" CommandName="CancelBooking" CssClass="btn btn-primary btn-sm"
                        OnClientClick="return confirm('Are you sure you want to Cancel this booking?'); "
                        Enabled='<%# IsCancelable(Eval("Status").ToString(), Eval("StartDate").ToString(), Eval("EndDate").ToString()) %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

</asp:Content>
