<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="LateSubmission.aspx.cs" Inherits="COMP3851B.Views.User.CourseGuide.LateSubmission" %>
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
                        <h1>Late Submission</h1>
                        <strong>Late to submit your assignment?</strong>
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
                        <h2>Late Submission</h2>
                        <span>Late to submit your assignments due to specific reasoning? Come and let's discover the regulation! </span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="choose_box">
                        <span>#</span>
                        <h2>Strong Reasonable "WHY"</h2>
                        <p>Understand that your late submission will result you a deduction of mark. Assignments handed in after the submission deadline will be subject to penalty, with a 5% deduction of the final agreed mark for each calendar day that the work is submitted late.</p>
                        <p>Your action do have consequences. However, if there is a special reason why you submit your assignment late, such as:</p>
                        <ul>
                            <li>- Health Reason</li>
                            <li>- Going through grief</li>
                            <li>- Problem within the country</li>
                            <li>- And so on</li>
                        </ul>
                        <br><br/>
                        <p>Please do contact your course coordinator for a new arrangement of submission, and submit any supporting document that might support your reasoning. </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end choose  section -->
 
</div>

</asp:Content>
