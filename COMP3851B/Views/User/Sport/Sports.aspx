<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/User.Master" AutoEventWireup="true" CodeBehind="Sports.aspx.cs" Inherits="COMP3851B.Views.User.Sport.Sports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <link rel =" stylesheet" href="css.content/Style.css" />
    <link rel="stylesheet" href="../../../CSS/style.css" />

    <style>
    .mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 40px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

      

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

        /*html {
            font-size: 62.5%;
            overflow-x: hidden;
        }*/



</style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- home section starts  -->

<section class="home">
    <br /><br />
   <div class="slideshow-container">
       
<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <a href="Book.aspx"><img src="image/futsal.jpg" style="width:100%"></a>
  <div class="text">Futsal</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <a href="Book.aspx"><img src="image/basketball.jpg" style="width:100%"></a>
  <div class="text">Basketball</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <a href="Book.aspx"><img src="image/e-sport.jpg" style="width:100%"></a>
  <div class="text">E-sport</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>


   <!--<div class="swiper home-slider">

      <div class="swiper-wrapper">

         <div class="swiper-slide slide" style="background:url(images/RONALDO.JPG) no-repeat">
            <div class="content">
               <span>Meditate, Grow, Healthy</span>
               <h3>BE THE CHANGE YOU WANT</h3>
               <a href="Book.aspx" class="btn">discover more</a>
            </div>
         </div>

         <div class="swiper-slide slide" style="background:url(images/STEPH.JPG) no-repeat">
            <div class="content">
               <span>Meditate, Grow, Healthy</span>
               <h3>DON'T GET COMFORTABLE</h3>
               <a href="Package.aspx" class="btn">discover more</a>
            </div>
         </div>

         <div class="swiper-slide slide" style="background:url(images/CANELLO.JPG) no-repeat">
            <div class="content">
               <span>Meditate, Grow, Healthy</span>
               <h3>HURT IS ONLY THE BEGINNING</h3>
               <a href="Package.aspx" class="btn">discover more</a>
            </div>
         </div>
              
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>

   </div>-->

</section>

<!-- home section ends -->


<!-- home about section starts  -->

<section class="home-about" style="overflow: hidden; ">

   <div class="image" style="width: 300px;
    float:left; display:inline-block">
      <img src="images/HUGS.JPG" alt="">
   </div>

   <div class="content" style="overflow: hidden; display: inline-block ">
      <h3>about us</h3>
      <p>Our sports club aims to help student to connect to their desireed sport that they want to contribute with. Over here not only that you will find your new friend but at the same time you will connect with your community while playing a game of sports that you like. We believe that in helping students on not only their physicallity but thier mental strength as well.</p>
   </div>

</section>

<!-- home about section ends -->

<!-- services section starts  -->

<section class="services">

   <h1 class="heading-title"> what we do </h1>

   <div class="box-container">

      <div class="box">
         <img src="images/icon-1.png" />
         <h3>adventure</h3>
      </div>

      <div class="box">
         <img src="images/icon-2.png" alt="">
         <h3>mini games</h3>
      </div>

      <div class="box">
         <img src="images/icon-3.png" alt="">
         <h3>trekking</h3>
      </div>

      <div class="box">
         <img src="images/icon-4.png" alt="">
         <h3>camping</h3>
      </div>

   </div>

</section>

<!-- services section ends -->

<!-- home offer section starts  -->

<section class="home-offer">
   <div class="content">
      <h3>up to 465 active members</h3>
      <p>Join us now and connect with your fellow members while playing a game you like. Help us to reach more active members so as we can all achieve the best of our mental state.</p>
      <a href="Book.aspx" class="btn">Find your desired sports</a>
   </div>
</section>

<!-- home offer section ends -->

<!-- home packages section starts  -->

<section class="home-packages">

   <h1 class="heading-title"> clubs we offer </h1>

   <div class="box-container">

      <div class="box">
         <div class="image">
            <img src="images/BASKETBALL2.JPG" alt="">
         </div>
         <div class="content">
            <h3>Basketball Club</h3>
            <p>Play alongside your friend and compete in a game of hoops!</p>
            <a href="Book.aspx" class="btn">Join Now</a>
         </div>
      </div>

      <div class="box">
         <div class="image">
            <img src="images/ESPORTS.JPG" alt="">
         </div>
         <div class="content">
            <h3>E-sports Club</h3>
            <p>Play your facourite video games alongside your mates and compete!</p>
            <a href="Book.aspx" class="btn">Join Now</a>
         </div>
      </div>
      
      <div class="box">
         <div class="image">
            <img src="images/MESSI.JPG" alt="">
         </div>
         <div class="content">
            <h3>Soccer Club</h3>
            <p>World cup right around the corner, might as well play a game of soccer!</p>
            <a href="Book.aspx" class="btn">Join Now</a>
         </div>
      </div>

   </div>

</section>

<!-- home packages section ends -->

    <script>
        let slideIndex = 0;
        showSlides();

        function showSlides() {
            let i;
            let slides = document.getElementsByClassName("mySlides");
            let dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 2500); // Change image every 5 seconds
        }
    </script>

</asp:Content>


