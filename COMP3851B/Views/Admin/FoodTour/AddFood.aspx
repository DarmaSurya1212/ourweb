<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddFood.aspx.cs" Inherits="COMP3851B.Views.Admin.FoodTour.AddFood" %>
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

    <br />
    <br />
    <br />
    <br />
    <div style="margin-left: 212px">
        <div style="font-size:x-large" align="center">Add Food</div>
        <table class="w-100">
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">Food Image</td>
                <td>
                    <asp:FileUpload ID="FileUpload2" runat="server" Width="300px" />
                </td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">Food Name</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">Food Desc</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" Width="600px" Height="102px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">Food Location</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">Food Recommendation Level (1 to 10)</td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">Food Price</td>
                <td>
                    <asp:TextBox ID="TextBox13" runat="server" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <!--<tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">Seminar Open To:</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="600px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">Food Date<br />(YYYY-MM-DD)</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="600px"></asp:TextBox>
                </td>
            </tr>-->
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">&nbsp;</td>
                <td>
                    <asp:Button ID="btnAdd" runat="server" Font-Bold="True" Text="Add" Width="120px" class="btn btn-success" OnClick="btnAdd_Click" />
                    <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-secondary" style="color: white" Text="Search" OnClick="btnSearch_Click"  />
                   
                </td>
                <td>
                 

            </tr>


            <tr>
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

            
                
                    
            

            <tr> 
                <asp:Label ID="lblNotice" runat="server"  CssClass="col-12 control-label" ForeColor="Red"></asp:Label>
                
                <td style="width: 73px">&nbsp;</td>
                <td style="width: 172px">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" Width="890px" AutoGenerateColumns="False"  DataKeyNames="foodID" CssClass="table table-condensed table-hover" DataSourceID="localfoodDS">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="foodID" HeaderText="foodID" InsertVisible="False" ReadOnly="True" SortExpression="foodID" />
                            <asp:BoundField DataField="foodName" HeaderText="foodName" SortExpression="foodName" />
                            <asp:BoundField DataField="foodImage" HeaderText="foodImage" SortExpression="foodImage" />
                            <asp:BoundField DataField="foodLoc" HeaderText="foodLoc" SortExpression="foodLoc" />
                            <asp:BoundField DataField="foodRecLvl" HeaderText="foodRecLvl" SortExpression="foodRecLvl" />
                            <asp:BoundField DataField="foodPrice" HeaderText="foodPrice" SortExpression="foodPrice" />
                            <asp:BoundField DataField="foodDesc" HeaderText="foodDesc" SortExpression="foodDesc" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="localfoodDS" runat="server" ConnectionString="<%$ ConnectionStrings:FunUniversityConnectionString %>" SelectCommand="SELECT * FROM [localFood]" DeleteCommand="DELETE FROM [localFood] WHERE [foodID] = @foodID" InsertCommand="INSERT INTO [localFood] ([foodName], [foodImage], [foodLoc], [foodRecLvl], [foodPrice], [foodDesc]) VALUES (@foodName, @foodImage, @foodLoc, @foodRecLvl, @foodPrice, @foodDesc)" UpdateCommand="UPDATE [localFood] SET [foodName] = @foodName, [foodImage] = @foodImage, [foodLoc] = @foodLoc, [foodRecLvl] = @foodRecLvl, [foodPrice] = @foodPrice, [foodDesc] = @foodDesc WHERE [foodID] = @foodID">
                        <DeleteParameters>
                            <asp:Parameter Name="foodID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="foodName" Type="String" />
                            <asp:Parameter Name="foodImage" Type="String" />
                            <asp:Parameter Name="foodLoc" Type="String" />
                            <asp:Parameter Name="foodRecLvl" Type="String" />
                            <asp:Parameter Name="foodPrice" Type="String" />
                            <asp:Parameter Name="foodDesc" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="foodName" Type="String" />
                            <asp:Parameter Name="foodImage" Type="String" />
                            <asp:Parameter Name="foodLoc" Type="String" />
                            <asp:Parameter Name="foodRecLvl" Type="String" />
                            <asp:Parameter Name="foodPrice" Type="String" />
                            <asp:Parameter Name="foodDesc" Type="String" />
                            <asp:Parameter Name="foodID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
