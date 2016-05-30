<%@ Page Title="" Language="C#" MasterPageFile="~/everyone/Everyone.Master" AutoEventWireup="true" CodeBehind="ParkingGame.aspx.cs" Inherits="GameLab.everyone.ParkingGame" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="icerik">
        PARK USTASI OYUNU<br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/araba.jpg" />

        <br />
        <br />
        <asp:Label ID="lbl_yorumlar" runat="server"></asp:Label>
        <div style="float: left; width: 100%;">
            Yorum yapabilmek için oturum açmalısınız.<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/user/ParkingGame.aspx">Oturum Aç</asp:HyperLink>
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
