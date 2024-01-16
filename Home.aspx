<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />


            
            <script type="text/javascript">
                $(window).load(function () {
                    $('#slider').nivoSlider();
                });
            </script>
        	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style="background-color: #CC99FF"></style> <marquee><h1 style="color: #FF0000; font-size: medium; font-style: italic">Welcome to Maruti Suzuki</h1></marquee>
     <marquee style="height: 137px; width: 1050px"><img src="back/slide.png" /></marquee>
     <center>
         <br />
         
         Maruti Suzuki, India's largest passenger car maker,</center>
     <center>all set to introduce new vehicles in the </center>
     <center>domestic market in 2016. Notably, the auto maker</center>
     <center>has a stronghold in the Indian automobile market </center>
     <center>and its hatchbacks like WagonR </center>
     <center>and Swift are immensely popular among customers. </center>
     <div style="margin:auto ;width:400px;height:500px"> 
<div id="slider" class="nivoSlider">
                    <img src="Images/slider/car1.gif" alt="" />
                    <a href="#"><img src="Images/slider/car2.jpg" alt="" title="Best-In-Class Highway Fuel Economy" /></a>
                    <img src="Images/slider/car3.jpg" alt="" title="" />
                    <img src="Images/slider/car4.jpg" alt="" title="#htmlcaption" />
                </div>
                <div id="htmlcaption" class="nivo-html-caption">
                    <strong>User friendly advanced technology</strong>
    </div>
    </div>
    <marquee><center><img src="back/welnext.jpg" alt="" /></center></marquee>

</asp:Content>

