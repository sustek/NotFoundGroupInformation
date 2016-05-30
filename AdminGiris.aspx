<%@ Page Title="" Language="C#" MasterPageFile="~/everyone/Everyone.Master" AutoEventWireup="true" CodeBehind="AdminGiris.aspx.cs" Inherits="GameLab.AdminGiris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="icerik">
        <h1>OTURUM AÇMA</h1>
        <div style="margin: 0 auto; width: 30%;">
            <asp:TextBox ID="txt_username" runat="server" CssClass="form-control" Width="100%" placeholder="Yönetici Adı"></asp:TextBox>
            <br />
            <asp:TextBox ID="txt_pass" runat="server" CssClass="form-control" Width="100%" placeholder="Şifre" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="btn_login" runat="server"  CssClass="btn-primary" Text="Giriş Yap" Width="50%" OnClick="btn_login_Click" />

            <br />
            <asp:Label ID="lblbilgi" runat="server"></asp:Label>

        </div>

    </div>
</asp:Content>
