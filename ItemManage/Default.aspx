<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ItemManage._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="padding:15px">

        <table class="nav-justified">
            <tr>
                <td colspan="3" style="font-size:xx-large; font-weight:bold" align="center">Item Info Management System&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 482px">&nbsp;</td>
                <td style="width: 3px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 482px">&nbsp;</td>
                <td style="width: 3px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="padding: 0.5em; width: 482px; text-align: right;">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Id: "></asp:Label>
                </td>
                <td style="padding: 0.5em; width: 3px;"></td>
                <td style="padding: 0.5em">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="250px"></asp:TextBox>
&nbsp;
                    <asp:Button ID="Get" runat="server" Font-Bold="False" Font-Size="Medium" Text="Get" OnClick="Get_Click" />
                </td>
            </tr>
            <tr>
                <td style="padding: 0.5em; width: 482px; text-align: right;">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Item Name:"></asp:Label>
                </td>
                <td style="padding: 0.5em; width: 3px;">&nbsp;</td>
                <td style="padding: 0.5em">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding: 0.5em; width: 482px; text-align: right;">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Category: "></asp:Label>
                </td>
                <td style="padding: 0.5em; width: 3px;">&nbsp;</td>
                <td style="padding: 0.5em">
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium">
                        <asp:ListItem>Book</asp:ListItem>
                        <asp:ListItem>Stationery</asp:ListItem>
                        <asp:ListItem>Bottle</asp:ListItem>
                        <asp:ListItem>Bag</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="padding: 0.5em; width: 482px; text-align: right;">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" Text="Price: "></asp:Label>
                </td>
                <td style="padding: 0.5em; width: 3px;">&nbsp;</td>
                <td style="padding: 0.5em">
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding: 0.5em; width: 482px; text-align: right;">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="Date Added: "></asp:Label>
                </td>
                <td style="padding: 0.5em; width: 3px;"></td>
                <td style="padding: 0.5em">
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding: 0.5em; width: 482px; text-align: right;">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Availability: "></asp:Label>
                </td>
                <td style="padding: 0.5em; width: 3px;">&nbsp;</td>
                <td style="padding: 0.5em">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Size="Medium" RepeatDirection="Horizontal" Width="253px">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="width: 482px">&nbsp;</td>
                <td style="width: 3px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 20px; width: 482px"></td>
                <td style="height: 20px; width: 3px"></td>
                <td style="height: 20px">
                    <asp:Button ID="Insert" runat="server" Font-Bold="False" Font-Size="Medium" Text="Insert" OnClick="Insert_Click" />
&nbsp;
                    <asp:Button ID="Update" runat="server" Font-Bold="False" Font-Size="Medium" Text="Update" OnClick="Update_Click" />
&nbsp;
                    <asp:Button ID="Delete" runat="server" Font-Bold="False" Font-Size="Medium" Text="Delete" OnClick="Delete_Click" />
                    &nbsp;<asp:Button ID="Load" runat="server" Font-Bold="False" Font-Size="Medium" Text="Load" OnClick="Load_Click" />
                </td>
            </tr>
            <tr>
                <td style="width: 482px">&nbsp;</td>
                <td style="width: 3px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 482px; height: 20px"></td>
                <td style="width: 3px; height: 20px"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="height: 20px" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" Width="867px">
                        <HeaderStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 482px">&nbsp;</td>
                <td style="width: 3px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 482px">&nbsp;</td>
                <td style="width: 3px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>

</asp:Content>
