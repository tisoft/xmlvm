<?php
  include("../header.html");
  include("../content_top.html");
?>

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
	
	$stage = $_GET["stage"];
	$successful = $_GET["successful"];
  if ($stage != "2") {
?>
<h1>Submit your Corporate Contributor License Agreement</h1>

<h2>Please Confirm</h2>
Please take a close look at the data below. If this is what you want to submit, then press <b>Submit</b>. Otherwise use your browser's back button to change the data you entered and submit again.
<br/><br/>
<table>
	<tr><td>Corporation Name:</td><td><b><pre><?php echo($corpName);?></pre></b></td></tr>
	<tr><td>Corporation Address:</td><td><b><pre><?php echo($corpAddress);?></pre></b></td></tr>
	<tr><td>Point of Contact:</td><td><b><pre><?php echo($pointOfContact);?></pre></b></td></tr>
	<tr><td>E-Mail:</td><td><b><pre><?php echo($email);?></pre></b></td></tr>
	<tr><td>Telephone Number:</td><td><b><pre><?php echo($telephone);?></pre></b></td></tr>
	<tr><td>Fax Number:</td><td><b><pre><?php echo($fax);?></pre></b></td></tr>
	<tr><td>List of Employees:</td><td><b><pre><?php echo($listOfEmployees);?></pre></b></td></tr>
	<tr><td>Your Name:</td><td><b><pre><?php echo($yourName);?></pre></b></td></tr>
	<tr><td>Electronic Signature:</td><td><b><pre><?php echo($signature);?></pre></b></td></tr>
</table>
<br/><br/>
<form action="http://www.haeberling.de/xmlvm/submit_corp_cla_2.php" method="POST">
	<input type="hidden" name="corpname" value="<?php echo($corpName);?>"/>
	<input type="hidden" name="corpaddress" value="<?php echo($corpAddress);?>" />
	<input type="hidden" name="pointofcontact" value="<?php echo($pointOfContact);?>" />
	<input type="hidden" name="email" value="<?php echo($email);?>" />
	<input type="hidden" name="telephone" value="<?php echo($telephone);?>" />
	<input type="hidden" name="fax" value="<?php echo($fax);?>" />
	<input type="hidden" name="listofemployees" value="<?php echo($listOfEmployees);?>" />
	<input type="hidden" name="yourname" value="<?php echo($yourName);?>" />
	<input type="hidden" name="signature" value="<?php echo($signature);?>" />
<?php
$MSG_PREFIX = "<div style=\"color:red\">";
$MSG_POSTFIX = "</div>";
	$ok = true;
	if (empty($corpName)) {
		echo ($MSG_PREFIX . "Please enter the corporation's name." . $MSG_POSTFIX);
		$ok = false;
	}
	if (empty($corpAddress)) {
		echo ($MSG_PREFIX . "Please enter the corporation's address." . $MSG_POSTFIX);
		$ok = false;
	}
	if (empty($pointOfContact)) {
		echo ($MSG_PREFIX . "Please enter the point of contact." . $MSG_POSTFIX);
		$ok = false;
	}
	if (empty($email)) {
		echo ($MSG_PREFIX . "Please enter your e-mail address." . $MSG_POSTFIX);
		$ok = false;
	}
	if (empty($telephone)) {
		echo ($MSG_PREFIX . "Please enter your telephone number." . $MSG_POSTFIX);
		$ok = false;
	}
	if (empty($listOfEmployees)) {
		echo ($MSG_PREFIX . "Please enter a list of employees." . $MSG_POSTFIX);
		$ok = false;
	}
	if (empty($yourName)) {
		echo ($MSG_PREFIX . "Please enter your name." . $MSG_POSTFIX);
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
?>
<h2>Confirmation</h2>
<?php
  if ($successful == "1") {
?>
Your data has been submitted. We will contact you shortly with a written confirmation. Thank you for helping us making XMLVM better!
<?php
  } else {
?>
Your submission could not be sent because of technical difficulties. Please contact us directly via <a href="mailto:license@xmlvm.org">license@xmlvm.org</a>
<?php
  }
?>


<?php
	}
?>

<?php
  include("../footer.html");
?>