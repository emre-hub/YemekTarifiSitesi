<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_ASPNET.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 207px;
            font-size: x-large;
        }
        .auto-style11 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="449px">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style7"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                        <br />
                        <br />
                        </strong></td>
                </tr>
                <tr>
                    <td><strong>Malzemeler ve Tarif: </strong>
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Image ID="Image1" runat="server" Height="320px" ImageUrl="~/Images/californiaroll-sushi.jpg" Width="350px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <br />
                        <strong>Puan:</strong>&nbsp;
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                        / 10</td>
                </tr>
                <tr>
                    <td><strong>Tarih:</strong>&nbsp;
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
