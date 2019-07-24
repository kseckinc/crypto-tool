<!DOCTYPE html>
<html>
<head>
	<title>Online Base64 encode and decode a string or a file</title>
	<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>
	<meta name="description" content="online encode decode to Base64 format with our simple online tool base64, decode, encode, online, tool" />
	<meta name="keywords" content="base64 decode  encode  online, tool for converting base64 encode decode in UTF format" />
	<meta name="robots" content="index, follow" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<%@ include file="header-script.jsp"%>

	<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->
	<script type="application/ld+json">
{
  "@context" : "http://schema.org",
  "@type" : "SoftwareApplication",
  "name" : "Online Base64 encode and decode a string or file ",
  "image" : "https://8gwifi.org/images/site/base64.png",
  "url" : "https://8gwifi.org/Base64Functions.jsp",
  "author" : {
    "@type" : "Person",
    "name" : "Anish Nath"
  },
  "datePublished" : "2018-01-22",
  "applicationCategory" : ["Base64 Encode","base64 decode","string base64 encode","string base64 decode", "file encode decode"],
  "downloadUrl" : "https://8gwifi.org/Base64Functions.jsp",
  "operatingSystem" : "Linux,Unix,Windows,Redhat,RHEL,Fedora,Ubuntu,Android,iPhone",
  "requirements" : "Online tool to encode or decode base64 Message",
  "softwareVersion" : "v1.0"
}
</script>

	<script type="text/javascript">
		$(document).ready(function() {

			$('#inputtext').keyup(function (event)
			{
				$('#form').delay(200).submit()
			});
			$('#form').submit(function (event)
			{
				//
				$('#outputtext1').html('<img src="images/712.GIF"> loading...');
				event.preventDefault();
				$.ajax({
					type: "POST",
					url: "StringFunctionality", //this is my servlet

					data: $("#form").serialize(),
					success: function(msg){
						$('#outputtext').empty();
						$('#outputtext').append('<textarea rows="5" class="form-control">'+msg+'</textarea>');

					}
				});
			});
		});

	</script>
</head>
<%@ include file="body-script.jsp"%>
<h1 class="mt-4">Base64 encode and decode</h1>



<div id="loading" style="display: none;">
	<img src="images/712.GIF" alt="" />Loading!
</div>

<hr>

<form id="form" method="POST">
	<input type="hidden" name="methodName" id="methodName" value="CALCULATE_BASE64">
	<div class="form-group">
		<label for="inputtext">Type Something</label>
		<textarea name="inputtext" class="form-control" id="inputtext" cols="20" rows="5" placeholder="Type Soemthing The inputetext"></textarea>
	</div>

	<div class="form-group">
		<label for="filePicker">or drag a file:</label><br>
		<input type="file" id="filePicker">
	</div>

	<script>
		var handleFileSelect = function(evt) {


			var files = evt.target.files;
			var file = files[0];

			if (files && file) {
				var reader = new FileReader();

				reader.onload = function(readerEvt) {
					var binaryString = readerEvt.target.result;
					if (document.getElementById("encode").checked) {
						$('#outputtext').empty();
						$('#outputtext').append('<textarea rows="10" class="form-control">'+btoa(binaryString)+'</textarea>');
					}
					else{
						$('#outputtext').empty();
						file = new Blob([atob(binaryString)]);
						if (window.navigator.msSaveOrOpenBlob) {
							window.navigator.msSaveOrOpenBlob(file, 'base64decodedfile.dec');
						} else { // Others
							const a = document.createElement('a');
							const url = URL.createObjectURL(file);
							a.href = url;
							a.download = 'base64decodedfile.dec';
							document.body.appendChild(a);
							alert("The Base64 decoded File will get Downloaded ")
							a.click();
							$('#outputtext').append("<p><font color=blue>The decoded base64 file is downloaded with name base64decodedfile.dec</font></p>");
							setTimeout(() => {
								document.body.removeChild(a);
							window.URL.revokeObjectURL(url);
						}, 0);
						}

					}
				};

				reader.readAsBinaryString(file);
			}
		};

		if (window.File && window.FileReader && window.FileList && window.Blob) {
			document.getElementById('filePicker').addEventListener('change', handleFileSelect, false);
		} else {
			alert('The File APIs are not fully supported in this browser.');
		}
	</script>


	<p>Encode/Decode</p>
	<div class="form-check form-check-inline">
		<input class="form-check-input" checked="checked" type="radio" id="encode" name="enCodeDecode" value="encode">EnCode
	</div>
	<div class="form-check form-check-inline">
		<input class="form-check-input" type="radio" id="decode" name="enCodeDecode" value="decode">DeCode
	</div>
	<hr>
	<p>Encoding/Decoding Scheme</p>
	<div class="form-check form-check-inline">
		<input checked="checked" type="radio" id="encoding" name="encoding" value="ASCII">ASCII
	</div>
	<div class="form-check form-check-inline">
		<input class="form-check-input" type="radio" id="encoding1" name="encoding" value="UTF-8">UTF-8
	</div>
	<div class="form-check form-check-inline">
		<input class="form-check-input" type="radio" id="encoding2" name="encoding" value="UTF-16">UTF-16
	</div>
	<div class="form-check form-check-inline">
		<input class="form-check-input" type="radio" id="encoding4" name="encoding" value="ISO-8859-1">ISO-8859-1
	</div>
	<div class="form-check form-check-inline">
		<input class="form-check-input" type="radio" id="encoding5" name="encoding" value="ISO-8859-2">ISO-8859-2
	</div>
	<div class="form-check form-check-inline">
		<input class="form-check-input" type="radio" id="encoding6" name="encoding" value="ISO-8859-6">ISO-8859-6
	</div>
	<input class="form-check-input" type="radio" id="encoding7" name="encoding" value="ISO-8859-15">ISO-8859-15
	<div class="form-check form-check-inline">
		<input class="form-check-input" type="radio" id="encoding8" name="encoding" value="Windows-1252">Windows-1252
	</div>
	<p>
		<input class="btn btn-primary" type="submit" id="submit" name="submit">

</form>

<div id="outputtext"></div>
<hr>
<h2 class="mt-4">Try Other Convertor</h2>
<div class="row">
	<div>
		<ul>
			<li><a href="UrlEncodeDecodeFunctions.jsp"><font size="2.5px">URL Encoders/Decoders</font></a></li>
			<li><a href="HexToStringFunctions.jsp"><font size="2.5px">Hex To String Conversion</font></a></li>
			<li><a href="HexToStringFunctions.jsp"><font size="2.5px">String To Hex Conversion</font></a></li>
			<li><a href="base64Hex.jsp"><font size="2.5px">Base64 To Hex (ViceVersa)</font></a></li>
			<li><a href="Base64Functions.jsp"><font size="2.5px">Base64 Encode/Decode</font></a></li>
			<li><a href="StringFunctions.jsp"><font size="2.5px">Various String Functions</font></a></li>
			<li><a href="contactus.jsp">Feature Request</a></li>
		</ul>
	</div>
</div>

<div class="sharethis-inline-share-buttons"></div>
<%@ include file="thanks.jsp"%>

<hr>



<p>
	Base64 is a group of similar binary-to-text encoding schemes that represent binary data in an ASCII string format by translating it into a radix-64 representation. The term Base64 originates from a specific MIME content transfer encoding.
	Base64 encoding schemes are commonly used when there is a need to encode binary data that needs to be stored and transferred over media that is designed to deal with textual data. This is to ensure that the data remains intact without modification during transport. Base64 is commonly used in a number of applications including email via MIME, and storing complex data in XML.
</p>
<h4><a id="How_to_encodedecode_base64_via_command_line_0"></a>How to encode/decode base64 via command line</h4>
<pre><code>openssl base64 -d -in myfile.jpg.b64 -out myfile.jpg
openssl base64 -in myfile.jpg -output myfile.jpg.b64
</code></pre>
<pre><code>echo -n 'Hello 8gwifi.org' | openssl base64
openssl enc -base64 -d &lt;&lt;&lt; SGVsbG8gOGd3aWZpLm9yZwo=
</code></pre>
<pre><code>base64 -i &lt;in-file&gt; -o &lt;outfile&gt;
base64 --decode &lt;outfile&gt;

base64 --decode
SGVsbG8gOGd3aWZpLm9yZwo=
[ctrl+d]
</code></pre>
<pre><code>echo Hello 8gwifi.org | python -m base64
</code></pre>

<%@ include file="footer_adsense.jsp"%>


<%@ include file="addcomments.jsp"%>

</div class="row">

<%@ include file="body-close.jsp"%>

