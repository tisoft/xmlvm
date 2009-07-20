<?php
  include("../header.html");
  include("../content_top.html");
?>

<?php
	$fullName = $_POST["fullname"];
	$email = $_POST["email"];
	$address = $_POST["address"];
	$country = $_POST["country"];
	$telephone = $_POST["telephone"];
	$fax = $_POST["fax"];
	$signature = $_POST["signature"];
	$stage = $_POST["stage"];
?>
<h1>Submit your Individual Contributor License Agreement</h1>

<h2>Please Confirm</h2>
Please take a close look at the data below. If this is what you want to submit, then press <b>Submit</b>. Otherwise use your browser's back button to change the data you entered and submit again.
<br/><br/>
<table>
	<tr><td>Full Name:</td><td><b><pre><?php echo($fullName);?></pre></b></td></tr>
	<tr><td>E-Mail:</td><td><b><pre><?php echo($email);?></pre></b></td></tr>
	<tr><td>Mailing address:</td><td><b><pre><?php echo($address);?></pre></b></td></tr>
	<tr><td>Country:</td><td><b><pre><?php echo($country);?></pre></b></td></tr>
	<tr><td>Telephone Number:</td><td><b><pre><?php echo($telephone);?></pre></b></td></tr>
	<tr><td>Fax Number:</td><td><b><pre><?php echo($fax);?></pre></b></td></tr>
	<tr><td>Electronic Signature:</td><td><b><pre><?php echo($signature);?></pre></b></td></tr>
</table>
<br/><br/>
<form action="http://www.xmlvm.org/contribute/submit_cla.php" method="POST">
	<input type="hidden" name="fullname" value="<?php echo($fullName);?>"/>
	<input type="hidden" name="email" value="<?php echo($email);?>" />
	<input type="hidden" name="address" value="<?php echo($address);?>" />
	<input type="hidden" name="country" value="<?php echo($country);?>" />
	<input type="hidden" name="telephone" value="<?php echo($telephone);?>" />
	<input type="hidden" name="fax" value="<?php echo($fax);?>" />
	<input type="hidden" name="signature" value="<?php echo($signature);?>" />
	<input type="hidden" name="stage" value="2">
<?php
$MSG_PREFIX = "<div style=\"color:red\">";
$MSG_POSTFIX = "</div>";
if ($stage != "2") {
	$ok = true;
	if (empty($fullName)) {
		echo ($MSG_PREFIX . "Please enter your full name." . $MSG_POSTFIX);
		$ok = false;
	}
	if (empty($email)) {
		echo ($MSG_PREFIX . "Please enter your e-mail address." . $MSG_POSTFIX);
		$ok = false;
	}
	if (empty($address)) {
		echo ($MSG_PREFIX . "Please enter your full address." . $MSG_POSTFIX);
		$ok = false;
	}
	if (empty($country)) {
		echo ($MSG_PREFIX . "Please enter your country." . $MSG_POSTFIX);
		$ok = false;
	}
	if (empty($telephone)) {
		echo ($MSG_PREFIX . "Please enter your telephone number." . $MSG_POSTFIX);
		$ok = false;
	}
	if (empty($signature) || $signature != "I AGREE") {
		echo ($MSG_PREFIX . "Please enter 'I AGREE' to sign the agreement." . $MSG_POSTFIX);
		$ok = false;
	}
	if ($ok == true) {
?>
	<input type="submit" value="Submit" />
<?php
	} else {
?>
    <br/><br/>
	<div style="color:red; font-weight:bold;">Some of the data you entered is incorrect. Please see the messages above. Use the browser's back button to correct your input and re-submit. Thank you.</div>
<?php
	}
?>
</form>
<?php
	} else {
		// Assemble a message and send it via e-mail.
		$message = "A new CLA has been submitted:\n\n";
		
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
		mail('saschah@gmail.com', 'XMLVM CLA Submission', $message, $headers);
?>
<h2>Confirmation</h2>
Your data has been submitted. We will contact you shortly with a written confirmation. Thank you for helping us making XMLVM better!

<?php
	}
?>

<?php
  include("../footer.html");
?>