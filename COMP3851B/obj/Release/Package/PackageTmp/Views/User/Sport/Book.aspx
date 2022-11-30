<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="COMP3851B.Views.User.Sport.Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../../CSS/style.css" />
    <link rel="stylesheet" href="css.content/Style.css" />
<!-- booking section starts  -->

    <style>
        .booking .booking-form {
           padding:2rem;
           background: var(--light-bg);
        }
        .booking .flex{
           display: flex;
           flex-wrap: wrap;
           gap:2rem;
        }
        .booking .flex .inputBox{
           flex:1 1 41rem;
        }
        .booking .flex .inputBox input{
           width: 100%;
           padding:1.2rem 1.4rem;
           font-size: 1.6rem;
           color:var(--light-black);
           text-transform: none;
           margin-top: 1.5rem;
           border:var(--border);
        }
        .booking .flex .inputBox input:focus{
           background: var(--black);
           color:var(--white);
        }
        .booking .flex .inputBox input:focus::placeholder{
           color:var(--light-white);
        }
        .booking .flex .inputBox span{
           font-size: 1.5rem;
           color:var(--light-black);
        }
        .booking .btn{
           margin-top: 2rem;
        }

         .first-txt {
            position: absolute;
            top: 150px;
            text-align: center;
            text-transform: uppercase;
            
        }
        .second-txt {
            position: absolute;
            top: 250px;
            left: -20px;
        } 

       
        }
    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container-fluid">
    <!--Content Title-->
       
        <div class="row">
            <img src="../../../Images/football pitch.jpg" alt="semBanner" style="width:100%;height:400px">
            <h3 class="first-txt" style="font-size:50px;font-weight:bold;color:white;width:500px">Sports Club</h3>
            <h3 class="second-txt"  style="font-size:25px;font-weight:bold;color:white;width:800px">Here are the sports club available in school.</h3>
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
                    <img src="../../../<%#Eval("sportPict")%>" alt="" style="width:350px;height :200px" /></a>
                </td>
                <td class="auto-style2" width="35%">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("sportName")%>'></asp:Label>
                    <br />
                 
                    <asp:Label ID="Label3" runat="server" Font-Size="Large" Text='<%# Eval("sportsDescription")%>'></asp:Label>
                </td>
                <td width="35%">
                    <strong style="font-size:large">Club President:</strong>
                    <asp:Label ID="Label4" runat="server" Font-Size="Large" Text='<%# Eval("presidentName")%>'></asp:Label>
                    <br />
                   
                    <label style="font-size:large">Contact Person</label>
                    <asp:Label ID="Label7" runat="server" Font-Size="Large" Font-Bold="False" Text='<%# Eval("phoneNumber")%>'></asp:Label>
                    </strong>
                </td>
                </ItemTemplate>
        </asp:ListView>
    </div>

    <asp:SqlDataSource ID="SeminarDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FunUniversityConnectionString %>"
        SelectCommand="select * from sport order by sportID desc">
      </asp:SqlDataSource>


</asp:Content>
