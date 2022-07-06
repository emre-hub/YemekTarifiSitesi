<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_ASPNET.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            text-align: center;
            width: 330px;
        }
        .auto-style8 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style9 {
            width: 330px;
        }
        .auto-style11 {
            width: 436px;
        }
        .auto-style14 {
            width: 211px;
        }
        .auto-style15 {
            width: 211px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Width="446px">
        <table class="auto-style11">
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Yemek Adı</strong><span class="auto-style21"><strong> :</strong></span><strong> </strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtYemekAd" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><span class="auto-style21"><strong>Malzemeler :</strong></span><strong> </strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtMalzemeler" runat="server" CssClass="auto-style8" Height="95px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Tarif : </strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtTarif" runat="server" CssClass="auto-style8" Height="130px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Tarif Resim : </strong></td>
                <td class="auto-style7">
                    <asp:FileUpload ID="fupTarifResim" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Tarif Öneren : </strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtTarifOneren" runat="server" CssClass="tb5" TextMode="Email" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Öneren Mail :</strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtOnerenMail" runat="server" CssClass="tb5" TextMode="Email" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style7"><strong>
                    <asp:Button ID="btnTarifiOnayla" runat="server" CssClass="auto-style8" Height="35px" Text="Tarifi Onayla" Width="150px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
