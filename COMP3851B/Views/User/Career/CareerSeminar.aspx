<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CareerSeminar.aspx.cs" Inherits="COMP3851B.Views.User.CareerNew.CareerSeminar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            top: 200px;
            left: 50px;
        }

        .second-txt {
            position: absolute;
            top: 300px;
            left: 50px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <!--Content Title-->
        <div class="row">
            <img src="../../../Images/careersembanner.png" alt="semBanner" style="width:100%;height:auto">
            <h3 class="first-txt" style="font-size:50px;font-weight:bold;color:white">CAREER SEMINARS</h3>
            <h3 class="second-txt"  style="font-size:25px;font-weight:bold;color:white">Here are the upcoming career seminars organized by the school.</h3>
        </div>
        <br />
        <asp:Table ID="Table1" runat="server" Height="200px" Width="100%">  
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Width="30%"><img src="../../../Images/insert%20image.png" alt="seminarImage3" style="align-content:center;width:80%;height:auto"></asp:TableCell>  
                <asp:TableCell runat="server" Width="40%"><p style="font-size:25px;font-weight:bold;padding:0px;margin:0px">seminarName</p><div style="font-size:20px;font-weight:bold;">seminarDate</div>seminarDesc</asp:TableCell>  
                <asp:TableCell runat="server" Width="30%"><b>Location:</b> seminarLoc<br /><b>Time:</b> seminarStarttime - seminarEndtime<br /><b>Open to:</b> seminarOpenTo<!--<br /><br /><button class="button">Register</button>--></asp:TableCell>  
            </asp:TableRow>  
            <asp:TableRow runat="server">  
                <asp:TableCell runat="server" Width="30%"><img src="../../../Images/insert%20image.png" alt="seminarImage2" style="align-content:center;width:80%;height:auto"></asp:TableCell>  
                <asp:TableCell runat="server" Width="40%"><p style="font-size:25px;font-weight:bold;padding:0px;margin:0px">seminarName</p><div style="font-size:20px;font-weight:bold;">seminarDate</div>seminarDesc</asp:TableCell>  
                <asp:TableCell runat="server" Width="30%"><b>Location:</b> seminarLoc<br /><b>Time:</b> seminarStarttime - seminarEndtime<br /><b>Open to:</b> seminarOpenTo<!--<br /><br /><button class="button">Register</button>--></asp:TableCell>  
            </asp:TableRow>    
            <asp:TableRow runat="server">  
                <asp:TableCell runat="server" Width="30%"><img src="../../../Images/insert%20image.png" alt="seminarImage3" style="align-content:center;width:80%;height:auto"></asp:TableCell>  
                <asp:TableCell runat="server" Width="40%"><p style="font-size:25px;font-weight:bold;padding:0px;margin:0px">seminarName</p><div style="font-size:20px;font-weight:bold;">seminarDate</div>seminarDesc</asp:TableCell>  
                <asp:TableCell runat="server" Width="30%"><b>Location:</b> seminarLoc<br /><b>Time:</b> seminarStarttime - seminarEndtime<br /><b>Open to:</b> seminarOpenTo<!--<br /><br /><button class="button">Register</button>--></asp:TableCell>  
            </asp:TableRow>    
        </asp:Table>
    </div>
</asp:Content>
