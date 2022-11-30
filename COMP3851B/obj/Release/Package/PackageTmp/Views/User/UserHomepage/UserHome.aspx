<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="COMP3851B.Views.User.UserHomepage.UserHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
     
   </style>

    <meta name="viewport" content="width-device-width, initial scale=1.0" />
    <link rel="stylesheet" href="../../../CSS/style.css" />
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.0/css/fontawesome.min.css" integrity="sha384-z4tVnCr80ZcL0iufVdGQSUzNvJsKjEtqYZjiQrrYKlpGow+btDHDfQWkFjoaz/Zr" crossorigin="anonymous">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="header">
    <div id="backgroundImage"></div>
    <div class ="text-box">
        <h1>Freshman student Community</h1>
        <p>UON is one of the campus that has a vision to help freshman adapting to the new life of university
            <br />Our aim is to make a student think critically and they can impact to the future of the world.
        </p>
        <a href="../Campus/CampusAchievement.aspx" class="imageBtn">Visit Us To Know More</a>
    </div>
    </section>
    <section class="course">
        <h1>Quotes</h1>
        <p style="font-size: 16px;">This quote is being displayed to help you keep positive and We hope that it can helps you adapting to your new life and new environment.<br /> We hope 
            that we can help you in your journey and wish you guys best of luck here 😊.
        </p>
        
        <asp:ListView ID="LVQuotes" runat="server" >
            <LayoutTemplate>
                <table>
                    <tr class="row">
                        
                        <asp:PlaceHolder ID="ItemPlaceholder" runat="server"></asp:PlaceHolder>
                    
                    </tr>
                </table>
            </LayoutTemplate>
            
            <ItemTemplate>
                <td class="course-col"  data-aos="fade-up" data-aos-duration="1700"> 
               <h3><%#Eval("quotePerson") %></h3>
                <p><%#Eval("quote") %></p>       
                </td>
            </ItemTemplate>
        </asp:ListView>
    </section>
    <section class="campus">
        <h1> Our Global Campus</h1>
        <p style="font-size: 16px;">This is the location of our campus around the world</p>
        <asp:ListView ID="LVCampus" runat="server">
            <LayoutTemplate>
                <table>
                    <tr class="row">
                        
                        <asp:PlaceHolder ID="ItemPlaceholder" runat="server"></asp:PlaceHolder>
                    
                    </tr>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                
                    <div>
                 <td class="campus-col" data-aos="zoom-out" data-aos-duration="1700">
                     <img src="../../../<%#Eval("campusImg") %>" alt="" class= "" height="250px" width="350px" /></a>
                    <div class="layer">
                    <h3><%#Eval("campusLoc") %></h3>

                    </div>
                   </td>
              
                </div>

            </ItemTemplate>
        </asp:ListView>
       

      
    </section>
    <br /><br /><br>

    <section class="facilities">
        <h1> Our Facilities </h1>
        <p style="font-size: 16px;">The facilities that students can use that is provided by our campus</p>

        <asp:ListView ID="LVFacility" runat="server">
            <LayoutTemplate>
             <table>
                    <tr class="row">
                        
                        <asp:PlaceHolder ID="ItemPlaceholder" runat="server"></asp:PlaceHolder>
                    
                    </tr>
                </table>

            </LayoutTemplate>

             <ItemTemplate>
                <td class="facilities-col"> 
                <img src="../../../<%#Eval("FacilityPict") %>" alt="" class= "" height="200px" width="350px" /></a>
               <h3><%#Eval("facilityName") %></h3>
                <p style="font-size:18px;"><%#Eval("facilityDesc") %></p>       
                </td>
            </ItemTemplate>
        </asp:ListView>

    </section>

    <section class="testimonial">
        <h1>What Our Student Says</h1>
        <p style="font-size: 16px;">Feedback given by the students and we hope to receive feedback from you in the future to helps us serve you better</p>
        <asp:ListView ID="LVTestimonial" runat="server">
             <LayoutTemplate>
                <table>
                    <tr class="row">
                        
                        <asp:PlaceHolder ID="ItemPlaceholder" runat="server"></asp:PlaceHolder>
                    
                    </tr>
                </table>
            </LayoutTemplate>
             <ItemTemplate>
                <td class="testimonial-col">
                    
                    <img src="../../../Images/man.png" />
                   
                 
                   <div>
                    <p><%#Eval("studentFeedback") %></p>
                        <h3><%#Eval("studentName") %></h3>
                       </div>
                    
                   </td>
              
                

            </ItemTemplate>
        </asp:ListView>
    
    </section>

     <section class="contactUs" data-aos="zoom-out-left" data-aos-duration="1700">
        <h1>Give feedback to us and help us improve the service</h1>
        <a href="../StudentFeedback/StudentFeedback.aspx" class="contactBtn">Give Feedback</a>
    </section>
    
      <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
    AOS.init();
  </script>
</asp:Content>
