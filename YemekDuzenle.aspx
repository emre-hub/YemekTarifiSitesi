<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_ASPNET.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            text-align: right;
            font-size: large;
        }
        .auto-style8 {
            text-align: center;
        }
    .auto-style9 {
        border: 2px solid #456879;
        border-radius: 10px;
        height: 22px;
        width: 230px;
        background-color: #00FFFF;
    }
    .auto-style10 {
        background-color: #66FF33;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Yemek Ad : </strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Malzemeler :</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="200px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Tarif : </strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="250px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Kategori : </strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px" CssClass="tb5">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Height="40px" Text="Güncelle" Width="150px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8"><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="40px" OnClick="Button2_Click" Text="Günün Yemeği Seç" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
