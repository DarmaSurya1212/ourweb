<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="RenewStudentPass.aspx.cs" Inherits="COMP3851B.Views.User.CourseGuide.RenewStudentPass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- site metas -->
    <title>Renewing Student Pass</title>
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
                        <h1>How to renew your Student Pass!</h1>
                        <strong>We'll teach you how</strong>
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
                        <h2>How to renew / apply your student pass</h2>
                        <span>Having trouble renewing / applying your student pass? Don't know where to start? Come here and let us show you how step by step on how to renew your Student Pass! </span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="choose_box">
                        <span>01</span>
                        <p>You will need to apply for a Student’s Pass if you are a foreigner who has been accepted and offered a place to pursue full-time study at a Government, Government-aided or independent school in Singapore. You do not need to apply for a Student’s Pass if you already have a Dependent’s Pass or Immigration Exemption Order. </p>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="choose_box">
                        <span>02</span>
                        <p>You will need the following documents/ information to complete your Student's Pass application, please have them ready before you apply:</p>
                        <ul>
                            <li>- The Registration Acknowledgement Letter from the school you plan to attend</li>
                            <li>- Your travel document biodata page and birth certificate (if applicable)</li>
                            <li>- Your personal information, including the list of countries / places you have previously resided in, your educational background, employment history and financial support</li>
                            <li>- Your parents’, spouse's, and/or siblings’ personal information (if applicable)</li>
                            <li>- Your residential address and contact details in Singapore</li>
                            <li>- Your email address</li>
                            <li>- Your recent, passport-sized, digital, colour photograph taken within the last three months. Please refer to the photo guidelines for more information.</li>
                            <li>- Foreign-born applicants aged 12 years 0 day or below, are required to submit their vaccination information to Health Promotion Board (HPB) w.e.f. 1 February 2019. For details, please visit the HPB website.</li>
                        </ul>
                        <p></p>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="choose_box">
                        <span>03</span>
                        <p>You must submit your new/renewal Student’s Pass application online using the e-Service at least four weeks before your course begins. This application includes the following process:</p>
                            <ul>
                                <li>- Obtain a Registration Acknowledgement Letter from the school you plan to attend.</li>
                                <li>- Log in to e-Service to complete the application forms (Form 16A – Student’s Details, and V103 – Student’s Parents) using the unique reference number indicated on the Registration Acknowledgement Letter.</li>
                                <li>- Your local sponsor must then log in to e-Service to complete and submit forms V39s and V39Q (Undertaking by Local Sponsor).</li>
                        </ul>
                        <p></p>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="choose_box">
                        <span>04</span>
                        <p>A non-refundable S$30 processing fee is payable, can be made using:</p>
                            <ul>
                                <li>- Visa or MasterCard credit/debit card or,</li>
                                <li>- American Express (AMEX) credit card or,</li>
                                <li>- Internet Direct Debit (DBS/POSB, OCBC, UOB and Standard Chartered Bank Internet Banking accounts in Singapore) or,</li>
                                <li>- PayNow.</li>
                        </ul>
                        <p></p>
                    </div> 
                </div>
            </div>
        </div>
    </div>
    <!-- end choose  section -->
 
</div>

</asp:Content>
