<!--  Corey Hicks
      12 November 2017
      Web Scripting
      Assignment 6.2

        This HTML program includes a php script to match user entered variables with defined parameters. First, an HTML form is used to prompt
      the user to enter: name, address, zip, and phone number. After pressing submit, the php script is ran. Variables are passed from the HTML
      form to be entered into PHP variables. Preg_match is used to match the user entered data with a regex expression for correct formatting.
      If the user entered variables are correctly formatted, nothing happens. If the user entered variables are malformed, a message prompts the
      user to re-enter the variables correctly.
-->
<!DOCTYPE html>
<html lang="en">

<head>
  <title>UserInfo</title>
  <meta charset="UTF-8">
</head>

<body>

  <form action="" method="post">
  Name: <input type="text" name="name"><br>
  Address: <input type="text" name="address"><br>
  Zip Code: <input type="text" name="zip"><br>
  Phone Number: <input type="text" name="number"><br>
  <input type="submit"> <!-- submit button -->
  </form>

<?php
$zip = $_POST["zip"]; // pass user entered zip value to php variable
$number = $_POST["number"]; // pass user entered number value to php variable

if(!preg_match("/^\d{5}-\d{4}$/", $zip)){ //preg match for 5 numbers, a dash, and 4 numbers only (regex value used)
  echo "Your zip code must be formated like so: XXXXX-XXXX"; // error message if not equal to above
}

if(!preg_match("/^\d{3}-\d{3}-\d{4}$/", $number)){ // preg match for 3 numbers, dash, 3 numbers, dash, 4 numbers only
  echo "Your phone number must be formated like so: XXX-XXX-XXXX"; // error message if not equal to above
}
?>
</body>

</html>
