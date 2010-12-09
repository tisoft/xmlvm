<?php
  $site_title = "Contribute";
?>
<?php
  include("../header.html");
  include("../content_top.html");
?>

<div style="font-size:12px; font-weight:bold; margin-top:-10px; margin-bottom:10px; width:100%; text-align:right;">
	<a href="https://sites.google.com/a/xmlvm.org/documentation/developing-xmlvm/?tmpl=/system/app/templates/print/&showPrintDialog=1"
	   target="_blank">
	  Print
	</a>
</div>
<iframe  style="width:100%;border:0;margin:0;padding:0;" id="manual_iframe" frameborder="0"
         src="https://sites.google.com/a/xmlvm.org/documentation/developing-xmlvm/" >
</iframe>
<script>
  function resizeIframe() {
    var window_height = (typeof window.innerHeight != 'undefined' ? window.innerHeight : document.body.offsetHeight);
    var iframe = document.getElementById('manual_iframe');
	// iframe's height = height of window - footer - header.
	iframe.height = (window_height - 240);
  }
  resizeIframe();
  window.onresize = function(event) {
    resizeIframe();
  }
</script>

<?php
  include("../footer.html");
?>