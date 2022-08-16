<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_ASPNET.HakkimizdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            background-color: #009900;
        }

        .auto-style11 {
            width: 36px;
        }

        .auto-style13 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
            font-size: large;
        }

        .auto-style12 {
            width: 35px;
        }

        .auto-style15 {
            color: white;
        }
        .auto-style17 {
            text-align: center;
        }
        .auto-style18 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
        <table class="auto-style5">
            <tr>
                <td class="auto-style11"><strong><em>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </em></strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td class="auto-style15">Hakkımızda</td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style5">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style18" Height="40px" Text="Güncelle" Width="300px" OnClick="Button4_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
