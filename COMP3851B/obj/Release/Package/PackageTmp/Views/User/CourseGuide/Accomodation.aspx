<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="Accomodation.aspx.cs" Inherits="COMP3851B.Views.User.CourseGuide.Accomodation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- site metas -->
    <title>Nearest Hospital</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="../../../CSS/style.css" />
    <!-- style css -->
    <link rel="stylesheet" href="css/style.css"> -->
    <style>
    * {
    box-sizing: border-box !important;
}

html {
    scroll-behavior: smooth;
}

.main-layout{
      color: #666666;
    font-size: 14px;
    font-family: 'Poppins', sans-serif;
    line-height: 1.80857;
    font-weight: normal;
    margin-top: 40px;
}


.banner_main {
    background: url('../../../Images/BACKGROUNDGUIDE.JPG');
    background-repeat: no-repeat;
    min-height: 700px;
    opacity: 0.8;
    display: flex;
    justify-content: center;
    align-content: center;
    align-items: center;
    background-size: 100% 100%;
}


    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-layout">
    <!-- banner -->
    <section class="banner_main">
        <div class="container">
            <div class="row d_flex">
                <div class="col-md-12">
                    <div class="text-bg">
                        <h1>Accomodations</h1>
                        <strong>In need of a place to stay?</strong>
                        <span>Come let us introduce you to our Students Apartment</span>
                        <p>

                            <head></head>
                        </p>
                        <!-- <a href="#">Read More</a> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>
    <!-- end banner -->
    <!-- choose  section -->
    <div class="choose ">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>How to contact/go to your nearest police station</h2>
                        <span>In Singapore you can always contact the police by dialing 999 to report whatever problem you are facing. But where can you go if you're in need to make a police report you might ask. </span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="choose_box">
                        <span>#</span>
                        <p>Apart from the campus, there are a lot of facilities that you can make use of to your benefits. In this case, let us introduce you to our comfortable yet affordable loft for our students.</p>
                        <h2>Student Apartment @ Bugis</h2>
                        <p>PSB Academy Students Apartment @ Bugis is located at 33 Liang Seah Street. There are five room types:</p>
                        <ul>
                            <li>- Single Delux</li>
                            <li>- Single Premier</li>
                            <li>- Double Delux</li>
                            <li>- Double Premier</li>
                            <li>- Triple Premier</li>
                        </ul>
                        <br><br/>
                        <img src="../../../Images/ACCOMODATIONS.jpg" alt="ACCOMODATIONS" style="width:100%;height: 720px">
                        <br><br/>
                        <p>Each unit is fully air-conditioned with an attached bathroom. Other furnishings include a mattress, a personal wardrobe, a study table, and a refrigerator. Free WIFI is also provided to each student. There is also a shared washer and dryer along with weekly housekeeping service.</p>
                        <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.793997177355!2d103.85384621592684!3d1.2983412620975656!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da19a55358ffff%3A0xc38fefe8049e1e5e!2s33%20Liang%20Seah%20St%2C%20Singapore%20189054!5e0!3m2!1sen!2ssg!4v1668940593936!5m2!1sen!2ssg" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></p>
                        <p>FOR ENQUIRIES, REACH OUT TO:</p>
                        <ul>
                            <li>PHONE NUMBER / WHATSAPP : +65 9109 2796</li>
                            <li>EMAIL : caixiaojun05@gmail.com</li>
                        </ul>
                    </div>
                </div>
            </div> 
        </div>
    </div>
    <!-- end choose  section -->
 
</div>
</asp:Content>
