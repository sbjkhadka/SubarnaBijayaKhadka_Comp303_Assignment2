<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Member's Area</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
        
        <style>
	  		  body {
	  			color: #4787ff;
	  			background-color: #4787ff;
	  			padding-top: 50px;
				}
			.border-style {
			  border: 2px solid #ff6347;
			  border-radius: 10px;
			  background-color: #ffbf47;
			  padding-top: 30px;
			  padding-bottom: 30px;
			}
			a {
			  text-decoration: none;
			  font-weight: bold;
			}
			  
			.nav-item{
			height: 100%;
			padding-right: 20px;
			display: inline;
			color: white;
			}
			
			.nav-item:hover {
			text-decoration: underline solid white 2px;
			}
			.nav-container {
			
			border-radius: 5px;
			padding-left: 20px;
			height: 35px;
			margin-bottom: 5px;
			}
			form {
			width: 90%;
			}
			.submit-button {
			margin-top: 15px;
			}
			h1{
			color: white;
			text-transform: uppercase;
			margin-top: 0;
			margin-bottom:0;
			display: inline;
			}
			small {
			color: white;
			}
			span{
			color: white;}
			.user-option {
				margin-left: 20px;
				cursor: pointer;
				color: white;
				display: inline;
			}
			.user-option:hover {
			text-decoration: underline solid white 2px;
			}
			label {
			color:white;}
			form{
			margin: 20px;
			border: 2px solid white;
			padding: 10px;
			border-radius: 5px;
			}
			.right-float {
			float: right;}
			.margin-around{margin:10px;}
			.avatar {
  vertical-align: middle;
  width: 50px;
  height: 50px;
  border-radius: 50%;
}
    </style>
     
</head>
<body>

	
	
	
	<div class="container-fluid">
		<div class="row vh-100">
		
			<div class="col-md-12" style="background-color:#c5f951">
				<h1>Hello ${LoggedInUser.getFirst_name() }</h1>
				<small>this is your membership area</small>
				<img alt="Image placeholder" src="https://demos.creative-tim.com/argon-dashboard-pro/assets/img/theme/team-4.jpg" class="avatar" style="margin-left: 10px;float:right;margin-top:-20px">
				<div class=" nav-container">
							<div class="nav-item right-float d-flex justify-content-around align-items-center">
								<a href="logout" style="color:white">Logout</a>
							</div>
				</div>
			
			<div class="row">
				<div class="col-md-4">
				<div class="form-area">
				<div id="changeAddress" class="user-option">Change Address</div>
					<div id="changeContactNumber" class="user-option">Change Contact Number</div>
					<div id="changePassword" class="user-option">Change Password</div>
					
					
					<form method="POST" action = "address" style="display:block" id="address-form">
						<div class="row">
		        			<div class="col-md-12">
		            			<div class="form-group">
		                			<label for="address">New Address</label>
		                			<input type = "text" name="somethingToEdit" class="form-control" id="address" value="${LoggedInUser.getStreet() }">
		            			</div>
		        			</div>
		    			</div>
		    
					    <div class="col-md-12 submit-button">
					        <input class="form-control btn btn-warning" type="submit" value="submit" />
					    </div>
					</form>
					
					<form method="POST" action = "contactNumber" style="display:none" id="contact-form">
						<div class="row">
		        			<div class="col-md-12">
		            			<div class="form-group">
		                			<label for="contactNumber">New Number</label>
		                			<input type = "text" name="somethingToEdit" placeholder="contact number"  class="form-control" id="contactNumber" value="${LoggedInUser.getPhone() }">
		            			</div>
		        			</div>
		    			</div>
						
						<div class="col-md-12 submit-button">
					        <input class="form-control btn btn-warning" type="submit" value="submit" />
					    </div>
					</form>
					
					<form method="POST" action = "password" style="display:none" id="password-form">
					<div class="row">
		        			<div class="col-md-12">
		            			<div class="form-group">
		                			<label for="contactNumber">New Password</label>
		                			<input type = "text" name="somethingToEdit" placeholder="password"  class="form-control" id="contactNumber" value="${LoggedInUser.getUser_pass() }">
		            			</div>
		        			</div>
		    			</div>
						<div class="col-md-12 submit-button">
					        <input class="form-control btn btn-warning" type="submit" value="submit" />
					    </div>
					</form>
				</div>
				
				
				
				<div class="member-info-area">
					<div class="d-flex flex-column justify-content-around align-items-center border-style p-10">
                    <h3>Member Details</h3>
                    
                    
                    <form method="POST" action="register">
                    <input type="hidden" name="member_id" value="${LoggedInUser.getMember_id() }"/>
					    <div class="row">
					        <div class="col-md-6">
					            <div class="form-group">
					                <label for="first_name">First Name</label>
					                <input class="form-control" type="text" id="first_name" name="first_name" value="${LoggedInUser.getFirst_name() }"/>
					            </div>
					        </div>
					
					        <div class="col-md-6">
					            <div class="form-group">
					                <label for="last_name">Last Name</label>
					                <input class="form-control" type="text" id="last_name" name="last_name" value="${LoggedInUser.getLast_name() }"/>
					            </div>
					        </div>
					    </div>
					
					    <div class="row">
					        <div class="col-md-12">
					            <div class="form-group">
					                <label for="street">Street Address</label>
					                <input class="form-control" type="text" id="street" name="street" value="${LoggedInUser.getStreet() }"/>
					            </div>
					        </div>
					    </div>
					
					    <div class="row">
					        <div class="col-md-4">
					            <div class="form-group">
					                <label for="city">City</label>
					                <input class="form-control" type="text" id="city" name="city" value="${LoggedInUser.getCity() }"/>
					            </div>
					        </div>
					
					        <div class="col-md-4">
					            <div class="form-group">
					                <label for="postal_code">postal_code</label>
					                <input class="form-control" type="text" id="postal_code" name="postal_code" value="${LoggedInUser.getPostal_code() }"/>
					            </div>
					        </div>
					
					        <div class="col-md-4">
					            <div class="form-group">
					                <label for="phone">Phone Number</label>
					                <input class="form-control" type="text" id="phone" name="phone" maxlength="10" value="${LoggedInUser.getPhone() }"/>
					            </div>
					        </div>
					    </div>
					
					
					    <div class="row">
					        <div class="col-md-12">
					            <div class="form-group">
					                <label for="user_name">User Name</label>
					                <input class="form-control" type="text" id="user_name" name="user_name" value="${LoggedInUser.getUser_name() }"/>
					            </div>
					        </div>
					    </div>
					
					    <div class="row">
					        <div class="col-md-12">
					            <div class="form-group">
					                <label for="user_pass">Password</label>
					                <input class="form-control" type="text" id="user_pass" name="user_pass" value="${LoggedInUser.getUser_pass() }"/>
					            </div>
					        </div>
					    </div>
					
					    <div class="row">
					        <div class="col-md-12">
					            <div class="form-group">
					                <label for="gym_id">Gym Name</label>
					                <select class="form-select" id="gym_id" name="gym_id" >
					                    <c:forEach var="item" items="${gym_list}">
					                        <option value="${item.getGym_id()}" ${LoggedInUser.getGym_id()==item.getGym_id()?'selected':''  }>
					
					                            ${item.getGym_name()}
					                        </option>
					                    </c:forEach>
					                </select>
					            </div>
					        </div>
					    </div>
					
					    <div class="col-md-12 submit-button">
					        <input class="form-control btn btn-primary" type="submit" value="submit" />
					    </div>
					    
					    
					
					</form>
					
                 </div>
				</div>
				
				
					
				</div>
				
				<div class="col-md-8 d-flex flex-row justify-content-between align-items-center flex-wrap" style="background-color:tomato;border-radius:5px;padding: 20px;">
					 
					  <div class="card margin-around" style="width: 15rem;">
                        <img class="card-img-top" src="https://api.time.com/wp-content/uploads/2020/03/gym-coronavirus.jpg"
                            alt="Card image cap"> 
                    </div>
                    
                     <div class="card margin-around" style="width: 15rem;">
                        <img class="card-img-top" src="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/active-woman-exercising-on-a-rowing-machine-in-her-royalty-free-image-1607437786."
                            alt="Card image cap"> 
                    </div>
                    
                     <div class="card margin-around" style="width: 15rem;">
                        <img class="card-img-top" src="https://images.unsplash.com/photo-1534438327276-14e5300c3a48?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fGZpdG5lc3N8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80"
                            alt="Card image cap"> 
                    </div>
                    
                     <div class="card margin-around" style="width: 15rem;">
                        <img class="card-img-top" src="https://cnet1.cbsistatic.com/img/2VoO12pDNxQsCoLVTVCUmL7BaME=/940x0/2020/06/09/a9beccce-b94a-4aab-b90a-0633d63d59f4/gettyimages-1227597608.jpg"
                            alt="Card image cap"> 
                    </div>
                    
                     <div class="card margin-around" style="width: 15rem;">
                        <img class="card-img-top" src="https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2020/07/0/0/gym-AP-002.jpg?ve=1&tl=1"
                            alt="Card image cap"> 
                    </div>
                    
                     <div class="card margin-around" style="width: 15rem;">
                        <img class="card-img-top" src="https://i0.wp.com/post.healthline.com/wp-content/uploads/2020/06/Fitness_Class_1296x728-header-1.jpg?w=1155&h=1528"
                            alt="Card image cap"> 
                    </div>
                    
                     <div class="card margin-around" style="width: 15rem;">
                        <img class="card-img-top" src="https://cdn.vox-cdn.com/thumbor/UZNOCMDHJQthmwqAOK9l1Ln4Tzs=/0x0:3500x2330/1200x800/filters:focal(1946x322:2506x882)/cdn.vox-cdn.com/uploads/chorus_image/image/66725452/1210210029.jpg.0.jpg"
                            alt="Card image cap"> 
                    </div>
                    
                     <div class="card margin-around" style="width: 15rem;">
                        <img class="card-img-top" src="https://media.architecturaldigest.com/photos/565c88ae587d37cb3479ec65/master/w_400%2Cc_limit/fabulous-home-gyms-01.jpg"
                            alt="Card image cap"> 
                    </div>
                    
                     <div class="card margin-around" style="width: 15rem;">
                        <img class="card-img-top" src="https://static01.nyt.com/images/2020/12/14/slideshows/14virus-virtual-gym-slide-H103/14virus-virtual-gym-slide-H103-facebookJumbo.jpg"
                            alt="Card image cap"> 
                    </div>
                    
                     <div class="card margin-around" style="width: 15rem;">
                        <img class="card-img-top" src="https://www.bowflex.com/on/demandware.static/-/Library-Sites-bowflexShared/default/dw7f356149/product-lines/home-gyms/home-gyms-info-plp-bg.jpg"
                            alt="Card image cap"> 
                    </div>
			</div>
			
			
			</div>
		</div>
	</div>
	</div>
	
	
	



        
        
        
    
        

      
      <script>
      	document.getElementById("changeAddress").addEventListener("click", function() {
      	  document.getElementById("address-form").style.display = "block";
	      document.getElementById("contact-form").style.display = "none";
	      document.getElementById("password-form").style.display = "none";
      	});
      	
     	document.getElementById("changeContactNumber").addEventListener("click", function() {
        	  document.getElementById("address-form").style.display = "none";
  	      document.getElementById("contact-form").style.display = "block";
  	      document.getElementById("password-form").style.display = "none";
        	});
     	
     	document.getElementById("changePassword").addEventListener("click", function() {
        	  document.getElementById("address-form").style.display = "none";
  	      document.getElementById("contact-form").style.display = "none";
  	      document.getElementById("password-form").style.display = "block";
        	});
      </script>      
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"></script>           
</body>
</html>