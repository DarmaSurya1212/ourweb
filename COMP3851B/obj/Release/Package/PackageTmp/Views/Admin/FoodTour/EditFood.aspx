<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditFood.aspx.cs" Inherits="COMP3851B.Views.Admin.FoodTour.EditFood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    :Content ID="Content2" ContentPlaceHolderID="head" runat="server">
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
     <div style="margin-left: 212px">
        <div style="font-size:x-large" align="center">Edit Food</div>
        <table class="w-100">
            <tr>
                <td style="width: 73px; height: 18px;"></td>
                <td style="height: 18px; width: 172px">Food ID</td>
                <td style="height: 18px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                    <asp:Button ID= "btnRetrieve" runat="server" Font-Bold="True" Text="Retrieve Details" Width="150px" class="btn btn-success btn-rounded" OnClick="btnRetrieve_Click" />
                     </td>
            </tr>
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
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" Font-Bold="True" Width="120px" class="btn btn-success" OnClick="btnUpdate_Click" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" Font-Bold="True" Width="120px" class="btn btn-danger btn-rounded" OnClick="btnDelete_Click" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel"  Width="120px" class="btn btn-danger" CausesValidation="False" UseSubmitBehavior="False" />
                    
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
                    <asp:GridView ID="GridView1" runat="server" Width="890px" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="offset-sm-0" DataKeyNames="seminarID" ForeColor="Black">
                        <Columns>
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
                    <asp:SqlDataSource ID="seminarDS" runat="server" ConnectionString="<%$ ConnectionStrings:FunUniversityConnectionString %>" SelectCommand="SELECT * FROM [seminar]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br />
    </div>

</asp:Content>
