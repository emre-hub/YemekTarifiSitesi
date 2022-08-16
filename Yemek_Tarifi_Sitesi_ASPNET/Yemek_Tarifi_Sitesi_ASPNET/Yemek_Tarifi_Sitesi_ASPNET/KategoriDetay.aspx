<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_ASPNET.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style10 {
            width: 100%;
        }
        .auto-style12 {
            background-color: #3366CC;
        }
        .auto-style11 {
            font-size: x-large;
            color: #99FFCC;
        }
        .auto-style14 {
            color: #00CC00;
            background-color: #33CCFF;
        }
        .auto-style13 {
            background-color: #9966FF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="448px">
    <ItemTemplate>
        <table class="auto-style10">
            <tr>
                <td class="auto-style12"><strong><a href ="YemekDetay.aspx?YemekId=<%#Eval("YemekId") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style11" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td><strong>Malzemeler :</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Tarifi&nbsp; :</strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;<strong>Eklenme Tarihi :</strong>&nbsp;<strong><asp:Label ID="Label6" runat="server" CssClass="auto-style14" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </strong>&nbsp; <strong>-&nbsp; <em>Puan :</em></strong> <em><strong>
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style14" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </strong></em></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
