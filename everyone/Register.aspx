<%@ Page Title="" Language="C#" MasterPageFile="~/everyone/Everyone.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GameLab.everyone.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 45%;
            height: 48px;
        }

        .auto-style2 {
            width: 45%;
            height: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="icerik">

        <h1>YENİ KULLANICI OLUŞTURMA</h1>
        <div style="width: 80%; margin: 0 auto;">
            <table style="width: 100%;">
                <tr>
                    <td style="text-align: right; line-height: 40px;" class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Boş Olamaz!!" Font-Size="Small" ControlToValidate="txt_isim" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        Ad Soyad&nbsp; : </td>
                    <td style="text-align: left;" class="auto-style1">
                        <asp:TextBox ID="txt_isim" runat="server" CssClass="form-control" Width="40%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; line-height: 40px;" class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Boş Olamaz!!" Font-Size="Small" ControlToValidate="txt_username" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        Kullanıcı Adı&nbsp;&nbsp; : </td>
                    <td style="text-align: left;" class="auto-style2">
                        <asp:TextBox ID="txt_username" runat="server" CssClass="form-control" Width="40%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; line-height: 40px; width: 45%;" class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="Boş Olamaz!!" Font-Size="Small" ControlToValidate="txt_password" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        Şifre&nbsp;&nbsp; :</td>
                    <td style="text-align: left;">
                        <asp:TextBox ID="txt_password" runat="server" CssClass="form-control" Width="40%" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; line-height: 40px; width: 45%;" class="auto-style1">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_password" ControlToValidate="txt_sifretekrar" ErrorMessage="Şifreler Eşleşmiyor!!" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
                        Şifre Tekrar&nbsp;&nbsp; :</td>
                    <td style="text-align: left;">
                        <asp:TextBox ID="txt_sifretekrar" runat="server" CssClass="form-control" Width="40%" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; line-height: 40px; width: 45%;" class="auto-style1">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="Yanlış Format" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="Boş Olamaz!!" Font-Size="Small" ControlToValidate="txt_email" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        E-mail&nbsp;&nbsp; :</td>
                    <td style="text-align: left;">
                        <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" Width="40%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center;" colspan="2">
                        <asp:Button ID="btn_kaydol" runat="server" CssClass="btn-primary" Text="Üyeliği Oluştur" Width="120px" OnClick="btn_kaydol_Click" />
                        <br />
                        <asp:Label ID="lbl_usernamekontrol" runat="server"></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>
        </div>



    </div>
</asp:Content>

