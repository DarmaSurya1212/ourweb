<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="MakingPayments.aspx.cs" Inherits="COMP3851B.Views.User.CourseGuide.MakingPayments" %>
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

<body class="main-layout">
    <!-- banner -->
    <section class="banner_main">
        <div class="container">
            <div class="row d_flex">
                <div class="col-md-12">
                    <div class="text-bg">
                        <h1>Want to make a payment?</h1>
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
                        <h2>In need to make a payment for campuses needs?</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="choose_box">
                        <span>#</span>
                        <p>There are a range of ways to pay your fees at the University of Newcastle, depending on your level of study and your designation as a student.</p>
                        <p>You can pay upfront, using facilities such as myHub or our online payment portal, or via external options such as BPAY.</p>
                        <p>Eligible students can receive payment assistance and loans from the Australian Government, which are repaid through the taxation system.</p>
                        <p>These loans attract no real interest, although they are indexed each year according to changes in the Consumer Price Index.</p>
                        <p>All your bills can be viewed at myHub on the Account Enquiry tab.</p>
                        <img src="../../../Images/MYHUB.jpg" alt="myhub" style="width:100%;height: 720px">
                        <br><br/>
                        <br><br/>
                        <p>Go under Finance and there you can see all options such as</p>
                        <ul>
                            <li>Account Summary</li>
                            <li>Account Activity</li>
                            <li>Charges Due</li>
                            <li>Payments</li>
                            <li>Bills</li>
                            <li>My SA HELP eCAF</li>
                            <li>My HECS or FEE HELP eCAF</li>
                            <li>Bank Account Details</li>
                            <li>View My eCAN</li>
                        </ul>
                        <br><br/>
                        <img src="../../../Images/MYHUB2.jpg" alt="myhub2" style="width:100%;height: 720px">
                        <br><br/>
                        <p>On 1 January 2020, the Australian Government introduced the combined HELP loan limit. The combined HELP loan limit is a cap on the amount you can borrow from the Government to cover the costs of your University tuition fees. This HELP loan limit will increase annually inline with the Consumer Price Index (CPI).</p>
                    </div>
                </div>
            </div> 
        </div>
    </div>
    <!-- end choose  section -->
 
</body>


</asp:Content>
