<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="projectdiscovery.aspx.cs" Inherits="eilabs.projectdiscovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Project Discovery</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/Site.css" rel="stylesheet" runat="server" />
    <!--<link href="css/bootstrap.css" rel="stylesheet" runat="server"/>-->
    <link href="Content/bootstrap.min.css" rel="stylesheet" runat="server" />
    <link href="Content/bootstrap-theme.css" rel="stylesheet" runat="server"/>
    <style>
        @font-face {
          font-family: ralewayFont;
          src: url(fonts/Raleway-Regular.ttf);

        }
        #bannerdiv {
            background-image: url('images/Banner.jpg');
            height: 400px;
            border-radius: 0;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .prev1, .next1 {
            cursor: pointer;
            color: black;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
        }

        .prev1:hover, .next1:hover {
            background-color: rgba(0,0,0,0.8);
        }
        .btncss {
            border:none;
            background-color:lightskyblue;
            font:bold;
            font-size:18pt;
            color:black;
            border-radius:20px;
        }
        .btncss:hover {
            border:1px solid black;
        }
        .fullwdth {
            margin-left:0;
            margin-right:0;
        }
        .cursor {
            cursor:pointer;
        }
        html {
            font-family:ralewayFont;
        }
        .thmbdr {
            padding: 1px;
            border:none;
            box-shadow: none;
        }
        .hdstyle {
            font-family:ralewayFont;
            color:blue;
            font-size:16pt;
            padding:5px;
        }
        .txtstyle {
            font-family:ralewayFont !important;
            color:black !important;
            font-size:12pt!important;
        }
        .hdstyle2{
            font-family:ralewayFont;
            color:black;
            font-size:16pt;
        }
        .centerdiv {
            display: inline-block;
            vertical-align: middle;
            float: none;
        }
        .txtstyle2 {
            font-family:ralewayFont !important;
            color:black !important;
            font-size:14pt!important;
        }
        .center1 {
          display: flex;          
          align-items: center; 
          height:300px;
        }
    </style>
    <script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
    var slides = document.getElementsByClassName("myslides");
    if (slideIndex + 5 <= slides.length) {
        showSlides(slideIndex += n);
    }        
  
}
function minusSlides(n) {
    
    if (slideIndex > 1) {            
        showSlides(slideIndex += n);
    }
}       


function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("myslides");
    var k = n - 1;      
    
    for (i = 0; i < slides.length; i++) {

        slides[i].style.display = "none";
    }    

    for (i = 0; i < 5; i++) { 

        slides[k].style.display = "block";
        k++;
    }
}        
</script>

</head>
<body class="body-content">
    <form id="form1" runat="server" >
        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>
        <div class="container-fluid" style="font-family:ralewayFont">
            <div class="container-fluid">
                <div class="col-md-5 col-sm-3" style="padding-top:1%">
                    <img src="images/ei_Labs_logo.png" style="background-size:cover" alt="Logo of eiLabs" class="img-responsive"/>
                </div>
                <div class="col-md-7">

                </div>
            </div>
            <div class="jumbotron" style="background-color:white;margin-bottom:0px">
                <div class="row">
                    <div class="col-md-5" style="margin-top:-2%">
                        <img src="images/PDLogoRsz.png" class="img-responsive" alt="Logo of Project Discovery"/>
                    </div>
                    <div class="col-md-7">                        
                        <p class="txtstyle2"><span class="h1" style="margin-left: -5px">Project Discovery</span><span class="h1 sr-only">Project Discovery</span><span>is a video competition aimed
at collating various innovative solutions that persons with
disabilities across India use in their daily lives.</span></p>
                       
                        <p class="txtstyle2" >Participate by submitting a 2-minute video of a solution that has made your life easier.</p>
                        <p class="txtstyle2" >Inviting solutions across all <i style="color: lightskyblue; text-decoration: underline;">21 categories of disability.</i></p>
                                              
                        <p class="hdstyle2"><b>Last Date of Submission: 31 October 2020</b></p>
                        <p style="margin-bottom: 0px"><a class="btn btn-lg btncss" target="_blank" href="https://forms.gle/vQoSPGwDQBXLPjmr5">Submit Your Solution</a></p>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="col-md-5 text-justify txtstyle2" style="padding:2%;">
                    <p style="margin-top:5%" >
                        <b style="color:black;font-size:16pt">The meaning of the word ‘Solution’...</b></p><p>
…is to find an alternative method of overcoming a challenge by working around the problem, in order to live a life of dignity and independence. It could be a product, workflow, or a unique way of doing something that enables a person to perform the task they normally would have difficulty in accomplishing.</p>
<p>Many of us use such simple yet innovative solutions in our day-to-day lives, sometimes without even realizing its importance. <b>Persons with disabilities and their caregiver’s or family members are no exemption to this. However, such solutions mostly remain undocumented.</b></p>
<p><b style="color:black">Project Discovery</b>&nbsp;is a platform aimed at collating different solutions in the form of short videos and making them available to ALL.</p>
                    <p class="hdstyle2"><b>Last Date of Submission: 31 October 2020</b></p>
                    <p><a class="btn btn-lg btncss" id="button" href="https://forms.gle/vQoSPGwDQBXLPjmr5" target="_blank">Submit Your Solution</a></p>
                </div>
                <div class="col-md-7 text-left">
                    <div class="Container-fluid">
                        <div class="col-md-10 embed-responsive embed-responsive-16by9">
                            <!--<video controls="controls" style="background-size:cover" height="400" width="500">
                                <source src="video/eiLabsEnableIndia.mp4" type="video/mp4" />
                            </video>-->
                            <iframe src="https://www.youtube.com/embed/2JVGbrNihZo?rel=0&amp;modestbranding=1" style="background-size:cover;" class="embed-responsive-item">
                                </iframe>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-7" style="padding-top:12%">
                            <div class="text-center">
                                <h2 style="border:2px solid black;color:black;padding:30px;background-color:gold" class="hdstyle2"><p><b>Win prizes up to ₹1 Lakh</b></p><p><b>in 3 different categories.</b></p></h2>
                            </div>                            
                        </div>
                        <div class="col-md-5">
                            <div class="text-center">
                                <img src="images/trophy.png" alt="Image of a person holding a Trophy" class="img-responsive"/>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <div class="row" style="background-color:#cccccc; margin-top:10px">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div>
                        <h2 class="hdstyle"><span>Categories of Solution Related Videos</span></h2>
                    </div>
                </div>
            </div>
            <div class="row" >
                <div class="col-md-4 text-center">
                    <img src="images/Everyday-solutions.png" />
                    <div>
                        <h3 class="hdstyle2"><b>Everyday solutions</b></h3>
                    </div>
                    <p style="padding:0px 20px 0px 20px;margin:20px" class="txtstyle">
                        A solution or technology used for everyday activity. Example - An electric toothbrush instead of normal toothbrush, modified household systems accessible cupboards. or any solution to overcome architectural barriers, leisure time activities can be a part of this segment.
                    </p>
                    <p>
                    </p>
                </div>
                <div class="col-md-4 text-center" >
                    <img src="images/IT-Solutions.png"/>
                    <div>
                        <h3 class="hdstyle2"><b>Technology & IT solutions</b></h3>
                    </div>
                    <p style="padding:0px 20px 0px 20px;margin:20px" class="txtstyle">
                        Technology that you use to carry out an activity. Example – A screen reading software is used by persons with vision impairment while using computers; voice output devices used by people with difficulties in speech.
                    </p>
                    <p>
                    </p>
                </div>
                
                <div class="col-md-4 text-center">
                    <img src="images/Outdoor Solutions.png"/>
                    <div>
                        <h3 class="hdstyle2"><b>Outdoor solutions</b></h3>
                    </div>
                    <p style="padding:0px 20px 0 20px;margin:20px" class="txtstyle">
                        A solutions you use to include yourself in any other social activities like using public transport, sports or other areas of life such as creating livelihood or being an entrepreneur.
                    </p>
                    <p>
                    </p>
                </div>
                <!-- <div class="col-md-3">
                    <img src="images/Tulips.jpg" height="150px" width="265px" />
                    <div>
                        <h3><b>Human or non-technical solutions</b></h3>
                    </div>
                    <div>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non rutrum eros, pharetra interdum tellus. Sed m
                    </div>
                    <p>
                    </p>
                </div>-->
               </div>
                <div class="row">
                 <div class="text-center">                    
                        <p><a href="https://forms.gle/vQoSPGwDQBXLPjmr5" class="btn btn-lg btncss" target="_blank" >Submit Your Solution</a></p>
                    
                 </div>                
            </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2 class="hdstyle">Video Submission Guidelines</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <h3><b class="hdstyle2">Submit your Video by:</b></h3>
                    <ol class="txtstyle">
                        <li>Fill the form after clicking on “Submit your solution” button above.</li>
                        <li>Email the video to eilabs@enableindia.org</li>
                        <li>Whatsapp us your video to +91 9742872509.</li>
                    </ol>
                    <h3><b class="hdstyle2">While sharing the videos please mention:</b></h3>
                    <ol class="txtstyle">
                        <li>Your name</li>
                        <li>Disability</li>
                        <li>Contact number and alternate contact number</li>
                        <li>Email Id</li>
                        <li>City/village/district where you stay.</li>
                    </ol>
                </div>
                <div class="col-md-4">
                    <h3><b class="hdstyle2">Some points to consider while shooting the video:</b></h3>
                    <ol class="txtstyle">
                        <li>Shoot the video in landscape/horizontal mode to get a wider shot.</li>
                        <li>Start with a short description of the problem you are facing.</li>
                        <li>In the video, wherever you feel the need to explain the solution, feel free to speak.</li>
                        <li>The video must be centered on the person with the disability demonstrating the solution.</li>
                        <li>Always shoot focusing on the disabled person, avoid showing their back.</li>
                        <li>Make sure that the video is shot with adequate lighting, minimum background noise and with sufficient clarity.</li>
                        <li>For any guidance in shooting the video, Email to eilabs@enableindia.org or WhatsApp at +919742872509.</li>
                    </ol>
                </div>
                <!--<div class="col-md-3"></div>-->
                <div class="col-md-4">
                    <h3><b class="hdstyle2">Videos for reference on how to shoot:</b></h3>
                    <div id="carousel" class="carousel slide" data-ride="carousel" data-type="multi" data-interval="2500">
                        <!-- Indicators -->
		                <ol class="carousel-indicators">
		                  <li data-target="#carousel" data-slide-to="0" class="active"></li>
		                  <li data-target="#carousel" data-slide-to="1"></li>
		                  <li data-target="#carousel" data-slide-to="2"></li>
		                </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <div class="carousel-col embed-responsive embed-responsive-16by9">
                                    <iframe src="https://www.youtube.com/embed/zG_nISWMsJE" class="embed-responsive-item"></iframe>
                                </div>                            
                            </div>
                            <div class="item">
                                <div class="carousel-col embed-responsive embed-responsive-16by9">
                                    <iframe src="https://www.youtube.com/embed/ujGfD879hBI" class="embed-responsive-item"></iframe>
                                </div>                            
                            </div>
                            <div class="item">
                                <div class="carousel-col embed-responsive embed-responsive-16by9">
                                    <iframe src="https://www.youtube.com/embed/tuuT8eT8EgI" class="embed-responsive-item"></iframe>
                                </div>                            
                            </div>                                
                        </div>
                        <div class="left carousel-control">
					        <a href="#carousel" role="button" data-slide="prev">
						        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						        <span class="sr-only">Previous</span>
					        </a>
				        </div>
				        <div class="right carousel-control">
					        <a href="#carousel" role="button" data-slide="next">
						        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						        <span class="sr-only">Next</span>
					        </a>
				        </div>
                    </div>  
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2 class="hdstyle">Partners</h2>
                </div>
            </div>
            <div class="container-fluid">
                <div class="col-md-1 col-sm-6" style="margin-top:25px;">
                    <div class="thumbnail text-center thmbdr">
                        <a class="prev1" onclick="minusSlides(-1)">&#10094;</a>
                    </div>
                </div>
                <div class="col-md-2 col-sm-6 myslides">
                    <div class="thumbnail thmbdr">
                        <img src="images/company/EI.png" class="img-responsive" alt="Logo of Enable India "/>
                    </div>
                </div>
                <div class="col-md-2 col-sm-6 myslides">
                    <div class="thumbnail thmbdr">
                        <img src="images/company/EasiLogo.png" alt="Logo of Easi" />
                    </div>
                </div>
                <div class="col-md-2 col-sm-6 myslides">
                    <div class="thumbnail thmbdr">
                        <img src="images/company/Allegis.png" class="img-responsive" alt="Logo of Allegis Group"/>
                    </div>
                </div>  
                <div class="col-md-2 col-sm-6 myslides">
                    <div class="thumbnail thmbdr">
                        <img src="images/company/trinayani.png" class="img-responsive" alt="Logo of Trinayani" />
                    </div>
                </div>
                <div class="col-md-2 col-sm-6 myslides" style="display:none";>
                    <div class="thumbnail thmbdr">
                        <img src="images/company/Yi.png" class="img-responsive" alt="Logo of Young Indians"/>
                    </div>
                </div>
                <div class="col-md-2 col-sm-6 myslides" >
                    <div class="thumbnail thmbdr">
                        <img src="images/company/CII.png" class="img-responsive" alt="Logo of Confederation of Indian Industry" />
                    </div>
                </div>
                <div class="col-md-2 col-sm-6 myslides" style="display:none";>
                    <div class="thumbnail thmbdr">
                        <img src="images/company/Yi-Acc.png" class="img-responsive" alt="Logo of Young Indian Accessibility Initiative"/>
                    </div>
                </div>
                
                <div class="col-md-1 col-sm-6 text-right" style="margin-top:25px;">
                    <div class="thumbnail text-center thmbdr" >
                        <a class="next1" onclick="plusSlides(1)">&#10095;</a>
                    </div>
                </div>
            </div> 
        <div class="row txtstyle" style="background-color:#cccccc;margin-top:10px;margin-bottom:10px;padding-top:10px;padding-bottom:10px">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2 class="hdstyle"><span>Frequently Asked Questions (FAQ)</span></h2>
                </div>
            </div>
            <div class="container-fluid">
                <div class="dropdown container-fluid" style="border: 1px solid black; margin: 5px; padding: 20px">
                    <div class="col-md-11 dropdown-toggle cursor" data-toggle="dropdown">What should be the time/length of the video?</div><div class="col-md-1 col-sm-1 text-right dropdown-toggle cursor" data-toggle="dropdown"><span class="caret" ></span></div>
                    <div class="dropdown-menu col-md-12 col-sm-12">
                        <p style="padding: 10px">Your video should be of two minutes or 120 seconds. </p>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="dropdown container-fluid" style="border: 1px solid black; margin: 5px; padding: 20px">
                    <div class="col-md-11 col-sm-11 dropdown-toggle cursor" data-toggle="dropdown">What further information I need to send along with the videos?</div><div class="col-md-1 col-sm-1 text-right dropdown-toggle cursor" data-toggle="dropdown"><span class="caret" ></span></div>
                    <div class="dropdown-menu col-md-12 col-sm-12">
                        <p style="padding: 10px">Please write your name, contact number and send the video. </p>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="dropdown container-fluid" style="border: 1px solid black; margin: 5px; padding: 20px">
                    <div class="col-md-11 col-sm-11 dropdown-toggle cursor" data-toggle="dropdown">Can I submit more than one video?</div><div class="col-md-1 col-sm-1 text-right dropdown-toggle cursor" data-toggle="dropdown"><span class="caret" ></span></div>
                    <div class="dropdown-menu col-md-12 col-sm-12">
                        <p style="padding: 10px" >Yes, every video should be of different solutions.</p>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="dropdown container-fluid" style="border: 1px solid black; margin: 5px; padding: 20px">
                    <div class="col-md-11 col-sm-11 dropdown-toggle cursor" data-toggle="dropdown">What should be the content of the videos?</div><div class="col-md-1 col-sm-1 text-right dropdown-toggle cursor" data-toggle="dropdown"><span class="caret" ></span></div>
                    <div class="dropdown-menu col-md-12 col-sm-12">
                        <p style="padding: 10px" >As a person with disabilities the kind of solutions that you use to overcome barriers in your daily life should be the content of the videos.</p>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="dropdown container-fluid" style="border: 1px solid black; margin: 5px; padding: 20px">
                    <div class="col-md-11 col-sm-11 dropdown-toggle cursor" data-toggle="dropdown">What is the process of uploading the video?</div><div class="col-md-1 col-sm-1 text-right dropdown-toggle cursor" data-toggle="dropdown"><span class="caret" ></span></div>
                    <div class="dropdown-menu col-md-12 col-sm-12">
                        <p style="padding: 10px" >You can send the video by WhatsApp, Google Drive, Project Discovery webpage, using your email.</p>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="dropdown container-fluid" style="border: 1px solid black; margin: 5px; padding: 20px">
                    <div class="col-md-11 col-sm-11 dropdown-toggle cursor" data-toggle="dropdown">What is the process of uploading the video?</div><div class="col-md-1 col-sm-1 text-right dropdown-toggle cursor" data-toggle="dropdown"><span class="caret" ></span></div>
                    <div class="dropdown-menu col-md-12 col-sm-12">
                        <p style="padding: 10px">You can send the video by WhatsApp, Google Drive, Project Discovery webpage, using your email.</p>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="dropdown container-fluid" style="border: 1px solid black; margin: 5px; padding: 20px">
                    <div class="col-md-11 col-sm-11 dropdown-toggle cursor" data-toggle="dropdown">Am I allowed to take help from other people to make and edit the video?</div><div class="col-md-1 col-sm-1 text-right dropdown-toggle cursor" data-toggle="dropdown"><span class="caret" ></span></div>
                    <div class="dropdown-menu col-md-12 col-sm-12">
                        <p style="padding: 10px" >Yes, you can.</p>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="dropdown container-fluid" style="border: 1px solid black; margin: 5px; padding: 20px">
                    <div class="col-md-11 col-sm-11 dropdown-toggle cursor" data-toggle="dropdown">I am not a person with disabilities, can I submit videos of my friends with disabilities?</div><div class="col-md-1 col-sm-1 text-right dropdown-toggle cursor" data-toggle="dropdown"><span class="caret" ></span></div>
                    <div class="dropdown-menu col-md-12 col-sm-12">
                        <p style="padding: 10px;" >Yes, you can.</p>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="dropdown container-fluid" style="border: 1px solid black; margin: 5px; padding: 20px">
                    <div class="col-md-11 col-sm-11 dropdown-toggle cursor" data-toggle="dropdown">I run organisation, I have 20 videos to be submitted, can I submit as an organisation?</div><div class="col-md-1 col-sm-1 text-right dropdown-toggle cursor" data-toggle="dropdown"><span class="caret"></span></div>
                    <div class="dropdown-menu col-md-12 col-sm-12">
                        <p style="padding: 10px" >Yes, but the person with disabilities should be in the forefront of the video and not the organisation.</p>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="dropdown container-fluid" style="border: 1px solid black; margin: 5px; padding: 20px">
                    <div class="col-md-11 col-sm-11 dropdown-toggle cursor" data-toggle="dropdown">Does my video get disqualified by any chance?</div><div class="col-md-1 col-sm-1 text-right dropdown-toggle cursor" data-toggle="dropdown"><span class="caret"></span></div>
                    <div class="dropdown-menu col-md-12 col-sm-12">
                        <p style="padding: 10px" >No, before disqualifying your video we will get in touch with you to sort out any technical issues.</p>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="dropdown container-fluid" style="border: 1px solid black; margin: 5px; padding: 20px">
                    <div class="col-md-11 col-sm-11 dropdown-toggle cursor" data-toggle="dropdown">What happens if the resolution/quality of my video is low?</div><div class="dropdown-toggle cursor col-md-1 col-sm-1 text-right" data-toggle="dropdown"><span class="caret"></span></div>
                    <div class="dropdown-menu col-md-12 col-sm-12">
                        <p style="padding:10px">The organisers shall contact you to ask you if you require any help. A guidance would be provided to you to redo the videos remotely. If you are unable to accomplish the task will try to get in touch with our ground team to help you do the video.</p>
                    </div>
                </div>
            </div>
            
            </div>
        </div>
        <footer style="margin-bottom:30px">
            <div class="container-fluid txtstyle">
                <div class="col-md-12 text-center">
                    <h2><span class="hdstyle">Contact Us</span></h2>                    
                </div>
                <div class="col-md-12 text-center txtstyle">
                    <span>EMail: </span>
                    <span>eilabs@enableindia.org.</span>
                </div>
                <div class="col-md-12 text-center txtstyle">
                    <span>SMS or WhatsApp us at the following number: </span>
                    <span>+91 9742872509</span>
                </div>
                <div class="col-md-12 text-center txtstyle">
                    <p class="txtstyle">Project Discovery is a project of EI Labs, a vertical of Enable India which works in aggregation,, innovation and incubation of Assistive aids and workplace solutions in disability space.</p>
                </div>
            </div>

        </footer>
        </form>

</body>
</html>
