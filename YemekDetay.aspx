<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_ASPNET.YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            font-size: xx-large;
            color: #FF3300;
        }

        .auto-style11 {
            width: 100%;
        }

        .auto-style12 {
            font-size: x-small;
        }

        .auto-style13 {
            background-color: #00FFCC;
        }
        .auto-style14 {
            text-align: center;
            color: #CCFFFF;
            font-size: large;
            background-color: #FF3300;
        }
        .auto-style15 {
            color: #FFFFFF;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style20 {
            font-weight: bold;
            color: #000099;
        }
        .auto-style21 {
            color: #006600;
        }
        .auto-style22 {
            width: 106px;
            text-align: left;
            color: #006600;
        }
        .auto-style23 {
            width: 106px;
            height: 23px;
        }
        .auto-style24 {
            height: 23px;
        }
        .auto-style25 {
            width: 106px;
            text-align: left;
        }
        .auto-style26 {
            width: 106px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server" Width="449px">
        <ItemTemplate>
            <table class="auto-style11">
                <tr>
                    <td><strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong></td>
                </tr>
                </strong>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        <strong>&nbsp;- <em>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style12" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </em></strong></td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br class="auto-style15" />
    <div class="auto-style14"><strong>YORUM PANELİ</strong></div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style11">
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style25"><span class="auto-style21">Ad Soyad :</span> </td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtAdSoyad" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25"><span class="auto-style21">E-mail :</span> </td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtMail" runat="server" TextMode="Email" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">Yorum :</td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtYorum" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style16"><strong>
                    <asp:Button ID="btnYorumYap" runat="server" CssClass="auto-style20" Height="50px" OnClick="btnYorumYap_Click" Text="Yorum Yap" Width="150px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
