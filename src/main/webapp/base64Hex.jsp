<!DOCTYPE html>
<html>
<head>
<title>online base64 to hex conversion, hex to base64 convert</title>
<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>
<meta name="description" content="online base64 to hex conversion, hex to base64 convert ">
<meta name="keywords" content="base64 to hex conversion, hex to base64 convert, base64 tuturial, hex conversion, online base64 conversion, online hex conversion, php, python,openssl convert hex to base64">

	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<%@ include file="header-script.jsp"%>

	<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->
	<script type="application/ld+json">
{
  "@context" : "http://schema.org",
  "@type" : "SoftwareApplication",
  "name" : "online base64 to hex conversion, hex to base64 convert",
  "image" : "https://8gwifi.org/images/site//base64Hex.png",
  "url" : "https://8gwifi.org/base64Hex.jsp",
  "author" : {
    "@type" : "Person",
    "name" : "Anish Nath"
  },
  "datePublished" : "2018-12-07",
  "applicationCategory" : [ "base64 convert hex", "hex convert base64", "online conversion"]
  "downloadUrl" : "https://8gwifi.org/base64Hex.jsp",
  "operatingSystem" : "Linux,Unix,Windows,Redhat,RHEL,Fedora,Ubuntu",
  "requirements" : "base64 to hex conversion, hex to base64 convert ",
  "softwareVersion" : "v1.0"
}
</script>

<script type="text/javascript">
        $(document).ready(function() {



			$('#tobase64').click(function (event)
			{
				//
				$('#encryptmsg').hide();
				$('#descryptmsg').show();
				$('#form').delay(200).submit()



			});

			$('#tohex').click(function (event)
			{
				//
				$('#encryptmsg').show();
				$('#descryptmsg').hide();
				$('#form').delay(200).submit()



			});


        	  $('#delimiter1').click(function (event)
                      {
           			$('#form').delay(200).submit()
                      });

        	  $('#delimiter2').click(function (event)
                      {
           			$('#form').delay(200).submit()
                      });

			$('#delimiter3').click(function (event)
			{
				$('#form').delay(200).submit()
			});

         	  $('#delimiter').click(function (event)
                      {
           			$('#form').delay(200).submit()
                      });


			$('#message').keyup(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});
           
            
            $('#form').submit(function (event)
                    {
                    //	
                  $('#outputtext1').html('<img height="20" width="20"  src="images/712.GIF"> loading...');
         			 event.preventDefault();
                        $.ajax({
                            type: "POST",
                            url: "StringFunctionality", //this is my servlet
                
                           data: $("#form").serialize(),
                            success: function(msg){    
                            	  $('#outputtext1').empty();
                            		    $('#outputtext').empty();
                                     $('#outputtext').append(msg);
                                     
                            }
                        }); 
                    });
        });
   
    </script>
</head>
<%@ include file="body-script.jsp"%>

<h1 class="mt-4">Convert Base64 to Hex ViceVersa</h1>

<div id="loading" style="display: none;">
	<img src="images/712.GIF" alt="" />Loading!
</div>

<hr>


	<form id="form" method="POST">
	<input type="hidden" name="methodName" id="methodName" value="BASE64HEX">

		<div class="form-check">
			<input class="form-check-input" type="radio" name="baseg4hex" id="tobase64" value="tobase64" checked>
			<label class="form-check-label" for="tobase64">
				Base64 to Hex
			</label>
		</div>


		<div class="form-check">
			<input class="form-check-input" type="radio" name="baseg4hex" id="tohex" value="tohex">
			<label class="form-check-label" for="tohex">
				Hex to Base64
			</label>
		</div>

		<div class="form-group row"  id="descryptmsg">
			<label for="delimiter"  class="font-weight-bold col-sm-2 col-form-label">Deliminated By</label>
			<div class="col-sm-10">
				<input checked="checked" type="radio" id="delimiter" name="delimiter" value="">Nothing
				<input type="radio" id="delimiter1" name="delimiter" value=" ">SPACE
				<input type="radio" id="delimiter2" name="delimiter" value=":">:(Colon)
			</div>
		</div>

		<div class="form-group row">
			<label for="message"  class="font-weight-bold col-sm-2 col-form-label">Input</label>
			<div class="col-sm-10">
						<textarea rows="3" cols="10" class="form-control" name="message" id="message">SGVsbG8gOGd3aWZpLm9yZw==</textarea>
			</div>
		</div>

		<input class="btn btn-primary" type="submit" id="submit" name="Sign CSR">

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


<h3><a id="PHP_Example_base64_to_Hex_0"></a>PHP Example base64 to Hex</h3>
<pre><code class="language-php"><span class="hljs-preprocessor">&lt;?php</span>
<span class="hljs-variable">$string1</span> = <span class="hljs-string">'SGVsbG8gOGd3aWZpLm9yZw=='</span>;
<span class="hljs-variable">$binary</span> = base64_decode(<span class="hljs-variable">$string1</span>);
<span class="hljs-variable">$hex</span> = bin2hex(<span class="hljs-variable">$binary</span>);
<span class="hljs-keyword">echo</span> <span class="hljs-variable">$hex</span>;
<span class="hljs-preprocessor">?&gt;</span>
</code></pre>
<h3><a id="Python_example_base64_to_hex_11"></a>Python example base64 to hex</h3>
<pre><code class="language-python"><span class="hljs-prompt">&gt;&gt;&gt; </span><span class="hljs-keyword">import</span> base64
<span class="hljs-prompt">&gt;&gt;&gt; </span>base64.b64decode(<span class="hljs-string">'SGVsbG8gOGd3aWZpLm9yZw=='</span>).encode(<span class="hljs-string">'hex'</span>)
<span class="hljs-string">'48656c6c6f203867776966692e6f7267'</span>
</code></pre>
<h3><a id="Hext_to_Base64_19"></a>Hext to Base64</h3>
<pre><code class="language-console">$ echo &quot;48656c6c6f203867776966692e6f7267&quot; | xxd -r -p | base64
SGVsbG8gOGd3aWZpLm9yZw==
</code></pre>


<%@ include file="footer_adsense.jsp"%>


<%@ include file="addcomments.jsp"%>

</div class="row">

<%@ include file="body-close.jsp"%>

