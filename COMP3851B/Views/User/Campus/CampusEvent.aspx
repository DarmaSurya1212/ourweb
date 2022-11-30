<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="CampusEvent.aspx.cs" Inherits="COMP3851B.Views.User.Campus.CampusEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../../CSS/style.css" />
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
            top: 120px;
            
        }
        .second-txt {
            position: absolute;
            top: 220px;
           left: 60px;
         
        }
        @media(max-width: 700px){

            .imageBanner{
                width: 100%;
                padding-top: 10px;
            }
             h3{
                 font-size: 30px;
             }
             h4{
                 font-size: 2rem;
             }
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
    <!--Content Title-->
        <div class="row">
            <img src="../../../Images/careersembanner.png" class="imageBanner" alt="semBanner" style="width:100%;height:auto;padding-top: 20px;" >
            <h3 class="first-txt" style="font-size:50px;font-weight:bold;color:white;width:500px">Career Events</h3>
            <h4 class="second-txt"  style="font-size:25px;font-weight:bold;color:white;width:800px">Know more people from school and <br>create a tight bonding with all of us</h4>
        </div>
         </div>
        <hr />

    <asp:ListView ID="LVEvent" runat="server">
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
                     <img src="../../../<%#Eval("eventImage")%>" alt="" style="width:350px;height :200px" /></a>
                </td>
                <td class="auto-style2" width="35%">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text='<%# Eval("eventName")%>'></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("eventDate", "{0:dd/MM/yyyy}")%>'></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("eventDesc")%>'></asp:Label>
                </td>
                <td width="35%">
                    <strong>Time:
                    <asp:Label ID="Label5" runat="server" Font-Bold="False" Text='<%# DateTime.Parse(Eval("eventBegintime").ToString()).ToString("hh:mm tt")%>'></asp:Label> &nbsp;-
                    <asp:Label ID="Label6" runat="server" Font-Bold="False" Text='<%# DateTime.Parse(Eval("eventEndtime").ToString()).ToString("hh:mm tt")%>'></asp:Label>
                    <br />
                   
                    </strong>

                    <strong>Place:
                         <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Size="Large" Text='<%# Eval("eventLoc")%>'></asp:Label>
                    </strong>
                </td>
            
        </ItemTemplate>

    </asp:ListView>
</asp:Content>
