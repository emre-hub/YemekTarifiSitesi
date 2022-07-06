<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_ASPNET.GununYemegiAdmin" %>
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
    .auto-style18 {
        border: 2px solid #456879;
        border-radius: 10px;
        height: 22px;
        font-weight: bold;
        font-size: large;
    }
        .auto-style19 {
            width: 421px;
        }
        .auto-style20 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style14">
        <table class="auto-style5">
            <tr>
                <td class="auto-style11"><strong><em>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"/>
                    </em></strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td style="color: white">Yemek Listesi</td>
            </tr>
        </table>
    </asp:Panel>

        <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>

                <table class="auto-style19">

                    <tr>

                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp; </td>

                        <td class="auto-style20">
                            <a href="YemekDuzenle.aspx?YemekId=<%#Eval("YemekId")%>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Images/check.png" Width="30px" /></a>
                        </td>

                    </tr>

                </table>

            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

</asp:Content>
