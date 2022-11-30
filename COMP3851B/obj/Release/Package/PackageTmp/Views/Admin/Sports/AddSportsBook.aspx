<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddSportsBook.aspx.cs" Inherits="COMP3851B.Views.Admin.Sports.AddSportsBook" %>
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

    <style>
       


        #crud:not(:last-child){
            margin-right: 10px;
        }
    </style>
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
<div class="container"  style="margin-left: 280px">

    <div class="form-horizontal">
        <h2>Edit Sports Book</h2>
        <hr />

        <div class="form-group">
            <label>President Name</label>
       <div class="col-md-3"> 
           <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
            </div>
        
      
          <br /><br />

           <div class="form-group">
            <label>President Phone Number</label>
       <div class="col-md-3"> 
           <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
            </div>
        
      
          <br /><br />

    <div class="form-group">
            <label>Sports Club Name</label>
       <div class="col-md-3"> 
           <asp:TextBox ID="txtSportsClubName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
           
          </div>
      
          <br /><br />

     <div class="form-group">
            <label>Sports Club Description</label>
       <div class="col-md-3"> 
           <asp:TextBox ID="txtSportsDescription" runat="server" CssClass="form-control" TextMode="MultiLine" Width="600px" Height="102px"></asp:TextBox>
        </div>
           
          </div>
      
          <br /><br />

      <div class="form-group">
            <label>Sports Club Image</label>
            <asp:Label ID="lblCampusImage" runat="server"  CssClass="col-md-2 control-label" Text="Sports Club Image"></asp:Label>
       <div class="col-md-3">
            <asp:FileUpload ID="sportsImg" CspssClass="form-control" runat="server" placeholder="Sport Club Image" />
       </div>
        </div>
    </div>
    <br /><br />

        <div id="crud">
            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success" OnClick="btnAdd_Click" />
            <asp:Button ID="btnSearch" runat="server" Text="Search" Class="btn btn-secondary" style="color:white" OnClick="btnSearch_Click" />
        </div>

        
            <br />
            <hr />

            <!--Notice Label -->
            <div>
                <asp:Label ID="lblNotice" runat="server"  CssClass="col-12 control-label" ForeColor="Red"></asp:Label>
            </div>
            
            <br />
    <asp:GridView ID="GridView1" runat="server"  Width="50%" AutoGenerateColumns="False" DataKeyNames="sportID" DataSourceID="sportsDataSource" CssClass="table table-condensed table-hover">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="sportID" HeaderText="sportID" InsertVisible="False" ReadOnly="True" SortExpression="sportID" />
            <asp:BoundField DataField="sportName" HeaderText="sportName" SortExpression="sportName" />
            <asp:BoundField DataField="presidentName" HeaderText="presidentName" SortExpression="presidentName" />
            <asp:BoundField DataField="sportPict" HeaderText="sportPict" SortExpression="sportPict" />
            <asp:BoundField DataField="phoneNumber" HeaderText="phoneNumber" SortExpression="phoneNumber" />
            <asp:BoundField DataField="sportsDescription" HeaderText="sportsDescription" SortExpression="sportsDescription" />
        </Columns>

    </asp:GridView>
     
    <asp:SqlDataSource ID="sportsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:FunUniversityConnectionString %>" DeleteCommand="DELETE FROM [sport] WHERE [sportID] = @sportID" InsertCommand="INSERT INTO [sport] ([sportName], [presidentName], [sportPict], [phoneNumber], [sportsDescription]) VALUES (@sportName, @presidentName, @sportPict, @phoneNumber, @sportsDescription)" SelectCommand="SELECT * FROM [sport]" UpdateCommand="UPDATE [sport] SET [sportName] = @sportName, [presidentName] = @presidentName, [sportPict] = @sportPict, [phoneNumber] = @phoneNumber, [sportsDescription] = @sportsDescription WHERE [sportID] = @sportID">
        <DeleteParameters>
            <asp:Parameter Name="sportID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="sportName" Type="String" />
            <asp:Parameter Name="presidentName" Type="String" />
            <asp:Parameter Name="sportPict" Type="String" />
            <asp:Parameter Name="phoneNumber" Type="String" />
            <asp:Parameter Name="sportsDescription" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="sportName" Type="String" />
            <asp:Parameter Name="presidentName" Type="String" />
            <asp:Parameter Name="sportPict" Type="String" />
            <asp:Parameter Name="phoneNumber" Type="String" />
            <asp:Parameter Name="sportsDescription" Type="String" />
            <asp:Parameter Name="sportID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
     
    </div>

</asp:Content>
