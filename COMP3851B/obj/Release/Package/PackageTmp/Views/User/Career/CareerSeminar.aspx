<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="CareerSeminar.aspx.cs" Inherits="COMP3851B.Views.User.Career.CareerSeminar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <style>
        .button {
  background-color: #84B4FD;
  border: none;
  color: white;
  padding: 5px 32px;
  text-align: center;
  text-decoration: none;
  /*display: inline-block;*/
  font-size: 12px;
  height:30px;
    }
        .first-txt {
            position: absolute;
            top: 100px;
            left: 50px;
        }
        .second-txt {
            position: absolute;
            top: 220px;
            left: 34px;
        }


        </style>

    <link rel="stylesheet" href="../../../CSS/style.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="container-fluid">
    <!--Content Title-->
        <div class="row">
            <img src="../../../Images/careersembanner.png" alt="semBanner" style="width:100%;height:auto">
            <h3 class="first-txt" style="font-size:50px;font-weight:bold;color:white;width:500px">CAREER SEMINARS</h3>
            <h3 class="second-txt"  style="font-size:25px;font-weight:bold;color:white;width:800px">Here are the upcoming career seminars organized by the school.</h3>
        </div>
        <hr />
        <asp:ListView ID="CareerSeminarView" DataSourceID="SeminarDataSource" runat="server">
        <LayoutTemplate>
        <table class="w-100">
            <tr runat="server" class="header">
              <th runat="server" colspan="3"></th>
            </tr>
            <tr runat="server" id="groupPlaceholder" />
        </table>
        </LayoutTemplate>    
        <GroupTemplate>
                <tr runat="server" id="ProductsRow">
                    <td runat="server" id="itemPlaceholder" />
                </tr>
        </GroupTemplate>
        <ItemTemplate>
                <td runat="server" id="itemPlaceholder" />
                <td class="auto-style1" width="25%">
                    <asp:Image ID="Image1" runat="server" Height="200px" Width="350px" ImageUrl='<%# "~/Images/" + Eval("seminarImage") %>' />
                </td>
                <td class="auto-style2" width="35%">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text='<%# Eval("seminarName")%>'></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("seminarDate", "{0:dd/MM/yyyy}")%>'></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("seminarDesc")%>'></asp:Label>
                </td>
                <td width="35%">
                    <strong>Location:</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("seminarLoc")%>'></asp:Label>
                    <br />
                    <strong>Time:
                    <asp:Label ID="Label5" runat="server" Font-Bold="False" Text='<%# DateTime.Parse(Eval("seminarStarttime").ToString()).ToString("hh:mm tt")%>'></asp:Label> &nbsp;-
                    <asp:Label ID="Label6" runat="server" Font-Bold="False" Text='<%# DateTime.Parse(Eval("seminarEndtime").ToString()).ToString("hh:mm tt")%>'></asp:Label>
                    <br />
                    Open To:
                    <asp:Label ID="Label7" runat="server" Font-Bold="False" Text='<%# Eval("seminarOpenTo")%>'></asp:Label>
                    </strong>
                </td>
                </ItemTemplate>
        </asp:ListView>
    </div>

    <asp:SqlDataSource ID="SeminarDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FunUniversityConnectionString %>"
        SelectCommand="select * from seminar order by seminarDate">
      </asp:SqlDataSource>
</asp:Content>
