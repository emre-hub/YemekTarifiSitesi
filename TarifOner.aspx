<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_ASPNET.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            text-align: right;
        }
        .auto-style11 {
            text-align: right;
            height: 29px;
        }
        .auto-style12 {
            height: 29px;
        }
    .auto-style13 {
        font-weight: bold;
        font-style: italic;
    }
        .auto-style14 {
            text-align: center;
            background-color: #33CCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">Tarif Adı : </td>
            <td>
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Malzemeler : </td>
            <td class="auto-style12">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Width="250px" Height="80px" TextMode="MultiLine" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Tarifi :</td>
            <td>
                <asp:TextBox ID="TxtTarif" runat="server" Width="250px" Height="150px" TextMode="MultiLine" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Resim :</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Tarif Öneren :</td>
            <td class="auto-style12">
                <asp:TextBox ID="TxtTarifOneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Mail Adresi :</td>
            <td>
                <asp:TextBox ID="TxtMailAdresi" runat="server" Width="250px" TextMode="Email" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                <strong><em>
                <asp:Button ID="BtnTarifOner" runat="server" Text="Gönder" BackColor="#00CC99" CssClass="fb8" Height="54px" Width="148px" OnClick="BtnTarifOner_Click" />
                </em></strong>
            </td>
        </tr>
    </table>
</asp:Content>
