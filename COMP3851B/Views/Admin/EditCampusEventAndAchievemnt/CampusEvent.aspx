<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CampusEvent.aspx.cs" Inherits="COMP3851B.Views.Admin.EditCampusEventAndAchievemnt.CampusEvent" %>
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
        <h2>Edit Homepage Campus</h2>
        <hr />

        <div class="form-group">
            <label>Campus Event Name</Label>
       <div class="col-md-3"> 
           <asp:TextBox ID="txtCampusEvent" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
            </div>
      
          <br /><br />

        <div class="form-group">
           <label>Campus Event Image</label>
       <div class="col-md-3">
            <asp:FileUpload ID="CampusEventImage" CssClass="form-control" runat="server" />
       </div>
        </div>
            <br /><br />

         <div class="form-group">
            <label>Campus Event Desc</Label>
       <div class="col-md-3"> 
           <asp:TextBox ID="txteventDesc" runat="server" CssClass="form-control" TextMode="MultiLine"  Width="600px" Height="102px"></asp:TextBox>
        </div>
            </div>
      
          <br /><br />

         <div class="form-group">
            <label>Campus Event Location</Label>
       <div class="col-md-3"> 
           <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
            </div>
      
          <br /><br />

           <div class="form-group">
            <label>Campus Event Date (yyyy-MM-DD)</Label>
       <div class="col-md-3"> 
           <asp:TextBox ID="txtEventDate" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
            </div>
      
          <br /><br />

         <div class="form-group">
            <label>Event Begin Time</Label>
       <div class="col-md-3"> 
           <asp:TextBox ID="txtEventBeginTime" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
            </div>
      
          <br /><br />

         <div class="form-group">
            <label>Event End Time</Label>
       <div class="col-md-3"> 
           <asp:TextBox ID="txtEventEndTime" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
            </div>
      
          <br /><br />

        <div id="crud">
            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success" OnClick="btnAdd_Click" />
            <asp:Button ID="btnSearch" runat="server" Text="Search"  cssClass="btn btn-secondary" style="color:white" OnClick="btnSearch_Click" />
            <br /><br />

              <div>
                <asp:Label ID="lblNotice" runat="server"  CssClass="col-12 control-label" ForeColor="Red"></asp:Label>
            </div>
            
            <br />
        <div class="gridview">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4"  GridLines="None" AutoGenerateColumns="False" DataKeyNames="eventID" DataSourceID="campusEventData" CssClass="table table-condensed table-hover" Width="50%">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="eventID" HeaderText="eventID" InsertVisible="False" ReadOnly="True" SortExpression="eventID" />
                    <asp:BoundField DataField="eventName" HeaderText="eventName" SortExpression="eventName" />
                    <asp:BoundField DataField="eventImage" HeaderText="eventImage" SortExpression="eventImage" />
                    <asp:BoundField DataField="eventDesc" HeaderText="eventDesc" SortExpression="eventDesc" />
                    <asp:BoundField DataField="eventType" HeaderText="eventType" SortExpression="eventType" />
                    <asp:BoundField DataField="eventDate" HeaderText="eventDate" SortExpression="eventDate" />
                    <asp:BoundField DataField="eventBeginTime" HeaderText="eventBeginTime" SortExpression="eventBeginTime" />
                    <asp:BoundField DataField="eventEndTime" HeaderText="eventEndTime" SortExpression="eventEndTime" />
                    <asp:BoundField DataField="eventLoc" HeaderText="eventLoc" SortExpression="eventLoc" />
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
            <asp:SqlDataSource ID="campusEventData" runat="server" ConnectionString="<%$ ConnectionStrings:FunUniversityConnectionString %>" DeleteCommand="DELETE FROM [campusEvent] WHERE [eventID] = @eventID" InsertCommand="INSERT INTO [campusEvent] ([eventName], [eventImage], [eventDesc], [eventType], [eventDate], [eventBeginTime], [eventEndTime], [eventLoc]) VALUES (@eventName, @eventImage, @eventDesc, @eventType, @eventDate, @eventBeginTime, @eventEndTime, @eventLoc)" SelectCommand="SELECT * FROM [campusEvent]" UpdateCommand="UPDATE [campusEvent] SET [eventName] = @eventName, [eventImage] = @eventImage, [eventDesc] = @eventDesc, [eventType] = @eventType, [eventDate] = @eventDate, [eventBeginTime] = @eventBeginTime, [eventEndTime] = @eventEndTime, [eventLoc] = @eventLoc WHERE [eventID] = @eventID">
                <DeleteParameters>
                    <asp:Parameter Name="eventID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="eventName" Type="String" />
                    <asp:Parameter Name="eventImage" Type="String" />
                    <asp:Parameter Name="eventDesc" Type="String" />
                    <asp:Parameter Name="eventType" Type="String" />
                    <asp:Parameter DbType="Date" Name="eventDate" />
                    <asp:Parameter DbType="Time" Name="eventBeginTime" />
                    <asp:Parameter DbType="Time" Name="eventEndTime" />
                    <asp:Parameter Name="eventLoc" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="eventName" Type="String" />
                    <asp:Parameter Name="eventImage" Type="String" />
                    <asp:Parameter Name="eventDesc" Type="String" />
                    <asp:Parameter Name="eventType" Type="String" />
                    <asp:Parameter DbType="Date" Name="eventDate" />
                    <asp:Parameter DbType="Time" Name="eventBeginTime" />
                    <asp:Parameter DbType="Time" Name="eventEndTime" />
                    <asp:Parameter Name="eventLoc" Type="String" />
                    <asp:Parameter Name="eventID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Event" runat="server" ConnectionString="<%$ ConnectionStrings:FunUniversityConnectionString %>" DeleteCommand="DELETE FROM [campusEvent] WHERE [eventID] = @eventID" InsertCommand="INSERT INTO [campusEvent] ([eventName], [eventImage], [eventDesc], [eventType], [eventDate], [eventBeginTime], [eventEndTime]) VALUES (@eventName, @eventImage, @eventDesc, @eventType, @eventDate, @eventBeginTime, @eventEndTime)" SelectCommand="SELECT * FROM [campusEvent]" UpdateCommand="UPDATE [campusEvent] SET [eventName] = @eventName, [eventImage] = @eventImage, [eventDesc] = @eventDesc, [eventType] = @eventType, [eventDate] = @eventDate, [eventBeginTime] = @eventBeginTime, [eventEndTime] = @eventEndTime WHERE [eventID] = @eventID">
                <DeleteParameters>
                    <asp:Parameter Name="eventID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="eventName" Type="String" />
                    <asp:Parameter Name="eventImage" Type="Object" />
                    <asp:Parameter Name="eventDesc" Type="String" />
                    <asp:Parameter Name="eventType" Type="String" />
                    <asp:Parameter DbType="Date" Name="eventDate" />
                    <asp:Parameter DbType="Time" Name="eventBeginTime" />
                    <asp:Parameter DbType="Time" Name="eventEndTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="eventName" Type="String" />
                    <asp:Parameter Name="eventImage" Type="Object" />
                    <asp:Parameter Name="eventDesc" Type="String" />
                    <asp:Parameter Name="eventType" Type="String" />
                    <asp:Parameter DbType="Date" Name="eventDate" />
                    <asp:Parameter DbType="Time" Name="eventBeginTime" />
                    <asp:Parameter DbType="Time" Name="eventEndTime" />
                    <asp:Parameter Name="eventID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        </div>
       </div>
    </div>
</asp:Content>
