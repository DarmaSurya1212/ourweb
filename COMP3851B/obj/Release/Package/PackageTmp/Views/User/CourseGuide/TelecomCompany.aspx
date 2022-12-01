<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="TelecomCompany.aspx.cs" Inherits="COMP3851B.Views.User.CourseGuide.TelecomCompany" %>
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
    <!-- body -->

<div class="main-layout">
    <!-- banner -->
    <section class="banner_main">
        <div class="container">
            <div class="row d_flex">
                <div class="col-md-12">
                    <div class="text-bg">
                        <h1>Best Prepaid Card In Singapore</h1>
                        <strong>Choosing your desired prepaid card can be hard</strong>
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
                        <h2>Picking Your Prepaid Card in Singapore</h2>
                        <span>Having trouble picking your desired prepaid card?</span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="choose_box">
                        <span>01</span>
                        <p>Singtel</p>
                        <p>Singtel’s normal prepaid SIM card is called hi! SIM card, while Singtel’s tourist SIM card is called hi!Tourist SIM card. Here’s the overview of all Singtel’s prepaid SIM card and Singtel’s tourist SIM Card.</p>
                        <p>These are the prepaid package provided by SINGTEL</p>
                        <img src="../../../Images/SINGTEL.jpg" alt="SINGTEL" style="width:100%;height:650px">
                        <br><br/>
                        <p>Click below for the nearest SINGTEL kiosk:</p>
                        <br><br/>
                        <p>Singtel Exclusive Retailer@Raffles City</p>
                        <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7977.6164671170845!2d103.84789927881752!3d1.2892869223733354!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da192a3ec1249f%3A0x7cbce77fec6c84d!2sSingtel%20Exclusive%20Retailer%40Raffles%20City!5e0!3m2!1sen!2ssg!4v1668914152951!5m2!1sen!2ssg" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></p>
                        <br><br/>
                    </div>
                    <div class="choose_box">
                        <span>02</span>
                        <p>Starhub</p>
                        <p>StarHub’s normal prepaid SIM card is called StarHub Prepaid, while StarHub’s tourist SIM card is called StarHub Travel Prepaid. Below is the comparison of StarHub’s prepaid SIM cards.</p>
                        <p>These are the prepaid package provided by STARHUB</p>
                        <img src="../../../Images/STARHUB.jpg" alt="STARHUB" style="width:100%;height:650px">
                        <br><br/>
                        <p>Click below for the nearest STARHUB kiosk:</p>
                        <br><br/>
                        <p>Starhub Exclusive Retailer@ Level 3 FUNAN</p>
                        <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9487.033660967323!2d103.85024942348458!3d1.2905213819165995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da191579a7e815%3A0xc472f927c61da5ca!2sStarHub!5e0!3m2!1sen!2ssg!4v1668914380658!5m2!1sen!2ssg" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></p>
                        <br><br/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end choose  section -->
 
</div>
</asp:Content>
