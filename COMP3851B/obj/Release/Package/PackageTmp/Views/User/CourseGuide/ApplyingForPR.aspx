<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="ApplyingForPR.aspx.cs" Inherits="COMP3851B.Views.User.CourseGuide.ApplyingForPR" %>
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
                        <h1>Applying For PR</h1>
                        <strong>Want to be a permanent resident here in Singpaore?</strong>
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
                        <h2>Renewing Passports</h2>
                        <span>Having trouble renewing your passport? Come here and let us show you how! </span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="choose_box">
                        <span>01</span>
                        <h2>Knowing your eligibility</h2>
                        <p>As a foreigner, you may be eligible to apply for permanent residence if you are a/an:</p>
                        <ul>
                            <li>- Spouse</li>
                            <li>- Unmarried Child</li>
                            <li>- Aged parents</li>
                            <li>- Holder of an Employment Pass or S Pass</li>
                            <li>- Student</li>
                            <li>- Foreign investor</li>
                        </ul>
                        <br><br/>
                        <p> ICA takes into account factors such as the individual’s family ties to Singaporeans, economic contributions, qualifications, age, family profile and length of residency, to assess the applicant’s ability to contribute to Singapore and integrate into our society, as well as his or her commitment to sinking roots.</p>
                    </div>
                    <div class="choose_box">
                        <span>02</span>
                        <h2>Picking an Agency</h2>
                        <p>There are various agency that can help you with applying your PR eligibility</p>
                        <img src="../../../Images/PR.jpg" alt="Permanet Resident" style="width:100%;height: 720px">
                        <br><br/>
                        <p>Above is one of the example of an agency that helps with a Permanent Residency (PR) process. This agency is called Singapore Professional Immigration Consultancy (SPIC)</p>
                        <ul>
                            <li>PHONE NUMBER : +65 9773-8026</li>
                            <li>PHONE NUMBER : +65 6970-7991</li>
                            <li>EMAIL : enquiries@spic.com.sg</li>
                        </ul>
                        <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8255718478626!2d103.8456542163357!3d1.278173162153715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da196affffffff%3A0x1c8ec99d42ca46ca!2sSingapore%20Business%20Federation!5e0!3m2!1sen!2ssg!4v1668912386148!5m2!1sen!2ssg" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></p>
                        <br><br/>
                        <br><br/>
                        <img src="../../../Images/PR2.jpg" alt="Permanet Resident 2" style="width:100%;height: 720px">
                        <br><br/>
                        <p>The above agency is caled Singapore Top Immigration (STI)</p>
                        <ul>
                            <li>PHONE NUMBER : +65 6818-6030</li>
                            <li>WHATSAPP : +65 8533-3336</li>
                            <li>EMAIL : Info@Singaporetopimmigration.sg</li>
                        </ul>
                        <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.823921923224!2d103.84753911592696!3d1.279234912151731!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da19120f6d690f%3A0x28fecf3a87d1b52d!2sSGX%20Centre%202!5e0!3m2!1sen!2ssg!4v1668912507521!5m2!1sen!2ssg" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></p>
                        <br><br/>
                        <p>There are plenty of agency that you can look up to in google, but do take note of scammers, because there are tends to be a lot of fake consultant PR agency in the internet. The above presented are one of the best.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end choose  section -->
 
</div>
</asp:Content>
