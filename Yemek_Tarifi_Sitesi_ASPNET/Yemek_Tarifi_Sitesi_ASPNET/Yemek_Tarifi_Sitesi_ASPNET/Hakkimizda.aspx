<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_ASPNET.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="448px">
        <ItemTemplate>
            <table class="auto-style11">
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        <p class="auto-style10">
        &nbsp;</p>
    <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/Images/masa.png" Width="450px" />
    </asp:Content>
