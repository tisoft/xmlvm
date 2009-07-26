<?php
	$fullName = $_POST["fullname"];
	$email = $_POST["email"];
	$address = $_POST["address"];
	$country = $_POST["country"];
	$telephone = $_POST["telephone"];
	$fax = $_POST["fax"];
	$signature = $_POST["signature"];


  // Assemble a message and send it via e-mail.
  $message = "A new CLA application has been submitted:\n\n";
  
  // The form data
  $message .= "Full Name : ".$fullName."\n";
  $message .= "E-Mail    : ".$email."\n";
  $message .= "Address   : ".$address."\n";
  $message .= "Country   : ".$country."\n";
  $message .= "Telephone : ".$telephone."\n";
  $message .= "Fax       : ".$fax."\n";
  $message .= "Signature : ".$signature."\n\n";
  
  // Extra information about the submitter.
  $message .= "*** EXTRA INFORMATION ***\n";
  $message .= "IP Address:".$_SERVER['REMOTE_ADDR']."\n";
  
  $headers = "From: license@xmlvm.org" . "\r\n" .
           "Reply-To: license@xmlvm.org" . "\r\n" .
             "X-Mailer: PHP/" . phpversion();
  // Send the E-Mail containing the collected data.
  if (mail('license@xmlvm.org', 'XMLVM CLA Application Submission', $message, $headers)) {
    $successful = "1";
  } else {
    $successful = "0";
  }
?>

<http>
  <head>
    <meta http-equiv="Refresh"
          content="0; URL=http://www.xmlvm.org/contribute/submit_cla.php?stage=2&successful=<?php echo($successful);?>" />
  </head>
  <body>
  </body>
</http>