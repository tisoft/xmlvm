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

<?php
  if ($stage != "2") {
?>
<h2>Please Confirm</h2>
Please take a close look at the data below. If this is what you want to submit, then press <b>Submit</b>. Otherwise use your browser's back button to change the data you entered and submit again.

<table>
	<tr><td>Full Name:</td><td><?php echo($fullName);?></td></tr>
	<tr><td>E-Mail:</td><td><?php echo($email);?></td></tr>
	<tr><td>Mailing address:</td><td><?php echo($address);?></td></tr>
	<tr><td>Country:</td><td><?php echo($country);?></td></tr>
	<tr><td>Telephone Number:</td><td><?php echo($telephone);?></td></tr>
	<tr><td>Fax Number:</td><td><?php echo($fax);?></td></tr>
	<tr><td>Electronic Signature:</td><td><?php echo($signature);?></td></tr>
</table>

<form action="http://www.xmlvm.org/contribute/submit_cla.php" method="POST">
	<input type="hidden" name="fullname" value="<?php echo($fullName);?>"/>
	<input type="hidden" name="email" value="<?php echo($email);?>" />
	<input type="hidden" name="address" value="<?php echo($address);?>" />
	<input type="hidden" name="country" value="<?php echo($country);?>" />
	<input type="hidden" name="telephone" value="<?php echo($telephone);?>" />
	<input type="hidden" name="fax" value="<?php echo($fax);?>" />
	<input type="hidden" name="signature" value="<?php echo($signature);?>" />
	<input type="hidden" name="stage" value="2">
	<input type="submit" value="Submit" />
</form>
<?php
	} else {
?>
<h2>Confirmation</h2>
Your data has been submitted. We will contact you shortly with a written confirmation. Thank you for helping making XMLVM better!

<?php
	}
?>

<?php
  include("../footer.html");
?>