<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_ASPNET.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 207px;
            font-size: x-large;
            color: #0000FF;
        }
        .auto-style11 {
            text-align: left;
        }
        .auto-style12 {
            color: #000099;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="449px">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style7"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        <br />
                        <br />
                        </strong></td>
                </tr>
                <tr>
                    <td><span class="auto-style12"><strong>Malzemeler :&nbsp;&nbsp; </strong>
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        <br />
                        <br />
                        <br />
                        <strong>Tarif :</strong></span>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>' CssClass="auto-style12"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Image ID="Image1" runat="server" Height="320px" ImageUrl='<%# Eval("YemekResim") %>' Width="350px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <br />
                        <strong>Puan:</strong>&nbsp;
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        / 10</td>
                </tr>
                <tr>
                    <td><strong>Tarih:</strong>&nbsp;
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
