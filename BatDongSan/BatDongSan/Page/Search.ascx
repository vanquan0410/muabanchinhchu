<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Search.ascx.cs" Inherits="BatDongSan.Page.Search" %>
<table>
    <tr>
        <td><p>
    ***chọn vị trí cần mua,thuê căn hộ</p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BatDongSanConnectionString %>" SelectCommand="SELECT * FROM [ThanhPho]"></asp:SqlDataSource>
            </p>
<p>
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name_TP" DataValueField="ID_TP">
        <asp:ListItem>Chon Tinh,Thanh Pho</asp:ListItem>
    </asp:DropDownList>
&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
        <asp:ListItem>Chon Quan,Huyen</asp:ListItem>
    </asp:DropDownList>
&nbsp;
    <asp:DropDownList ID="DropDownList3" runat="server">
        <asp:ListItem>Chon Phường,Xã</asp:ListItem>
    </asp:DropDownList>
&nbsp;
    <asp:Button ID="btnTimKiem" runat="server" Text="Tim Kiem" Width="135px" OnClick="btnTimKiem_Click" />
</p>
        </td>
    </tr>
</table>