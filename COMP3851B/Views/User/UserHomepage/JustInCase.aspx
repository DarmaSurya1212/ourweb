<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="JustInCase.aspx.cs" Inherits="COMP3851B.Views.User.UserHomepage.JustInCase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width-device-width, initial scale=1.0" />
    <link rel="stylesheet" href="../../../CSS/style.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section class="header">
    <div id="backgroundImage"></div>
    <div class ="text-box">
        <h1>Sydney's Most Trusted University</h1>
        <p>UON is one of the oldest and the most historic university in Australia that provide student the best course they can choose
            <br />Our aim is to make a student think critically and they can impact to the future of the world.
        </p>
        <a href="" class="imageBtn">Visit Us To Know More</a>
    </div>
    </section>
    <section class="course">
        <h1>Course We Offer</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

        <div class="row">
            <div class="course-col">
                <asp:Label ID="lblFirstCourse" runat="server" Text="<h3>Intermediate</h3>"></asp:Label> 
                 <asp:Label ID="lblFirstCourseDesc" runat="server" Text="<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>"></asp:Label>
            </div>
            <div class="course-col">
                <asp:Label ID="lblSecondCourse" runat="server" Text="<h3>Degree</h3>"></asp:Label> 
                 <asp:Label ID="lblSecondCourseDesc" runat="server" Text="<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>"></asp:Label>
            </div>
            <div class="course-col">
                <asp:Label ID="lblThirdCourse" runat="server" Text="<h3>Post-Graduate</h3>"></asp:Label>
                <asp:Label ID="lblThirdCourseDesc" runat="server" Text="<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>"></asp:Label>
            </div>
        </div>
    </section>
    <section class="campus">
        <h1> Our Global Campus</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        <div class="row">
            <div class="campus-col">
                <asp:Image ID="imgFirstCampus" runat="server" Height="250px" Width="420px" ImageUrl='../../../Images/school2.jpeg'/>
                <div class="layer">
                    <asp:Label ID="lblFirstCampus" runat="server" Text="<h3>Sydney</h3>"></asp:Label>
                </div>
        </div>

                  <div class="campus-col">
                      <asp:Image ID="imgSecondCampus" runat="server" Height="250px" Width="420px" ImageUrl='../../../Images/UON2.jpg'/>
            
                <div class="layer">
                    <asp:Label ID="lblSecondCampus" runat="server" Text="<h3>Newcastle Drive</h3>"></asp:Label>
                </div>
        </div>

                  <div class="campus-col">
                      <asp:Image ID="imgThirdCampus" runat="server" Height="250px" Width="420px" ImageUrl='../../../Images/UON3.jpg' />
                <div class="layer">
                    <asp:Label ID="lblThirdCampus" runat="server" Text="<h3>Singapore</h3>"></asp:Label>
                </div>
        </div>

        </div>
    </section>

    <section class="facilities">
        <h1> Our Facilities </h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

         <div class="row">
            <div class="facilities-col">

                <asp:Image ID="imgFirstFacility" runat="server" Height="200px" Width="350px" ImageUrl='../../../Images/library.jpg' />
                <asp:Label ID="lblFirstFacility" runat="server" Text="<h3>World Class Library</h3>"></asp:Label>
                <asp:Label ID="lblFirstFacilityText" runat="server" Text="<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>"></asp:Label>
                 
        </div>

                  <div class="facilities-col">
    
                <asp:Image ID="ImgSecodFacility" runat="server" Height="200px" Width="350px" ImageUrl='../../../Images/compLab.jpg' />
                      <asp:Label ID="lblSecondFacility" runat="server" Text="<h3>Computer Lab</h3>"></asp:Label>
                      <asp:Label ID="lblSecondFacilityText" runat="server" Text="<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>"></asp:Label>
        </div>

                  <div class="facilities-col">

                        <asp:Image ID="imgThirdFacility" runat="server" Height="200px" Width="350px" ImageUrl='../../../Images/playground.jpg' />
                      <asp:Label ID="lblThirdFacility" runat="server" Text="<h3>World Class Playground</h3>"></asp:Label> 
                      <asp:Label ID="lblThirdFacilityText" runat="server" Text="<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>"></asp:Label>
        </div>

        </div>
    </section>

    <section class="testimonial">
        <h1>What Our Student Says</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

        <div class="row">
            <div class="testimonial-col">
                <img src="../../../Images/man.png" />
                <div>
                    <asp:Label ID="lblFirstFeedback" runat="server" Text="<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>"></asp:Label>
                    <asp:Label ID="lblFirstFeedbackName" runat="server" Text="<h3>Jason Chandra</h3>"></asp:Label>
                      <i class="fas fa-star"></i>
                     <i class="fas fa-star"></i>
                     <i class="fas fa-star"></i>
                     <i class="fas fa-star"></i>
                     <i class="fas fa-star-half-o"></i>
                </div>
            </div>

            <div class="testimonial-col">
                <img src="../../../Images/woman.png" />
                <div>
                    <asp:Label ID="lblSecondFeedback" runat="server" Text="<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>"></asp:Label>
                    <asp:Label ID="lblSecondFeedbackName" runat="server" Text="<h3>Amanda barkley</h3>"></asp:Label> 
                    <i class="fas fa-star"></i>
                     <i class="fas fa-star"></i>
                     <i class="fas fa-star"></i>
                     <i class="fas fa-star"></i>
                     <i class="fas fa-star-o"></i>
                </div>
            </div>
        </div>
    </section>

     <section class="contactUs">
        <h1>Enroll for our course in the future from anywhere around the world</h1>
        <a href="ContactUs.aspx" class="contactBtn">CONTACT US</a>
    </section>
</asp:Content>
