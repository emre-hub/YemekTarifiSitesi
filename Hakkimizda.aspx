<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_ASPNET.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style11 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style10">
        HAKKIMIZDA</p>
    <asp:DataList ID="DataList2" runat="server" Width="448px">
        <ItemTemplate>
            <table class="auto-style11">
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/Images/masa.png" Width="450px" />
    </asp:Content>
