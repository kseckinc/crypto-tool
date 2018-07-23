<%@ page import="z.y.x.Security.RSAUtil" %>
<%@ page import="java.security.KeyPair" %>
<!DOCTYPE html>
<html>
<head>


	<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->
	<script type="application/ld+json">
{
  "@context" : "http://schema.org",
  "@type" : "SoftwareApplication",
  "name" : "RSA Encryption Decryption tool, Online RSA key generator",
  "image" : "https://github.com/anishnath/crypto-tool/blob/master/rsaencdec.png",
  "url" : "https://8gwifi.org/rsafunctions.jsp",
  "author" : {
    "@type" : "Person",
    "name" : "Anish Nath"
  },
  "datePublished" : "2017-09-25",
  "applicationCategory" : [ "rsa encryption decryption online", "online rsa key generator", "rsa calculate private key online", "rsa generate private key online", "rsa decryption calculator online", "rsa decrypt with public key", "rsa encrypt decrypt RSA/ECB/PKCS1Padding", "RSA/ECB/PKCS1Padding", "RSA/None/PKCS1Padding", "RSA", "rsa public and private key"],
  "downloadUrl" : "https://8gwifi.org/rsafunctions.jsp",
  "operatingSystem" : "Linux,Unix,Windows,Redhat,RHEL,Fedora,Ubuntu,Android,iPhone",
  "requirements" : "rsa algorithm encryption decryption online, generate rsa key pairs and perform encryption and decryption using rsa public and private keys rsa encryption decryption online, online rsa key generator,rsa generate public private key online,rsa decryption calculator online,rsa decrypt with public key,rsa encrypt RSA/ECB/PKCS1Padding, rsa encrypt decrypt RSA/ECB/PKCS1Padding, RSA/ECB/PKCS1Padding,RSA/None/PKCS1Padding,RSA,RSA/NONE/OAEPWithSHA1AndMGF1Padding,RSA/ECB/OAEPWithSHA-256AndMGF1Padding,RSA/NONE/OAEPWithSHA1AndMGF1Padding,rsa public key decoder,rsa private key decrypt online, rsa key in pem format ",
  "softwareVersion" : "v1.0"
}
</script>

	<title>RSA Encryption Decryption tool, Online RSA key generator </title>
	<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>

	<meta name="keywords" content="rsa encryption decryption online, online rsa key generator,rsa generate public private key online,rsa decryption calculator online,rsa decrypt with public key,rsa encrypt RSA/ECB/PKCS1Padding, rsa encrypt decrypt RSA/ECB/PKCS1Padding, RSA/ECB/PKCS1Padding,RSA/None/PKCS1Padding,RSA,RSA/NONE/OAEPWithSHA1AndMGF1Padding,RSA/ECB/OAEPWithSHA-256AndMGF1Padding,RSA/NONE/OAEPWithSHA1AndMGF1Padding,rsa public key decoder,rsa private key decrypt online, rsa key in pem format" />
	<meta name="description" content="rsa algorithm encryption decryption online, generate rsa key pairs and perform encryption and decryption using rsa public and private keys " />

	<meta name="robots" content="index,follow" />
	<meta name="googlebot" content="index,follow" />
	<meta name="resource-type" content="document" />
	<meta name="classification" content="tools" />
	<meta name="language" content="en" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<%@ include file="header-script.jsp"%>

	<%
		String pubKey = "";
		String privKey = "";
		String checkedKey="512";
		boolean k1=false;
		boolean k2=false;
		boolean k3=false;
		boolean k4=false;


		if (request.getSession().getAttribute("pubkey")==null) {
			KeyPair kp = RSAUtil.generateKey(1024);
			pubKey =RSAUtil.toPem(kp.getPublic());
			privKey = RSAUtil.toPem(kp);
			k2=true;
		}
		else {
			pubKey = (String)request.getSession().getAttribute("pubkey");
			privKey = (String)request.getSession().getAttribute("privKey");
			checkedKey = (String)request.getSession().getAttribute("keysize");
		}

		if("512".equals(checkedKey))
		{
			k1=true;
		}
		if("1024".equals(checkedKey))
		{
			k2=true;

		}
		if("2048".equals(checkedKey))
		{
			k3=true;
		}
		if("4096".equals(checkedKey))
		{
			k4=true;
		}

		//System.out.println(k1);
		//System.out.println(k2);
		//System.out.println(k3);
		//System.out.println(k4);

	%>

	<script type="text/javascript">
		$(document).ready(function() {




			$('#submit').click(function(event) {
				$('#form').delay(200).submit()
			});

			$('#publickeyparam').keyup(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#privatekeyparam').keyup(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});


			$('#message').keyup(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#keysize1').click(function(event) {
				//
				// event.preventDefault();
				$('#form1').delay(200).submit()
			});

			$('#keysize2').click(function(event) {
				//
				// event.preventDefault();
				$('#form1').delay(200).submit()
			});

			$('#keysize3').click(function(event) {
				//
				// event.preventDefault();
				$('#form1').delay(200).submit()
			});

			$('#keysize4').click(function(event) {
				//
				// event.preventDefault();
				$('#form1').delay(200).submit()
			});

			$('#cipherparameter1').click(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#cipherparameter2').click(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#cipherparameter3').click(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#cipherparameter4').click(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#encryptparameter').click(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#decryptparameter').click(function(event) {

				var text = $('#output').find('textarea[name="encrypedmessagetextarea"]').val();
				if ( text != null ) {
					$("#message").val(text);
				}
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});


			$('#form').submit(function(event) {
				//
				$('#output').html('<img src="images/712.GIF"> loading...');
				event.preventDefault();
				$.ajax({
					type : "POST",
					url : "RSAFunctionality", //this is my servlet

					data : $("#form").serialize(),
					success : function(msg) {
						$('#output').empty();
						$('#output').append(msg);
						$("#publickeyparam").resizable();
						$("#privatekeyparam").resizable();

					}
				});
			});

		});
	</script>
</head>


<%@ include file="body-script.jsp"%>

<h1 class="mt-4">RSA Ecryption Decryption</h1>
<hr>


<div id="loading" style="display: none;">
	<img src="images/712.GIF" alt="" />Loading!
</div>



<form id="form1" class="form-horizontal" method="GET" name="form2" action="RSAFunctionality?q=setNeKey">
	<b>Generate RSA Key Size</b>	<input <% if(k1) {  %> checked <% } %>

													id="keysize1"  type="radio" name="keysize"
													value="512">512 bit
	<input <% if(k2) {  %> checked <% } %> id="keysize2" type="radio" name="keysize"
						   value="1024">1024 bit
	<input <% if(k3) {  %> checked <% } %> id="keysize3" type="radio" name="keysize"
						   value="2048">2048 bit
	<input <% if(k4) {  %> checked <% } %> id="keysize4" type="radio" name="keysize"
						   value="4096">4096 bit
</form>
</fieldset>


<form id="form" class="form-horizontal" method="POST">
	<input type="hidden" name="methodName" id="methodName"
		   value="CALCULATE_RSA">


	<div class="radio">
		<label>
			<input checked id="encryptparameter" type="radio" name="encryptdecryptparameter" value="encrypt">
			Encrypt to RSA Encryption
		</label>
	</div>
	<div class="radio">
		<label>
			<input id="decryptparameter" type="radio" name="encryptdecryptparameter" value="decryprt">
			Decrypt RSA Message
		</label>
	</div>

	<table class="table">
		<tr>
			<th>Public Key </th>
			<th>Private Key </th>
		</tr>

		<tr>
			<td>
				<textarea class="form-control animated" rows="10"   name="publickeyparam" id="publickeyparam"><%= pubKey %></textarea>
			</td>
			<td>
				<textarea class="form-control animated" rows="10"   name="privatekeyparam" id="privatekeyparam"><%= privKey %></textarea>
			</td>


		</tr>

		<tr>

			<td>
				<b>ClearText Message</b><textarea class="form-control" rows="5"  placeholder="Type Something Here..."  name="message" id="message"></textarea>
			</td>
			<td width="50%">
				<b>output</b><div id="output"></div>
			</td>
		</tr>
		<tr>
			<td colspan="2" width="20%">
				<strong>RSA Ciphers</strong>
				<br/>

				<div class="radio">
					<label>
						<input id="cipherparameter3" type="radio" name="cipherparameter"
							   checked value="RSA"  >RSA
					</label>
				</div>

				<div class="radio">
					<label>
						<input id="cipherparameter1" type="radio" name="cipherparameter"
							   value="RSA/ECB/PKCS1Padding"  >RSA/ECB/PKCS1Padding
					</label>
				</div>

				<div class="radio">
					<label>
						<input id="cipherparameter2" type="radio" name="cipherparameter"
							   value="RSA/None/PKCS1Padding"  >RSA/None/PKCS1Padding
					</label>
				</div>

				<div class="radio">
					<label>
						<input id="cipherparameter4" type="radio" name="cipherparameter"
							   value="RSA/NONE/OAEPWithSHA1AndMGF1Padding"  >RSA/NONE/OAEPWithSHA1AndMGF1Padding
					</label>
				</div>

				<div class="radio">
					<label>
						<input id="cipherparameter5" type="radio" name="cipherparameter"
							   value="RSA/ECB/OAEPWithSHA-1AndMGF1Padding">RSA/ECB/OAEPWithSHA-1AndMGF1Padding
					</label>
				</div>

			</td>



		</tr>



	</table>


</form>

<hr>

<div class="sharethis-inline-share-buttons"></div>
<%@ include file="thanks.jsp"%>

<hr>

<h2 class="mt-4" id="thersaalgorithm">The RSA Algorithm</h2>

<p>The <strong>Rivest-Shamir-Adleman (RSA)</strong> algorithm is one of the most popular and secure public-key encryption methods. The algorithm capitalizes on the fact that there is no efficient way to factor very large (100-200 digit) numbers</p>

<p>RSA encryption usually is only used for messages that fit into one block. </p>

<ul>
	<li><strong><em>A 1024-bit RSA key invocation can encrypt a message up to 117 bytes, and results in a 128-byte value</em></strong>  </li>

	<li><strong><em>A 2048-bit RSA key invocation can encrypt a message up to 245 bytes</em></strong></li>
</ul>

<p>RSA, as defined by <strong>PKCS#1,</strong> encrypts "messages" of limited <em>size,the maximum size</em> of data which can be encrypted with <strong>RSA is 245 bytes. No more</strong></p>

<%@ include file="addcomments.jsp"%>

</div>

<%@ include file="body-close.jsp"%>
