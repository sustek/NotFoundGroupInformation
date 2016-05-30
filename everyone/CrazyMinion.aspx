<%@ Page Title="" Language="C#" MasterPageFile="~/everyone/Everyone.Master" AutoEventWireup="true" CodeBehind="CrazyMinion.aspx.cs" Inherits="GameLab.everyone.CrazyMinion" %>

<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../sliderenginegamelabb/jquery.js"></script>
    <script src="../sliderenginegamelabb/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="../sliderenginegamelabb/amazingslider-2.css">
    <script src="../sliderenginegamelabb/initslider-2.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="icerik">
        <h1>CRAZY MINION</h1>
        <br />
        <div id="amazingslider-wrapper-2" style="display: block; position: relative; max-width: 900px; margin: 0px auto 86px;">
            <div id="amazingslider-2" style="display: block; position: relative; margin: 0 auto;">
                <ul class="amazingslider-slides" style="display: none;">
                    <li><a href="#">
                        <img src="../img/11.png" data-description="Başlama Ekranı" /></a>
                    </li>
                    <li><a href="#">
                        <img src="../img/22.png" data-description="Oyun Sırası" /></a>
                    </li>
                    <li><a href="#">
                        <img src="../img/33.png" data-description="Oyun Sırası" /></a>
                    </li>
                    <li><a href="#">
                        <img src="../img/44.png" data-description="Kazanma Ekranı" /></a>
                    </li>
                    <li><a href="#">
                        <img src="../img/55.png" data-description="Kaybetme Ekranı" /></a>
                    </li>
                </ul>
                <ul class="amazingslider-thumbnails" style="display: none;">
                    <li>
                        <img src="../img/11-tn.png" /></li>
                    <li>
                        <img src="../img/22-tn.png" /></li>
                    <li>
                        <img src="../img/33-tn.png" /></li>
                    <li>
                        <img src="../img/44-tn.png" /></li>
                    <li>
                        <img src="../img/55-tn.png" /></li>
                </ul>
            </div>
        </div>
        <br />
        <br />
        <asp:Label ID="lbl_yorumlar" runat="server"></asp:Label>

        <br />
        <br />
        <div style="float: left; width: 100%;">
            Yorum yapabilmek için oturum açmalısınız.<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/user/CrazyMinion.aspx">Oturum Aç</asp:HyperLink>
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
        <br />
        <br />

    </div>
    <div style="width: 80%; margin: 0 auto; text-align:center;">
        <cc1:CollectionPager ID="CollectionPager1" runat="server" SliderSize="10" ShowPageNumbers="true" LabelText="Sayfa " PageSize="2" NextText=" İleri " LastText=" Son " BackText=" Geri "
            FirstText=" İlk " BackNextDisplay="HyperLinks" BackNextLocation="Split" ShowFirstLast="True" PageNumbersDisplay="Numbers" ControlCssClass="" ResultsFormat="{2} Yorumdan  {0}-{1} Arası Görüntüleniyor" HideOnSinglePage="False" MaxPages="100">
        </cc1:CollectionPager>
    </div>
    <br />
    <br />
</asp:Content>
