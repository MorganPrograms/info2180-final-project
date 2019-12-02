<?php
session_start();
	error_reporting (E_ALL ^ E_NOTICE);
	$fname=$_POST['fname'];
	$lname=$_POST['lname'];
	$password=$_POST['password'];
	$email=$_POST['email'];
	$date=date("Y-m-d");
	
	//mysqli_connect(), this function opens a new connection to the MySql server.
	$con=mysqli_connect("localhost","root","");
	mysqli_select_db($con,"schema");
	
	//insert data into database
	$insert= "INSERT INTO users (firstname,lastname,password,email,date_joined) VALUES ('$fname','$lname','$password','$email','$date')";
	//checks if data was inserted
	if(!mysqli_query($con, $insert)){
		echo "Data was not inserted";
	}else{
		echo "Data was inserted";
	}
	
	//refresh the page
	header("Location: NewUser.html");
?>