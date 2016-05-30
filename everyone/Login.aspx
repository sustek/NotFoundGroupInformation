<%@ Page Title="" Language="C#" MasterPageFile="~/everyone/Everyone.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GameLab.everyone.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="icerik">
        <h1>OTURUM AÇMA</h1>
        <div style="margin: 0 auto; width: 30%;">
            <asp:TextBox ID="txt_username" runat="server" CssClass="form-control" Width="100%" placeholder="Kullanıcı Adı"></asp:TextBox>
            <br />
            <asp:TextBox ID="txt_pass" runat="server" CssClass="form-control" Width="100%" placeholder="Şifre" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="btn_login" runat="server" CssClass="btn-primary" Text="Giriş Yap" Width="50%" OnClick="btn_login_Click" />

            <br />
            <asp:Label ID="lblbilgi" runat="server"></asp:Label>

        </div>

    </div>
</asp:Content>
