<?php
session_start(); //Starting the session

		$email=$_POST['email'];
		$password=$_POST['password'];
		
		//mysqli_connect(), this function opens a new connection to the MySql server.
		$con=mysqli_connect("localhost","root","");
		mysqli_select_db($con,"schema");
		
		//query to fetch information of registered users and finds the user.
		$query= mysqli_query($con, "SELECT email,password FROM users WHERE  email='$email' and password='$password'") or die(mysqli_error($con));
		$finding= mysqli_fetch_array($query);
		if ($finding['email']==$email && $finding['password']==$password){
			header("Location: NewUser.html");
		}else{
			echo "Failed";
		}


	

?>