<%@ Page Title="" Language="C#" MasterPageFile="~/Page/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BatDongSan.Page.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main_body" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Tin Ban & Cho Thue"></asp:Label>

    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="709px">
        <AlternatingItemStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <ItemTemplate>
            <table class="auto-style2" border="1">
                <tr>
                    <td rowspan="4">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/cart.jpg"/>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Title") %>' NavigateUrl='<%# "Products.aspx?ID_TD="+Eval("ID_TD").ToString() %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("NgayDang") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("MoTaChiTiet") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Gia:"></asp:Label>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                        <asp:Label ID="Label7" runat="server" Text="Dien tich:"></asp:Label>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("DienTich") %>'></asp:Label>
                        <asp:Label ID="Label9" runat="server" Text="Vi Tri"></asp:Label>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("Name_TP") %>'></asp:Label>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("Name_Q") %>'></asp:Label>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("Name_P") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    </asp:DataList>

</asp:Content>
