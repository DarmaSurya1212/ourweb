<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddSeminar.aspx.cs" Inherits="COMP3851B.Views.Admin.Career.AddSeminar" %>
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

        .dataTable table td {
            padding: 10px;
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

    <br /><br /><br /><br />
    <br />
    <br />
    <br />
    <div style="margin-left: 212px">
        <div style="font-size:x-large" align="center">Add Seminar</div>
        <table class="w-100">
            <!--<tr>
                <td style="width: 73px; height: 18px;"></td>
                <td style="height: 18px; width: 172px">Seminar ID</td>
                <td style="height: 18px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>-->
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">Seminar Image</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" />
                </td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">Seminar Date<br />(YYYY-MM-DD)</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">Seminar Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">Seminar Desc</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="600px" Height="102px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">Seminar Location</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">Seminar Start Time</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 73px; height: 18px;"></td>
                <td style="width: 172px; height: 18px">Seminar End Time</td>
                <td style="height: 18px">
                    <asp:TextBox ID="TextBox6" runat="server" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">Seminar Open To:</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">&nbsp;</td>
                <td>
                     <!--Add & Search / Edit& Cancel buttons -->
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

                </td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">&nbsp;</td>
                <td>
                    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="seminarID" DataSourceID="SeminarDS"  CssClass="table table-condensed table-hover" Width="50%">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="seminarID" HeaderText="seminarID" InsertVisible="False" ReadOnly="True" SortExpression="seminarID" />
                            <asp:BoundField DataField="seminarImage" HeaderText="seminarImage" SortExpression="seminarImage" />
                            <asp:BoundField DataField="seminarDate" HeaderText="seminarDate" SortExpression="seminarDate" />
                            <asp:BoundField DataField="seminarName" HeaderText="seminarName" SortExpression="seminarName" />
                            <asp:BoundField DataField="seminarDesc" HeaderText="seminarDesc" SortExpression="seminarDesc" />
                            <asp:BoundField DataField="seminarLoc" HeaderText="seminarLoc" SortExpression="seminarLoc" />
                            <asp:BoundField DataField="seminarStartTime" HeaderText="seminarStartTime" SortExpression="seminarStartTime" />
                            <asp:BoundField DataField="seminarEndTime" HeaderText="seminarEndTime" SortExpression="seminarEndTime" />
                            <asp:BoundField DataField="seminarOpenTo" HeaderText="seminarOpenTo" SortExpression="seminarOpenTo" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SeminarDS" runat="server" ConnectionString="<%$ ConnectionStrings:FunUniversityConnectionString %>" DeleteCommand="DELETE FROM [seminar] WHERE [seminarID] = @seminarID" InsertCommand="INSERT INTO [seminar] ([seminarImage], [seminarDate], [seminarName], [seminarDesc], [seminarLoc], [seminarStartTime], [seminarEndTime], [seminarOpenTo]) VALUES (@seminarImage, @seminarDate, @seminarName, @seminarDesc, @seminarLoc, @seminarStartTime, @seminarEndTime, @seminarOpenTo)" SelectCommand="SELECT * FROM [seminar]" UpdateCommand="UPDATE [seminar] SET [seminarImage] = @seminarImage, [seminarDate] = @seminarDate, [seminarName] = @seminarName, [seminarDesc] = @seminarDesc, [seminarLoc] = @seminarLoc, [seminarStartTime] = @seminarStartTime, [seminarEndTime] = @seminarEndTime, [seminarOpenTo] = @seminarOpenTo WHERE [seminarID] = @seminarID">
                        <DeleteParameters>
                            <asp:Parameter Name="seminarID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="seminarImage" Type="String" />
                            <asp:Parameter DbType="Date" Name="seminarDate" />
                            <asp:Parameter Name="seminarName" Type="String" />
                            <asp:Parameter Name="seminarDesc" Type="String" />
                            <asp:Parameter Name="seminarLoc" Type="String" />
                            <asp:Parameter DbType="Time" Name="seminarStartTime" />
                            <asp:Parameter DbType="Time" Name="seminarEndTime" />
                            <asp:Parameter Name="seminarOpenTo" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="seminarImage" Type="String" />
                            <asp:Parameter DbType="Date" Name="seminarDate" />
                            <asp:Parameter Name="seminarName" Type="String" />
                            <asp:Parameter Name="seminarDesc" Type="String" />
                            <asp:Parameter Name="seminarLoc" Type="String" />
                            <asp:Parameter DbType="Time" Name="seminarStartTime" />
                            <asp:Parameter DbType="Time" Name="seminarEndTime" />
                            <asp:Parameter Name="seminarOpenTo" Type="String" />
                            <asp:Parameter Name="seminarID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
