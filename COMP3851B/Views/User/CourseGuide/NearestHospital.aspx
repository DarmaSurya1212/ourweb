<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="NearestHospital.aspx.cs" Inherits="COMP3851B.Views.User.CourseGuide.NearestHospital" %>
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
                        <h1>Nearest Hospital</h1>
                        <strong>In need of the Medical Service</strong>
                        <span>Come follow the step below</span>
                        <p>

         
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
                        <h2>How to contact/go to your nearest Hospital?</h2>
                        <span>In Singapore if you in need of medical support or emergencies that are related with your health, it is much needed to know which clinic or hospital that are the nearest to the campus. There are several hospitals that are bound in campus' area and over here we will show you some of the best ones. </span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="choose_box">
                        <span>01</span>
                        <p>Raffles Hospital</p>
                        <p>Raffles Hospital is a hospital built around the needs of our patients, providing specialist services combined with some of the most advanced medical technology. A tertiary care hospital, it is the flagship of the Raffles Medical Group, a leading private healthcare provider in Singapore and South East Asia.</p>
                        <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.789546825382!2d103.85489241526086!3d1.301158762091162!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da19b085f197c5%3A0xb27dc4acbd7f1d7!2sRaffles%20Hospital!5e0!3m2!1sen!2ssg!4v1667800699988!5m2!1sen!2ssg" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></p>
                        <p>PHONE NUMBER : +65 6311-2222</p>
                    </div>
                    <div class="choose_box">
                        <span>02</span>
                        <p>Singapore General Hospital</p>
                        <p>Singapore General Hospital (SGH)[a] is an academic health science centre and tertiary referral hospital in Singapore. It is located next to the Bukit Merah and Chinatown districts of the Central Region, close to the Outram Community Hospital (OCH), which functions as a supplementary community and rehabilitation hospital to SGH for newly-discharged patients.</p>
                        <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.822645099312!2d103.83320946526095!3d1.280055962151045!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da196f954c6cd5%3A0x5c6009b161544a96!2sSingapore%20General%20Hospital!5e0!3m2!1sen!2ssg!4v1667802949875!5m2!1sen!2ssg" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>></p>
                        <p>PHONE NUMBER : +65 6222-3322</p>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end choose  section -->
 
</div>
</asp:Content>
