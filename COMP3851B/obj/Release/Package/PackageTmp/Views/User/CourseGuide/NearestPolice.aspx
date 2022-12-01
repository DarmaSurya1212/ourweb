<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="NearestPolice.aspx.cs" Inherits="COMP3851B.Views.User.CourseGuide.NearestPolice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- site metas -->
    <title>Renew Passport</title>
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
                        <h1>Nearest Police Station</h1>
                        <strong>In need of the police?</strong>
                        <span>Come follow the step below</span>
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
                        <span>01</span>
                        <p>Apart from the campus, there are a lot of facilities that you can make use of to your benefits. In this case, the nearest police station that you might want to consider first is Old Hill Street Police Station</p>
                        <p>The Old Hill Street Police Station is a historic building and former police station of the Singapore Police Force located at Hill Street within the Downtown Core in the Central Area of Singapore.</p>
                        <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15955.22301906494!2d103.83436127529825!3d1.290868000000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da19a0f3b215cb%3A0xef958887dcf7cc3b!2sOld%20Hill%20Street%20Police%20Station!5e0!3m2!1sen!2ssg!4v1667798387765!5m2!1sen!2ssg" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></p>
                        <h2>IF YOU FIND YOURSELF IN NEED OF IMMEDIATE HELP, DO DIAL : 999</h2>
                    </div>
                </div>
            </div> 
        </div>
    </div>
    <!-- end choose  section -->
 
</div>

</asp:Content>
