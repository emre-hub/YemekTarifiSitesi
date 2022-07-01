<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKategoriler.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_ASPNET.AdminKategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            background-color: #66FFFF;
        }
    .auto-style7 {
        width: 101%;
        background-color: #66FFFF;
    }
    .auto-style8 {
        text-align: left;
        width: 150px;
    }
    .auto-style9 {
        text-align: right;
    }
    .auto-style10 {
        font-size: x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style6">
        <span class="auto-style10"><strong style="border: thin solid white">Kategori Listesi</strong></span></asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style9">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Images/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style9">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Images/update.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
