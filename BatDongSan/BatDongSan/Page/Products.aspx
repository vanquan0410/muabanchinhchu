<%@ Page Title="" Language="C#" MasterPageFile="~/Page/FrontEnd_2.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="BatDongSan.Page.Products" %>

<%@ Register Src="~/Page/QuangCao.ascx" TagPrefix="uc1" TagName="QuangCao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 120px;
        }
        .auto-style4 {
            margin-right: 0;
        }
        .auto-style5 {
            width: 98%;
        }
        .auto-style6 {
            width: 57%;
        }
        .auto-style7 {
            width: 30%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main_body" runat="server">

    <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" CssClass="auto-style4">
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <ItemTemplate>
            <table class="auto-style2" border="0">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Vi Tri:"></asp:Label>
                <asp:Label ID="Label16" runat="server" Text='<%# Eval("Name_TP") %>'></asp:Label>
                <asp:Label ID="Label17" runat="server" Text='<%# Eval("Name_Q") %>'></asp:Label>
                <asp:Label ID="Label18" runat="server" Text='<%# Eval("Name_P") %>'></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Gia:"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="Dien Tich"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("DienTich") %>'></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="Chieu Rong hem/duong"></asp:Label>
                <asp:Label ID="Label8" runat="server" Text='<%# Eval("RongDuong") %>'></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <uc1:QuangCao runat="server" ID="QuangCao" />
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label9" runat="server" Text="Mo ta chi tiet Bat Dong San"></asp:Label>
                <br />
                <asp:Label ID="Label10" runat="server" Text='<%# Eval("MoTaChiTiet") %>'></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label12" runat="server" Text='<%# Eval("NgayDang") %>'></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Text="Nhap email de luu tin ve email"></asp:TextBox>
                <br />
                <asp:Button ID="Button2" runat="server" Text="Luu Tin Ve email" />
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label13" runat="server" Text="Thong tin lien He"></asp:Label>
                <br />
                <asp:Label ID="Label14" runat="server" Text="So Dien thoai"></asp:Label>
                <br />
                <asp:Label ID="Label15" runat="server" Text="neu tin nay da ban,sai thong tin,vui long phan hoi ve page"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Chon Loai Phan hoi</asp:ListItem>
                    <asp:ListItem>Tin nay da ban</asp:ListItem>
                    <asp:ListItem>Tin nay cua moi gioi</asp:ListItem>
                    <asp:ListItem>Dien tich khong dung</asp:ListItem>
                    <asp:ListItem>Gia ban khong dung</asp:ListItem>
                    <asp:ListItem>Khac</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox2" runat="server" Text="Chi tiet"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Text="Gui" />
            </td>
        </tr>
    </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:DataList>

</asp:Content>
