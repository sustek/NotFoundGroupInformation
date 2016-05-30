<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="ParkingGame.aspx.cs" Inherits="GameLab.user.ParkingGame" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="icerik">
        <h2>PARK USTASI OYUNU</h2>
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/araba.jpg" />

        <br />
        <br />
        <h4>Oyun İçin Yapılan Yorumlar</h4>
        <div style="width: 100%; text-align: left;">
            <asp:Label ID="lbl_yorumlar" runat="server"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txt_yorumyap" Width="60%" runat="server" placeholder="Bir Yorum Yazın.." CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:Button ID="btn_yorumyap" runat="server" CssClass="btn-danger" Text="Yorum Yap" Width="120px" OnClick="btn_yorumyap_Click" />
            <asp:Label ID="lbl_onay" runat="server" Text=""></asp:Label>
        </div>
        <asp:DataList ID="dl_yorumlar" runat="server" CellPadding="10" Font-Bold="False" Font-Italic="False" Font-Names="Century Gothic" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#313131" HorizontalAlign="Left" CssClass="yorumlar" CellSpacing="20" Font-Size="Small" BackColor="White" GridLines="Both" ShowFooter="False" ShowHeader="False" BorderColor="#313131" RepeatColumns="1">
            <FooterStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
            <ItemTemplate>

                <table class="navigasyon">
                    <tr>
                        <td>&nbsp;&nbsp;
                            <asp:Label ID="lbl_yorumcuad" runat="server" Text='<%# Eval("CommenterName") %>' Font-Bold="True"></asp:Label>&nbsp;diyor ki:
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lbl_yorumcuyorum" runat="server" Text='<%#Eval("Comment") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;
                            <asp:Label ID="lbl_yorumtarihi" runat="server" Text='<%# Eval("CommentDate") %>' Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                </table>

            </ItemTemplate>
            <SeparatorStyle Font-Bold="True" Font-Italic="False" Font-Names="Century Gothic" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" BackColor="Black" Font-Size="Larger" />
        </asp:DataList>
    </div>
   
</asp:Content>
