<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="CampusAchievement.aspx.cs" Inherits="COMP3851B.Views.User.Campus.CampusAchievement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
    /* Three image containers (use 25% for four, and 50% for two, etc) */
.column {
  float: left;
  width: 20%;
  padding: 5px;
}
/* Clear floats after image containers */
.row::after {
  content: "";
  clear: both;
  display: table;
}

/*Style for video*/
.choose_box{
    color: #23262d;
    font-size: 16px;
    line-height: 28px;
    margin-bottom: 50px;
    text-align: center;
}

.choose .titlepage h2 {
    padding-bottom: 20px;
}

</style>
    <link rel="stylesheet" href="../../../CSS/style.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div style="display : flex ; align-items : center " >
        <div style = "margin-left: 80px; ">
        <!-- UON Building Image --> 

        
        <!-- text beside image -->
  
        <p style ="padding-left :40px ; padding-right : 40px;  font-size : 20px"><br /><br />First compiled in 2004, the QS World University Rankings currently ranks 1,000 of the world's finest universities. In the 2021 QS World University Rankings our University climbed ten places from last year to now sit among the world’s Top 200 Universities. Our sector has faced a number of external challenges and the University of Newcastle itself has dealt with bushfires, droughts as well as a pandemic affecting our students, staff and communities in the past year.<br /><br />The move from 207 to 197 in twelve months reflects the University’s unwavering focus on delivering inspiring and innovative teaching and learning programs for our students and leading critical research breakthroughs.</p>
    
        </div>
    </div>

    <br />
    <div style="text-align:center; margin-top : 20px; font-size: 30px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;"><strong>Campus Achivement</strong></div>

<asp:ListView ID="LVAchievement" runat="server">
        <LayoutTemplate>
            <table>
                <tr class="row">
                        
                        <asp:PlaceHolder ID="ItemPlaceholder" runat="server"></asp:PlaceHolder>
                    
                    </tr>
    
            </table>
        </LayoutTemplate>

        <ItemTemplate>
            <td class="col-md-4" style="padding:50px; padding-left: 95px">
    <img src="../../../<%#Eval("acheivImage")%>" alt="" style="width:300px;height :300px" /></a><br />
                <strong>Achievement:</strong>
      <figcaption style=" font-size:16px;"><%#Eval("acheivName") %></figcaption>
  </td>
            
        </ItemTemplate>

    </asp:ListView>

  <div class="choose_box">
    <h2>HEAR FROM OUR FELLOW FRESHMAN!</h2>
    <video width="860" height="520" controls>
     <source src="../../../video/COMP PROJECT.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>
  </div>

</asp:Content>
