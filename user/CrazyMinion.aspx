<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="CrazyMinion.aspx.cs" Inherits="GameLab.user.CrazyMinion" %>
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
    <div style="width: 80%; margin: 0 auto; text-align:center;">
        <cc1:CollectionPager ID="CollectionPager1" runat="server" SliderSize="10" ShowPageNumbers="true" LabelText="  Sayfa  " PageSize="5" NextText="   -İleri-   " LastText="  -Son  " BackText="   -Geri-   "
            FirstText="İlk-  " BackNextDisplay="HyperLinks" BackNextLocation="Split" ShowFirstLast="True" PageNumbersDisplay="Numbers" ControlCssClass="" ResultsFormat="{2} Yorumdan  {0}-{1} Arası Görüntüleniyor" HideOnSinglePage="False" MaxPages="100" PageNumbersStyle="btn-toolbar" UseSlider="True">
        </cc1:CollectionPager>
    </div>
    <br />
    <br />

</asp:Content>
