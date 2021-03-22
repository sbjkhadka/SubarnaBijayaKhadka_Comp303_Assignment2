<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
        <style>
	  		  body {
	  			color: #4787ff;
	  			background-color: #4787ff;
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
			  color: lavender;
			}
			a:hover {
			  text-decoration: none;
			  color: lavender;
			}  
			.nav-item{
			height: 100%;
			padding-right: 20px;
			display: inline;
			vertical-align: middle;
			}
			
			.nav-item:hover {
			text-decoration: underline solid white 2px;
			}
			.nav-container {
			background-color:#ff6347;
			border-radius: 5px;
			padding-left: 20px;
			height: 35px;
			margin-bottom: 5px;
			display: flex;
			justify-content: center;
			
			}
			form {
			width: 90%;
			}
			.submit-button {
			margin-top: 15px;
			}
    </style>
</head>
<body>

	<div class="container-fluid">
		<div class="row vh-100">
			<div class="col-md-12 d-flex flex-column justify-content-around align-items-center h-100">
				<div style="width: 35%">
					<div class=" nav-container">
						
						<div class="nav-item d-flex justify-content-around align-items-center"><a href="register">REGISTER</a></div>
					</div>
	            <div class="d-flex flex-column justify-content-around align-items-center border-style p-10">
	                    <h3>Login</h3>
	                    
	                    	<form method="POST">
	    <div class="row">
	        <div class="col-md-12">
	            <div class="form-group">
	                <label for="user_name">User Name</label>
	                <input class="form-control" type="text" id="user_name" name="user_name" />
	            </div>
	        </div>
	    </div>
	
	    <div class="row">
	        <div class="col-md-12">
	            <div class="form-group">
	                <label for="user_pass">Password</label>
	                <input class="form-control" type="text" id="user_pass" name="user_pass" />
	            </div>
	        </div>
	    </div>
	
	
	
	    <div class="col-md-12 submit-button">
	        <input class="form-control btn btn-primary" type="submit" value="submit" />
	    </div>
	    <small>${errorMessage }</small>
	</form>
	         </div>
	       </div>
	     </div>
	   </div>
	</div>
	

                    
                     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"></script> 
</body>
</html>