<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="LocalFoodTour.aspx.cs" Inherits="COMP3851B.Views.User.LocalFood.LocalFoodTour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../../CSS/style.css" />
     <style>
        .first-txt {
            position: absolute;
            top: 120px;
            text-align: center;
            text-transform: uppercase;
            
        }
        .second-txt {
            position: absolute;
            top: 220px;
            text-align: center;
        }

         @media(max-width: 700px) {

             td {
                 display:inline-block;
                
             }
         }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
    <!--Content Title-->
        <div class="row">
            <img src="../../../Images/restaurant.jpg" alt="foodBanner" style="width:100%;height: 500px; opacity: 0.7;">
            <h3 class="first-txt" style="font-size:50px;font-weight:bold;color:#ee6b6b">FOOD FANATICS</h3>
            <h3 class="second-txt"  style="font-size:25px;font-weight:bold;color:#ee6b6b;">Just arrived in Singapore and not sure what to eat?<br />Here are some of the most popular foods that you should find outside the campus as recommended by some of your seniors.</h3>
        </div>
        <hr />
         <br />
         <asp:ListView ID="FoodTourView" DataSourceID="FoodTourDataSource" runat="server" >
             <LayoutTemplate>
                <table>
                    <tr class="row">
                        
                        <asp:PlaceHolder ID="ItemPlaceholder" runat="server"></asp:PlaceHolder>
                    
                    </tr>
                </table>
            </LayoutTemplate>
           
            <ItemTemplate>
                    <td runat="server" class="col-md-4" style="padding: 30px; padding-left: 95px" >
                        <asp:Image ID="Image1" runat="server" Height="200px" Width="350px" ImageUrl='<%# "~/images/" + Eval("foodImage") %>' />
                        <br /><br />
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Larger" Text='<%# Eval("foodName")%>'></asp:Label>
                        <br />
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("foodLoc")%>'></asp:Label>
                        <br /><br />
                        <asp:Label ID="Label10" runat="server" Text='<%# "<b>Recommendation Level (1 to 10):</b>" +" "+ Eval("foodRecLvl")%>'></asp:Label>
                        <br />
                        <asp:Label ID="Label11" runat="server" Text='<%# "<b>Price: S$</b>" +" "+ Eval("foodPrice")%>'></asp:Label>
                        <br />
                        <asp:Label ID="Label12" runat="server" Font-Bold="False" Text='<%# Eval("foodDesc")%>'></asp:Label>
                    </td>
            </ItemTemplate>
        </asp:ListView>
    </div>

    <asp:SqlDataSource ID="FoodTourDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FunUniversityConnectionString %>"
        SelectCommand="select * from localFood">
    </asp:SqlDataSource>
</asp:Content>
