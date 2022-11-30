<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CampusAchievement.aspx.cs" Inherits="COMP3851B.Views.Admin.EditCampusEventAndAchievemnt.CampusAchievement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../../CSS/AdminStyle.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia" />
   <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/font-awesome-line-awesome/css/all.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
  <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
</svg>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="main-content">
        <header>
            <h1>
                <asp:Label ID="Label2" runat="server" Text="Label">
                    <span class="fa-lastfm la-bars"></span>
                </asp:Label>
                Dashboard
           </h1>

            <div class="search-wrapper">
                <span class="las la-search"></span>
                <asp:TextBox ID="txtSearch" runat="server" placeholder="Search here"></asp:TextBox>
             
            </div>
           
            <div class="user-wrapper">
                <img src="../../../Images/UONEditedLogo.png" width="30px" height="30px" alt="" />
                <div>
                    <h4>School Admin</h4>
                    <small>Admin</small>
                </div>
            </div>

        </header>
          </div>
    <br />
    <br />
    <br />
    <br />
<div class="container"  style="margin-left: 280px">
    <div class="form-horizontal">
        <h2>Edit Campus Achievement</h2>
        <hr />

        <div class="form-group">
            <label>Campus Achievement</label>
       <div class="col-md-3"> 
           <asp:TextBox ID="txtCampusName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
            </div>
      
          <br /><br />

        <div class="form-group">
           <label>Campus Achievement Image</label>
       <div class="col-md-3">
            <asp:FileUpload ID="CampusImg" CssClass="form-control" runat="server" />
       </div>
        </div>
            <br /><br />
         <div class="form-group">
           <label>Achievement Date (yyyy-MM-DD)</label>
       <div class="col-md-3">
           <asp:TextBox ID="txtDate" CssClass="form-control" runat="server"></asp:TextBox>
       </div>
        </div>
        <br /><br />


        <div id="crud">
            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success" OnClick="btnAdd_Click" />
            <asp:Button ID="btnSearch2" runat="server" Text="Search" Class="btn btn-secondary" style="color:white" OnClick="btnSearch2_Click" />
        </div>

          <!--Notice Label -->
            <div>
                <asp:Label ID="lblNotice" runat="server"  CssClass="col-12 control-label" ForeColor="Red"></asp:Label>
            </div>
            
            <br />
        <div class="gridview">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4"  GridLines="None" AutoGenerateColumns="False" DataKeyNames="achievID" DataSourceID="achievement" CssClass="table table-condensed table-hover" Width="50%">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="achievID" HeaderText="achievID" InsertVisible="False" ReadOnly="True" SortExpression="achievID" />
                    <asp:BoundField DataField="acheivName" HeaderText="acheivName" SortExpression="acheivName" />
                    <asp:BoundField DataField="acheivImage" HeaderText="acheivImage" SortExpression="acheivImage" />
                    <asp:BoundField DataField="achievType" HeaderText="achievType" SortExpression="achievType" />
                    <asp:BoundField DataField="timeEarned" HeaderText="timeEarned" SortExpression="timeEarned" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="achievement" runat="server" ConnectionString="<%$ ConnectionStrings:FunUniversityConnectionString %>" DeleteCommand="DELETE FROM [campusAchievment] WHERE [achievID] = @achievID" InsertCommand="INSERT INTO [campusAchievment] ([acheivName], [acheivImage], [achievType], [timeEarned]) VALUES (@acheivName, @acheivImage, @achievType, @timeEarned)" SelectCommand="SELECT * FROM [campusAchievment]" UpdateCommand="UPDATE [campusAchievment] SET [acheivName] = @acheivName, [acheivImage] = @acheivImage, [achievType] = @achievType, [timeEarned] = @timeEarned WHERE [achievID] = @achievID">
                <DeleteParameters>
                    <asp:Parameter Name="achievID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="acheivName" Type="String" />
                    <asp:Parameter Name="acheivImage" Type="String" />
                    <asp:Parameter Name="achievType" Type="String" />
                    <asp:Parameter DbType="Date" Name="timeEarned" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="acheivName" Type="String" />
                    <asp:Parameter Name="acheivImage" Type="String" />
                    <asp:Parameter Name="achievType" Type="String" />
                    <asp:Parameter DbType="Date" Name="timeEarned" />
                    <asp:Parameter Name="achievID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

    </div>
    </div>
</asp:Content>
