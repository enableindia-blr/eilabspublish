<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="eilabs.HomeTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Home Page</title>
    
    <link href="css/bootstrap-grid.css" rel="stylesheet" runat="server" />
    <link href="css/bootstrap-reboot.css" rel="stylesheet" runat="server"/>
    <link href="css/bootstrap.css" rel="stylesheet" runat="server"/>
   
    <style>
        .header {
  background-color: #f1f1f1;
  padding: 15px;
  text-align: center;
}
        .content {
  padding: 16px;
  overflow:hidden;
}
#navbar1 {
 /* overflow: hidden;*/
  
}
.sticky {
  position: fixed;
  top: 0;
  width: 100%;
  background-color:blue!important;
  color:black!important;
  z-index:500;
}

.sticky + .content {
  padding-top: 60px;
}
.navbarcolor {
    background-color:lightskyblue!important;
    color:black!important;
}
.navbarcolor a:hover{
    color:white!important;
}
.navtext {
    color:black!important;
}
.navtext a:hover {
    color:white!important;
}
.btncss{
    background-color:lightskyblue!important;
    color:black!important;
    border:none!important;
    font-size:16px!important;
}
.btncss:hover{
    border:1px solid black!important;
}
.imgmd{
    height:130px;
    background-repeat: no-repeat;
    background-size: cover;
}
.imgwdhg2
{
    height:400px;
    background-repeat: no-repeat;
    background-size: cover;
}
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 3.5s;
  animation-name: fade;
  animation-duration: 3.0s;
}

@-webkit-keyframes fade {
  from {background-color:lightskyblue !important;} 
  to {background-color:blue !important;}
}

@keyframes fade {
  from {background-color:lightskyblue !important;} 
  to {background-color:blue !important;}
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="header" style="margin-left:-15px;margin-right:-15px">
                <p class="h5 mr-3"style="display: inline">Are you an Innovator</p>
                <span class="h5"><a class="btn btncss h5" style="border: 1px solid black;" href="projectdiscovery.aspx">Upload Your Solutions</a></span>
            </div>            
            <nav class="navbar navbar-expand-md navbar-light bg-info" style="height:auto; margin-left:-15px;margin-right:-15px" id="navbar1">
                    <div class="navbar-header">                        
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#collapsibleNavbar" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <a class="navbar-brand h5" runat="server" href="~/default.aspx"><img src="images/ei_Labs_logo_60.png" alt="EI Labs Logo" class="img-fluid"/></a>
                    </div>
                    <div class="collapse navbar-collapse" id="collapsibleNavbar">
                        <ul class="navbar-nav ml-auto pt-1">
                            <li class="nav-item navtext"><a class="nav-link h5" runat="server" href="~/default.aspx"><strong>Home</strong></a></li>
                            <li class="nav-item navtext"><a class="nav-link h5" runat="server" href="projectdiscovery.aspx"><strong>Project Discovery</strong></a></li>
                            <li class="nav-item navtext"><a class="nav-link h5" runat="server" href="https://sites.google.com/enable-india.org/eilabs/saturday-updates" target="_blank"><strong>Saturday Updates</strong></a></li>                        
                        </ul>
                    </div>
              </nav>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-5 col-lg-5 col-sm-12" style="object-fit:cover;">
                    <img src="images/ezgif.com_700.gif" class="img-fluid"/>
                </div>
                <div class="col-md-7 col-lg-7 col-sm-12 embed-responsive embed-responsive-16by9">
                    <iframe src="https://www.youtube.com/embed/eKNs-SVf-Xc?rel=0&amp;modestbranding=1" class="embed-responsive-item"></iframe>                     
                </div>    
            </div>
            
            <div class="row text-center" style="" >
                <div class="col-md-12 col-lg-12 col-sm-12" >
                    <div>
                        <h2 class="p-3" ><p class="p-2" style="border-top:5px solid blue;border-bottom:5px solid blue;" >Ei Labs  is a platform for Catalyzing community for assistive solutions,  to develop an intimate and comprehensive ecosytem that  is beyond systems and institutions; with the sole objective of zero barriers for persons with disabilities.</p></h2>
                    </div>
                </div>
            </div>
            
            <div class="row text-center">
                <div class="col-md-12 col-lg-12 col-sm-12">
                    <img src="images/home/1disability_Horizontal_mix_flat_wheel.png" class="imgmd img-fluid"/>
                </div>
            </div>
            
            <div class="row" style="padding-top:30px;">
                <div class="col-md-4 col-lg-4 col-sm-12">
                    <img src="images/home/Coffee_Table_cover1.png" class="img-fluid" />
                    <div class="row text-center">
                        <div class="col-md-12 col-lg-12 col-sm-12">
                            <h3><a runat="server" href="http://www.enablesolutions.org/" target="_blank">Knowledge Base</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4 col-sm-12">
                    <img src="images/home/events_icon1.png" class="img-fluid"/>
                    <div class="row text-center">
                        <div class="col-md-12 col-lg-12 col-sm-12">
                            <h3><a runat="server" href="https://sites.google.com/enable-india.org/eilabs/events" target="_blank">Events</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4 col-sm-12">
                    <img src="images/home/campaigns1.png" class="img-fluid"/>
                    <div class="row text-center">
                        <div class="col-md-12 col-lg-12 col-sm-12">
                            <h3><a runat="server" href="projectdiscovery.aspx">Campaigns</a></h3>
                        </div>
                    </div>
                </div> 
            </div>            
        </div>
            
        <footer style="margin-bottom:30px">
            <div class="row" style="color:blue">
                <div class="col-md-12 col-lg-12 col-sm-12 text-center">
                    <h2><span class="hdstyle">Contact Us</span></h2>                    
                </div>
                <div class="col-md-12 col-lg-12 col-sm-12 text-center txtstyle">
                    <span>EMail: </span>
                    <span>eilabs@enableindia.org.</span>
                </div>
                <div class="col-md-12 col-lg-12 col-sm-12 text-center txtstyle">
                    <span>SMS or WhatsApp us at the following number: </span>
                    <span>+91 9742872509</span>
                </div>                
            </div>
        </footer>
    </form>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
    window.onscroll = function () { myFunction() };

    var navbar = document.getElementById("navbar1");
    var sticky = navbar.offsetTop;

    function myFunction() {

        if (window.pageYOffset >= sticky) {
            navbar.classList.add("sticky")
        } else {
            navbar.classList.remove("sticky");
        }
    }
</script>
</body>
</html>
