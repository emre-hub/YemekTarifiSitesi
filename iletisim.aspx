<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_ASPNET.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        width: 100%;
    }
    .auto-style11 {
        font-weight: bold;
        font-size: large;
        color: #FF0000;
    }
    .auto-style12 {
        text-align: right;
        color: #FF0000;
    }
    .auto-style13 {
        font-size: x-large;
        text-align: center;
        color: #FF0000;
    }
    .auto-style14 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
    <tr>
        <td class="auto-style13" colspan="2"><em><strong>Bize Ulaşın</strong></em></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Ad Soyad&nbsp; :&nbsp;&nbsp; </strong></td>
        <td class="auto-style14">
            <asp:TextBox ID="txtAdSoyad" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>E-Mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp; </strong></td>
        <td class="auto-style14">
            <asp:TextBox ID="txtMail" runat="server" Width="250px" CssClass="tb5" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Konu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp; </strong></td>
        <td class="auto-style14">
            <asp:TextBox ID="txtKonu" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>&nbsp;Mesaj&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp; </strong></td>
        <td class="auto-style14">
            <asp:TextBox ID="txtMesaj" runat="server" Width="250px" CssClass="tb5" Height="80px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style14"><strong>
            <asp:Button ID="btnGonder" runat="server" CssClass="fb8" Text="Gönder" Width="150px" />
            </strong></td>
    </tr>
</table>
</asp:Content>
