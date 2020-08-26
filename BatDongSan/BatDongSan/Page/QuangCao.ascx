<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuangCao.ascx.cs" Inherits="BatDongSan.Page.QuangCao" %>
<style type="text/css">
    .auto-style1 {
        width: 40%;
    }
</style>

<table class="auto-style1">
    <tr>
        <td>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/tu-van.gif" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Dang tin ban,cho thue tron goi,hieu qua cao</asp:ListItem>
                <asp:ListItem>Can goi du lieu chinh chu nang cao</asp:ListItem>
                <asp:ListItem>Ho tro tim mua/thue</asp:ListItem>
                <asp:ListItem>Tim viec tai cong ty BDS luong+hoa hong cao</asp:ListItem>
                <asp:ListItem>Cong ty BDS can tuyen moi gioi</asp:ListItem>
                <asp:ListItem>Xay dung,sua chua</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Ho Ten"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Dien Thoai lien he"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Gui" />
        </td>
    </tr>
</table>

