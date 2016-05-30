<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="ParkingYorumlar.aspx.cs" Inherits="GameLab.admin.ParkingYorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="icerik">
        <h4>PARKING OYUNU YORUMLARI</h4>

    </div>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="navi" DataKeyNames="CommentId" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="CommentId" HeaderText="CommentId" InsertVisible="False" ReadOnly="True" SortExpression="CommentId" />
        <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
        <asp:BoundField DataField="CommentDate" HeaderText="CommentDate" SortExpression="CommentDate" />
        <asp:BoundField DataField="CommenterName" HeaderText="CommenterName" SortExpression="CommenterName" />
        <asp:BoundField DataField="GameID" HeaderText="GameID" SortExpression="GameID" />
    </Columns>
    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#330099" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    <SortedAscendingCellStyle BackColor="#FEFCEB" />
    <SortedAscendingHeaderStyle BackColor="#AF0101" />
    <SortedDescendingCellStyle BackColor="#F6F0C0" />
    <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GameLabDBConnectionString %>" DeleteCommand="DELETE FROM [Comments] WHERE [CommentId] = @original_CommentId AND (([Comment] = @original_Comment) OR ([Comment] IS NULL AND @original_Comment IS NULL)) AND (([CommentDate] = @original_CommentDate) OR ([CommentDate] IS NULL AND @original_CommentDate IS NULL)) AND (([CommenterName] = @original_CommenterName) OR ([CommenterName] IS NULL AND @original_CommenterName IS NULL)) AND (([GameID] = @original_GameID) OR ([GameID] IS NULL AND @original_GameID IS NULL))" InsertCommand="INSERT INTO [Comments] ([Comment], [CommentDate], [CommenterName], [GameID]) VALUES (@Comment, @CommentDate, @CommenterName, @GameID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Comments] WHERE ([GameID] = @GameID)" UpdateCommand="UPDATE [Comments] SET [Comment] = @Comment, [CommentDate] = @CommentDate, [CommenterName] = @CommenterName, [GameID] = @GameID WHERE [CommentId] = @original_CommentId AND (([Comment] = @original_Comment) OR ([Comment] IS NULL AND @original_Comment IS NULL)) AND (([CommentDate] = @original_CommentDate) OR ([CommentDate] IS NULL AND @original_CommentDate IS NULL)) AND (([CommenterName] = @original_CommenterName) OR ([CommenterName] IS NULL AND @original_CommenterName IS NULL)) AND (([GameID] = @original_GameID) OR ([GameID] IS NULL AND @original_GameID IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_CommentId" Type="Int32" />
        <asp:Parameter Name="original_Comment" Type="String" />
        <asp:Parameter Name="original_CommentDate" Type="String" />
        <asp:Parameter Name="original_CommenterName" Type="String" />
        <asp:Parameter Name="original_GameID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Comment" Type="String" />
        <asp:Parameter Name="CommentDate" Type="String" />
        <asp:Parameter Name="CommenterName" Type="String" />
        <asp:Parameter Name="GameID" Type="Int32" />
    </InsertParameters>
    <SelectParameters>
        <asp:Parameter DefaultValue="2" Name="GameID" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Comment" Type="String" />
        <asp:Parameter Name="CommentDate" Type="String" />
        <asp:Parameter Name="CommenterName" Type="String" />
        <asp:Parameter Name="GameID" Type="Int32" />
        <asp:Parameter Name="original_CommentId" Type="Int32" />
        <asp:Parameter Name="original_Comment" Type="String" />
        <asp:Parameter Name="original_CommentDate" Type="String" />
        <asp:Parameter Name="original_CommenterName" Type="String" />
        <asp:Parameter Name="original_GameID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
