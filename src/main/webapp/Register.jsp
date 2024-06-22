<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="icon" href="//img1.wsimg.com/isteam/ip/35a3fbd0-4f25-4864-b761-513e5a75989a/favicon/01cfd73a-ea5a-45e1-a9f1-b03a97f3cbdc.png/:/rs=w:16,h:16,m" sizes="16x16">
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Online Application for RRSM</title>
    <style>
    	body {
    		background-image: url("images/backImage.jpg");
    		background-size: cover;
    	}
    	
        input {
            background-color: #36486D;
            border-style: solid !important;
            border-color: rgba(255, 255, 255, 1.0);
			border-top-width: 1px !important;
			border-right-width: 1px !important;
			border-bottom-width: 1px !important;
			border-left-width: 4px !important; 
			padding: 10px 10px 10px 10px; 
			width: 100%;"
        }
        
        select {
        	background-color: #36486D;
            border-style: solid !important;
            border-color: rgba(255, 255, 255, 1.0);
			border-top-width: 1px !important;
			border-right-width: 1px !important;
			border-bottom-width: 1px !important;
			border-left-width: 4px !important; 
			padding: 10px 10px 10px 10px; 
			width: 100%;"
        }
        
        #submit-btn {
        	background-color: #FFF2B3;
        	color: #3A4D75;
        	font-weight: 400; 
        	font-size: 18px; 
        	padding: 10px 35px 10px 35px;
        }
    </style>

</head>
<body>
	 <div class="container" style="padding-right: 760px;">
        <div class="row">
            <div class="col-md-7 offset-md-3">
                <div class="card" style="width: 900px; padding: 50px 20px 50px 20px; background: transparent;">
                    <div class="card-header text-center"
                        style="background-color: #26334C; color: white; height: 64px;">
                        <h2>Online Application for RRSM</h2>
                    </div>

                    <div class="card-body" style="background-color: #3A4D75; color:white;">
                        <form id="register-form" action="RegisterServlet" method="POST" style="margin: 25px;">
                            <h5 style="font-weight: normal;">Personal Information</h5>
                            <p>-----------------------------------------------------------------------------------------------------------------------</p>

                            <div class="form-row">
                                <div class="col-md-5 mb-3">
                                    <label for="name">
                                    <span>
                                    	Applicant Name
                                    	<em class="important" aria-hidden="true" style="color: #FF4F64 !important;">*</em>
                                    </span>
                                    </label>
                                    <input type="text" name="namef" id="firstname" placeholder>
                                    <label id="aria-showelemslabel-Name0" elname="formSubInfoText" class="formSubInfoText"
                                    		style="font-size: 15px;color: #CBCBCB;font-style: normal;font-weight: 400;">First Name</label>
                                </div>
                                <div class="col-md-5 mb-3 mt-2">
                                    <label for="validationServer02"></label>
                                    <input type="text" id="lastName" name="namel" placeholder>
                                    <label id="aria-showelemslabel-Name0" elname="formSubInfoText" class="formSubInfoText" 
                                    		style="font-size: 15px;color: #CBCBCB;font-style: normal;font-weight: 400;">
                                    	Last Name
                                    </label>
                                </div> 
                            </div>

                            <div class="form-row">
                                <div class="col-md-5 mb-3">
                                    <label for="name">
										<span>
	                                    	Father Name
	                                    	<em class="important" aria-hidden="true" style="color: #FF4F64 !important;">*</em>
	                                    </span>
									</label>
                                    <input type="text" name="fnamef" id="firstname" placeholder>
                                    <label id="aria-showelemslabel-Name0" elname="formSubInfoText" class="formSubInfoText"
                                    		style="font-size: 15px;color: #CBCBCB;font-style: normal;font-weight: 400;">First Name</label>
                                </div>
                                <div class="col-md-5 mb-3 mt-2">
                                    <label for="lastname"></label>
                                    <input type="text" id="lastname" name="fnamel" placeholder>
                                    <label id="aria-showelemslabel-Name0" elname="formSubInfoText" class="formSubInfoText" 
                                    		style="font-size: 15px;color: #CBCBCB;font-style: normal;font-weight: 400;">
                                    	Last Name
                                    </label>
                                </div>
                            </div>

                            <div class="calender">
                                <label>
                                	<span>
                                    	Date Of Birth
                                    	<em class="important" aria-hidden="true" style="color: #FF4F64 !important;">*</em>
                                    </span>
                                </label>
                                <div>
                                	<input type="date" id="date" name="date" class="DateTime" placeholder style="width: 50%;">
                                </div>
                                <label id="aria-showelemslabel-Name0" elname="formSubInfoText" class="formSubInfoText" 
                                    		style="font-size: 15px;color: #CBCBCB;font-style: normal;font-weight: 400;">
                                    	dd-MMM-yyyy
                                </label>
                            </div>

                            <div class="mt-4">
                                <label class="gender mr-3" for="gender">
                                	<span>
                                    	Gender
                                    	<em class="important" aria-hidden="true" style="color: #FF4F64 !important;">*</em>
                                    </span>
								</label>
								<div style="color: #FFF2B3;">
									<div class="form-check form-check-inline">
									  <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="male">
									  <label class="form-check-label" for="inlineRadio1">Male</label>
									</div>
									<div class="form-check form-check-inline">
									  <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="female">
									  <label class="form-check-label" for="inlineRadio2">Female</label>
									</div>
									<div class="form-check form-check-inline">
									  <input class="form-check-input" type="radio" name="gender" id="inlineRadio3" value="transgender">
									  <label class="form-check-label" for="inlineRadio3">Transgender</label>
									</div> 
								</div>    									     
                            </div>

                            <div>
                                <label class="mt-4">
                                	<span>
                                    	Marital Status
                                    	<em class="important" aria-hidden="true" style="color: #FF4F64 !important;">*</em>
                                    </span>
                                </label>
                                <select name="maritalStatus" class="select select-container select-container--default select-container--below" style="color: #FFF2B3;">
                                	<option selected="true" value="-Select-" disabled>-Select-</option>
                                    <option value="married"> Married</option>
                                    <option value="unmarried"> Unmarried</option>
                                    <option value="other"> Other</option>
                                </select>
                            </div>

                            <div>
                                <label class="mt-4">
                                	<span>
                                    	Caste
                                    	<em class="important" aria-hidden="true" style="color: #FF4F64 !important;">*</em>
                                    </span>
                                </label>
                                <select name="caste" class="select2" style="color: #FFF2B3;">
                                	 <!-- search bar in selection -->
                                	<!--<input class="select2-search__field" type="search" tabindex="0" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" role="textbox"> -->
                                	<option selected="true" value="-Select-" disabled>-Select-</option>
                                    <option value="married">General</option>
                                    <option value="unmarried">OBC</option>
                                    <option value="other"> ST/SC</option>
                                </select>
                            </div>

                            <div class="mt-4">
                                <label>
                                	<span>
                                    	Address
                                    	<em class="important" aria-hidden="true" style="color: #FF4F64 !important;">*</em>
                                    </span>
                                </label>
                                <input id="address" name="address" value placeholder>
                            </div>

                            <div class="mt-4">
                                <label>
                                	<span>
                                    	Village
                                    	<em class="important" aria-hidden="true" style="color: #FF4F64 !important;">*</em>
                                    </span>
								</label>
                                <input id="village" name="village" value placeholder>
                            </div>

                            <div class="form-row">
                                <div class="col-md-6 mb-3">
                                    <label for="address2"> 
                                    	<span>Address Line 2</span>
                                    </label>
                                    <input type="text" name="city" id="city" value placeholder>
                                    <div id="address2Feedback" class="feedback" style="font-size: small;">
                                        City.
                                    </div>
                                </div>
                                <div class="col-md-6" style="margin-top: 33px;">
                                    <input type="text" name="state" id="state" value placeholder>
                                    <div id="stateFeedback" class="feedback" style="font-size: small;">
                                        State/Region/Province
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <input type="text" name="zip" id="zip" value placeholder>
                                    <div id="zipFeedback" class="feedback" style="font-size: small;">
                                        Postal / Zip code.
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <select name="country" id="country" style="color: #FFF2B3;">
                                        <option selected="true" value="-Select-" disabled>-Select-</option>
                                        <option>Aland Islands</option>
                                        <option>America</option>
                                        <option>Australia</option>
                                        <option>Afghanistan</option>
                                        <option>Bangladesh</option>
                                        <option>Bassas Da India</option>
                                        <option>Bhutan</option>
                                        <option>Canada</option>
                                        <option>China</option>
                                        <option>Colombia</option>
                                        <option>Germany</option>
                                        <option>India</option>
                                        <option>Japan</option>
                                        <option>Kenya</option>
                                        <option>Libya</option>
                                        <option>Nepal</option>
                                        <option>North Korea</option>
                                        <option>Macau</option>
                                        <option>South Korea</option>
                                        <option>Span</option>
                                        <option>Turkey</option>
                                        <option>West Bank</option>
                                        <option>Yemen</option>
                                        <option>Zambia</option>
                                    </select>
                                    <div id="countryFeedback" class="feedback" style="font-size: small;">
                                        Country
                                    </div>
                                </div>
                            </div>

                            <div class="mt-4">
                                <label>
                                	<span>
                                    	Email
                                    	<em class="important" aria-hidden="true" style="color: #FF4F64 !important;">*</em>
                                    </span>
								</label>
								<div>
                                	<input type="email" id="email" name="email" value placeholder style="width: 50%;">
                                </div>	
                            </div>

                            <div class="mt-4">
                                <label>
                                	<span>
                                    	Phone
                                    	<em class="important" aria-hidden="true" style="color: #FF4F64 !important;">*</em>
                                    </span>
								</label>
                                <div class="flag-container">
                                    <input type="number" id="phone" name="phone" placeholder style="width: 50%;">
                                </div>
                            </div>

                            <div class="mt-4">
                                <label>
                                	<span>
                                    	Education
                                    	<em class="important" aria-hidden="true" style="color: #FF4F64 !important;">*</em>
                                    </span>
                                </label>
                                <div>
	                                <select name="education" id="country" style="color: #FFF2B3; width: 50%;">
	                                    <option selected="true" value="-Select-" disabled>-Select-</option>
	                                    <option>Inter</option>
	                                    <option>Graduate</option>
	                                    <option>Post Graduate</option>
	                                </select>
                                </div>
                            </div>

                            <div class="mt-4">
                                <label>
                                	<span>
                                    	Applicant Photo
                                    	<em class="important" aria-hidden="true" style="color: #FF4F64 !important;">*</em>
                                    </span>
                                </label>
                                <div class="photo-container" style="background-color: gainsboro; height: 60px; color: black;">
                                    <label for="imageUpload">Choose</label>
                                    <input type="file" id="imageUpload" name="imageUpload"> 
                                </div>
                            </div>

                            <div class="mt-5">
                                <label>
                                	<span>
                                    	Apply For
                                    	<em class="important" aria-hidden="true" style="color: #FF4F64 !important;">*</em>
                                    </span>
                                </label>
                                <div>
	                                <select name="apply" id="apply" style="color: #FFF2B3; width: 50%;">
	                                    <option selected="true" value="-Select-" disabled>-Select-</option>
	                                    <option>Project Manager</option>
	                                    <option>Gram Panchayat</option>
	                                </select>
	                            </div>    
                            </div>

                            <div class="mt-4">
                                <label>
                                	<span>
                                    	Have you have any work experience
                                    	<em class="important" aria-hidden="true" style="color: #FF4F64 !important;">*</em>
                                    </span>
                                </label>
                                <div>
	                                <select name="experience" id="experience" style="color: #FFF2B3; width: 50%;">
	                                    <option selected="true" value="-Select-" disabled>-Select-</option>
	                                    <option>Yes</option>
	                                    <option>No</option>
	                                </select>
	                            </div>     
                            </div>

                            <div class="mt-4">
                                <label>
                                	<span>
                                    	Have you have any work experience provide details (Optional)
                                    </span>
                                </label>
                                <input name="experiencedetails" id="experiencedetails" value placeholde> 
                            </div>
							
							<div class="submitButton" style="text-align: center; padding: 30px;">
                            	<button id="submit-btn" type="submit" class="btn btn-light">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    
    	<!--   JavaScripts  -->
		<script src="Javascript/script.js" type="text/javascript"></script>
    	<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	    
	    
	    
	    <script>
            $(document).ready(function () {
                console.log("loaded........")

                // Using jQuery
                $('#register-form').on('submit', function (event) {
                	
                	// It will not go to servlet using preventDefault() 
                    event.preventDefault();

                    let form = new FormData(this);

                    $("#submit-btn").hide();
                    $("#loader").show();
                    
                    //send register servlet:
                    $.ajax({
                        url: "RegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data)

                            $("#submit-btn").show();
                            $("#loader").hide();

                            if (data.trim() === 'done') {

                                swal("Registered successfully..We are going to redirect to Success page")
                                        .then((value) => {
                                            window.location = "Success.jsp"
                                        });
                            } else {
                                swal(data);
                            }

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $("#submit-btn").show();
                            $("#loader").hide();
                            swal("something went wrong..try again");

                        },
                        processData: false,
                        contentType: false

                    });
                });
            });
        </script>
</body>
</html>