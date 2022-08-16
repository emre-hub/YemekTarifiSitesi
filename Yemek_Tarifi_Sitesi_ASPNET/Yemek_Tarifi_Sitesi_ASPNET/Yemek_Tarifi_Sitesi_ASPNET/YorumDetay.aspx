<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_ASPNET.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
            width: 129px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            width: 129px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Ad Soyad :</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtAd" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Mail Adresi :</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtMail" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Yemek :</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtYemek" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Yorum :</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtYorum" runat="server" CssClass="tb5" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="btnOnay" runat="server" CssClass="tb5" Height="30px" Text="Onayla" Width="150px" OnClick="btnOnay_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
