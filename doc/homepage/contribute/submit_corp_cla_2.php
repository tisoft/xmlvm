<?php
	$corpName = $_POST["corpname"];
	$corpAddress = $_POST["corpaddress"];
	$pointOfContact = $_POST["pointofcontact"];
	$email = $_POST["email"];
	$telephone = $_POST["telephone"];
	$fax = $_POST["fax"];
	$listOfEmployees = $_POST["listofemployees"];
	$yourName = $_POST["yourname"];
	$signature = $_POST["signature"];

  // Assemble a message and send it via e-mail.
  $message = "A new Corporate CLA application has been submitted:\n\n";
  
  // The form data
  $message .= "Corporation Name    : ".$corpName."\n";
  $message .= "Corporation Address : ".$corpAddress."\n";
  $message .= "Point of Contact    : ".$pointOfContact."\n";
  $message .= "E-Mail              : ".$email."\n";
  $message .= "Telephone           : ".$telephone."\n";
  $message .= "Fax                 : ".$fax."\n";
  $message .= "List of Employees   : ".$listOfEmployees."\n";
  $message .= "Your Name           : ".$yourName."\n";
  $message .= "Signature : ".$signature."\n\n";
  
  // Extra information about the submitter.
  $message .= "*** EXTRA INFORMATION ***\n";
  $message .= mt_implode($_SERVER);
  
  $headers = "From: license@xmlvm.org" . "\r\n" .
             "Reply-To: license@xmlvm.org" . "\r\n" .
             "X-Mailer: PHP/" . phpversion();
  // Send the E-Mail containing the collected data.
  if (mail('license@xmlvm.org', 'XMLVM CLA Application Submission', $message, $headers)) {
    $successful = "1";
  } else {
    $successful = "0";
  }
  

  function mt_implode($array)
  {
      $lem = array_keys($array);
      for($i=0;$i<sizeof($lem);$i++) {
          $str .= $lem[$i] . ": " . $array[$lem[$i]] . "\n";
      }
      return $str;
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