<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Hotel Booking Form</title>

  <!-- jQuery & jQuery UI -->
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>

  <!-- Font Awesome for calendar icon -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f4f4f4;
      padding: 40px;
    }

    h1 {
      text-align: center;
      margin-bottom: 30px;
      color: #333;
    }

    .booking-form {
      background: #ffffff;
      padding: 40px;
      border-radius: 8px;
      max-width: 600px;
      margin: 0 auto;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    .booking-form form .form-group {
      position: relative;
      margin-bottom: 20px;
    }

    .booking-form label {
      font-size: 14px;
      color: #707079;
      display: block;
      margin-bottom: 8px;
    }

    .booking-form input[type="text"],
    .booking-form input[type="date"],
    .booking-form select {
      width: 100%;
      height: 48px;
      padding: 0 40px 0 15px;
      border: 1px solid #ccc;
      border-radius: 4px;
      font-size: 16px;
      box-sizing: border-box;
    }

    .booking-form i.fa-calendar {
      position: absolute;
      right: 15px;
      top: 36px;
      color: #dfa974;
      pointer-events: none;
    }

    .booking-form button {
      display: block;
      width: 100%;
      height: 46px;
      background: transparent;
      border: 2px solid #dfa974;
      color: #dfa974;
      font-size: 14px;
      font-weight: bold;
      text-transform: uppercase;
      border-radius: 4px;
      cursor: pointer;
      margin-top: 20px;
      transition: all 0.3s ease;
    }

    .booking-form button:hover {
      background: #dfa974;
      color: #fff;
    }
  </style>
</head>
<body>

<h1>Welcome to Sona Hotel!</h1>
<div class="booking-form">
  <form action="/SaveUserData" method="post">
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" id="name" name="uname" class="name"  placeholder="Enter name" required>
    </div>

    <div class="form-group">
      <label for="email">Email:</label>
      <input type="text" id="email" name="uemail" class="email" type="text" placeholder="Enter email" required>
    </div>

	<div class="form-group">
	     <label for="password">Password:</label>
	     <input type="text" id="password" name="upass" class="password" type="text" placeholder="Enter password" required>
	   </div>

	   <div class="form-group">
	   	     <label for="confirm password">Confirm Password:</label>
	   	     <input type="text" id="confirm password" name="ucpass" class="confirm password" type="text" placeholder="Enter confirm password" required>
	   	   </div>

	   
    <button type="submit">Register</button>
  </form>
</div>

<script>
  $(function() {
    $("#date-in, #date-out").datepicker({
      dateFormat: "yy-mm-dd",
      minDate: 0
    });
  });
</script>

</body>
</html>
