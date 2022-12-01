<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="RenewPassport.aspx.cs" Inherits="COMP3851B.Views.User.CourseGuide.RenewPassport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

      <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- site metas -->
    <title>Nearest Police Station</title>
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
                        <h1>Renewing Passport</h1>
                        <strong>Passport expiring?</strong>
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
                        <h2>Knowing your Respective Embassy</h2>
                        <p>Every country have their respective embassy here in Singapore, this is because when you do have an issue that involve with your responsibilites, intead of going to your home country, you can go to your embassy and deal with whatever problems you are having. This can include, voting rights, visa application and in this case renewing passport.</p>
                        <p>Head on to google and locate your country's embassy as well as their customer hotline number. Not to mention that usually each embassy have their own website to guide you through a series of problems.</p>
                        <img src="../../../Images/IndoEmb.jpg" alt="Indonesian Embassy" style="width:1000px;height: 720px">
                        <br><br/>
                        <p>Above is an example of how does an embassy website lookslike, in the above case it is an Indonesia Embassy.</p>
                    </div>
                    <div class="choose_box">
                        <span>02</span>
                        <h2>Ask for requirements for the renewing of passport</h2>
                        <p>Every country have their own set of requirements and procedure when undertaking renewal of passport. However there are some the general requirements and data that you need to bring to undergo the procedure. This may consist of:</p>
                        <ul>
                            <li>- Passport Photo (For dimension, do contact your respective embassy</li>
                            <li>- Expired Passport</li>
                            <li>- Family Card</li>
                            <li>- Identification Card</li>
                        </ul>
                        <p>Just as mentioned, these are the general documents that most of the embassy need when undergoing a renewal of passport, to be more precise on what to bring and what not to bring, do contact your embassy and double check all the requiremnets,</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end choose  section -->
 
</div>
</asp:Content>
