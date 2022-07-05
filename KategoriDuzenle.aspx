<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_ASPNET.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 182px;
        }
        .auto-style7 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
        }
        .auto-style8 {
            width: 182px;
            text-align: right;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            width: 182px;
            text-align: right;
            height: 29px;
        }
        .auto-style11 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">KATEGORİ AD :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">ADET :&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">RESİM : </td>
            <td class="auto-style11">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="fb8" Width="225px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style9"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="34px" Text="Güncelle" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
