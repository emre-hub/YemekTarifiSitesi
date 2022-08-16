<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Tarifi_Sitesi_ASPNET.Yorumlar" %>

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

        .auto-style7 {
            width: 101%;
            background-color: #66FFFF;
        }

        .auto-style8 {
            text-align: left;
            width: 150px;
        }

        .auto-style9 {
            text-align: right;
        }

        .auto-style15 {
            width: 36px;
            height: 34px;
        }

        .auto-style16 {
            width: 35px;
            height: 34px;
        }

        .auto-style17 {
            height: 34px;
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
                <td style="color: white">Onaylanmış Yorumlar</td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style9">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Images/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style9">
                            <a href="YorumDetay.aspx?YorumId=<%#Eval("YorumId")%>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Images/update.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style14">
        <table class="auto-style5">
            <tr>
                <td class="auto-style15"><strong><em>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </em></strong></td>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td style="color: white" class="auto-style17">Onaylanmamış Yorumlar</td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("YorumAdSoyad") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style9">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Images/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style9">
                            <a href="YorumDetay.aspx?YorumId=<%#Eval("YorumId") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Images/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

</asp:Content>
