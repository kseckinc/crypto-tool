<%@ page import="java.util.Enumeration" %>
<%@ page import="sun.misc.BASE64Encoder" %>
<%@ page import="sun.misc.BASE64Decoder" %>
<!DOCTYPE html>
<html>
<head>
	<title>Online Cipher Algorithms, Encryption Decryption using aes,aes/cbc/nopadding,blowfish,camellia,cast5,cast6,chacha,des,desede,gcm,gost28147,shacal-2,skipjack,sm4,serpent,shacal2,tea,threefish-1024,threefish-256,threefish-512,tnepres,twofish,vmpc,vmpc-ksa3,xtea</title>

	<!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->
	<script type="application/ld+json">
{
  "@context" : "http://schema.org",
  "@type" : "SoftwareApplication",
  "name" : "Encrypt/Decrypt Message",
  "image" : "https://github.com/anishnath/crypto-tool/blob/master/encryption_decryption.png",
  "url" : "https://8gwifi.org/CipherFunctions.jsp",
  "author" : {
    "@type" : "Person",
    "name" : "Anish Nath"
  },
  "datePublished" : "2017-09-25",
  "applicationCategory" : [ "AES", "DES", "DESede", "Blowfish", "Twofish", "IDEA", "Rijndael", "CAST5", "AES/CBC/PKCS5Padding", "AES/CBC/NoPadding", "AES/ECB/NoPadding", "AES/ECB/PKCS5Padding", "DES/CBC/NoPadding", "DES/CBC/PKCS5Padding", "DES/ECB/NoPadding", "DES/ECB/PKCS5Padding", "DESede/CBC/NoPadding", "DESede/CBC/PKCS5Padding", "DESede/ECB/NoPadding", "DESede/ECB/PKCS5Padding" ],
  "downloadUrl" : "https://8gwifi.org/CipherFunctions.jsp",
  "operatingSystem" : "Linux,Unix,Windows,Redhat,RHEL,Fedora,Ubuntu",
  "requirements" : "encode,encrypt,encryption,online encrypt,decode,decrypt online,decryption,AES,DES,DESede,AES/CBC/PKCS5Padding,AES/ECB/NoPadding,AES/ECB/PKCS5Padding,DES/CBC/NoPadding,DES/CBC/PKCS5Padding,DES/ECB/NoPadding,DES/ECB/PKCS5Padding,DESede/CBC/NoPadding,DESede/CBC/PKCS5Padding,DESede/ECB/NoPadding,DESede/ECB/PKCS5Padding,Blowfish,MARS,RC6,Rijndael,Serpent,Twofish,online encyption decryption,CAST5 online,aes/ecb/pkcs5padding online,des decryption online,aes decryption online base64,decrypt rsa private key online,aes/cbc/pkcs5padding decrypt online,aes/cbc/pkcs5padding online,aes/cbc/pkcs5padding decrypt,aes 128 ecb online,aes/ecb/nopadding",
  "softwareVersion" : "v1.0"
}
</script>

	<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>
	<meta name="description"
		  content="Encryption Decryption using aes,aes/cbc/nopadding,aes/cbc/pkcs5padding,aes/ecb/nopadding,aes/ecb/pkcs5padding,aes_128/cbc/nopadding,aes_128/cfb/nopadding,aes_128/ecb/nopadding,aes_128/gcm/nopadding,aes_128/ofb/nopadding,aes_192/cbc/nopadding,aes_192/cfb/nopadding,aes_192/ecb/nopadding,aes_192/gcm/nopadding,aes_192/ofb/nopadding,aes_256/cbc/nopadding,aes_256/cfb/nopadding,aes_256/ecb/nopadding,aes_256/gcm/nopadding,aes_256/ofb/nopadding,aria,blowfish,blowfish,camellia,cast5,cast6,chacha,des,des/cbc/nopadding,des/cbc/pkcs5padding,des/ecb/nopadding,des/ecb/pkcs5padding,desede,desede,desede/cbc/nopadding,desede/cbc/pkcs5padding,desede/ecb/nopadding,desede/ecb/pkcs5padding,gcm,gost28147,grain128,grainv1,hc128,hc256,idea,noekeon,pbe,rc2,rc5,rc6,rijndael,salsa20,seed,shacal-2,skipjack,sm4,serpent,shacal2,tea,threefish-1024,threefish-256,threefish-512,tnepres,twofish,vmpc,vmpc-ksa3,xtea "/>
	<meta name="keywords"
		  content="encode,encrypt,encryption,online encrypt,decode,decrypt online,decryption,AES,DES,DESede,AES/CBC/PKCS5Padding,AES/ECB/NoPadding,AES/ECB/PKCS5Padding,DES/CBC/NoPadding,DES/CBC/PKCS5Padding,DES/ECB/NoPadding,DES/ECB/PKCS5Padding,DESede/CBC/NoPadding,DESede/CBC/PKCS5Padding,DESede/ECB/NoPadding,DESede/ECB/PKCS5Padding,Blowfish,MARS,RC6,Rijndael,Serpent,Twofish,online encyption decryption,CAST5 online,aes/ecb/pkcs5padding online,des decryption online,aes decryption online base64,decrypt rsa private key online,aes/cbc/pkcs5padding decrypt online,aes/cbc/pkcs5padding online,aes/cbc/pkcs5padding decrypt,aes 128 ecb online,aes/ecb/nopadding"/>
	<meta name="author" content="CRYPTO" />
	<meta name="robots" content="index,follow" />
	<meta name="googlebot" content="index,follow" />
	<meta name="resource-type" content="document" />
	<meta name="classification" content="tools" />
	<meta name="language" content="en" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<%@ include file="header-script.jsp"%>


	<script type="text/javascript">
		$(document).ready(function() {



			$('#genkeypair').click(function (event)
			{
				//
				$('#form').delay(200).submit()

			});


			$('#cipherparameternew').change(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#plaintext').keyup(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});

			$('#secretkey').keyup(function(event) {
				//
				// event.preventDefault();
				$('#form').delay(200).submit()
			});


			$('#encrypt').click(function(event) {
				$('#form').delay(200).submit()
			});


			$('#decrypt').click(function(event) {

				var text = $('#output').find('textarea[name="encrypedmessagetextarea"]').val();
				if ( text != null ) {
					$("#plaintext").val(text);
				}

				$('#form').delay(200).submit()
			});

			$('#form').submit(function(event) {
				//
				$('#output').html('<img src="images/712.GIF"> loading...');
				event.preventDefault();
				$.ajax({
					type : "POST",
					url : "CipherFunctionality", //this is my servlet

					data : $("#form").serialize(),
					success : function(msg) {
						$('#output').empty();
						$('#output').append(msg);

					}
				});
			});
		});
	</script>
</head>

<%@ include file="body-script.jsp"%>
<h1 class="mt-4">Encrypt/Decrypt Message</h1>



<div id="loading" style="display: none;">
	<img src="images/712.GIF" alt="" />Loading!
</div>

<form class="form-horizontal" id="form" method="POST">
	<input type="hidden" name="methodName" id="methodName"
		   value="CIPHERBLOCK_NEW">

	<div class="form-group">
		<label for="cipherparameternew" class="col-sm-5 control-label">Cipher</label>

		<div class="col-sm-10">
			<select name="cipherparameternew" id="cipherparameternew" class="form-control">
				<option selected value="<%="AES/CBC/PKCS5PADDING"%>">AES/CBC/PKCS5PADDING</option>
				<%
					String[] validList = { "AES","AES/CBC/NOPADDING","AES/ECB/NOPADDING","AES/ECB/PKCS5PADDING","AES_128/CBC/NOPADDING","AES_128/CFB/NOPADDING","AES_128/ECB/NOPADDING","AES_128/GCM/NOPADDING","AES_128/OFB/NOPADDING","AES_192/CBC/NOPADDING","AES_192/CFB/NOPADDING","AES_192/ECB/NOPADDING","AES_192/GCM/NOPADDING","AES_192/OFB/NOPADDING","AES_256/CBC/NOPADDING","AES_256/CFB/NOPADDING","AES_256/ECB/NOPADDING","AES_256/GCM/NOPADDING","AES_256/OFB/NOPADDING","ARIA","BLOWFISH","CAMELLIA","CAST5","CAST6","CHACHA","DES","DES/CBC/NOPADDING","DES/CBC/PKCS5PADDING","DES/ECB/NOPADDING","DES/ECB/PKCS5PADDING","DESEDE","DESEDE/CBC/NOPADDING","DESEDE/CBC/PKCS5PADDING","DESEDE/ECB/NOPADDING","DESEDE/ECB/PKCS5PADDING","GCM","GOST28147","GRAIN128","GRAINV1","HC128","HC256","IDEA","NOEKEON","PBEWITHMD2ANDDES","PBEWITHMD5AND128BITAES-CBC-OPENSSL","PBEWITHMD5AND192BITAES-CBC-OPENSSL","PBEWITHMD5AND256BITAES-CBC-OPENSSL","PBEWITHMD5ANDDES","PBEWITHMD5ANDRC2","PBEWITHSHA1ANDDES","PBEWITHSHA1ANDRC2","PBEWITHSHA256AND128BITAES-CBC-BC","PBEWITHSHA256AND192BITAES-CBC-BC","PBEWITHSHA256AND256BITAES-CBC-BC","PBEWITHSHAAND128BITAES-CBC-BC","PBEWITHSHAAND128BITRC2-CBC","PBEWITHSHAAND128BITRC4","PBEWITHSHAAND192BITAES-CBC-BC","PBEWITHSHAAND2-KEYTRIPLEDES-CBC","PBEWITHSHAAND256BITAES-CBC-BC","PBEWITHSHAAND3-KEYTRIPLEDES-CBC","PBEWITHSHAAND40BITRC2-CBC","PBEWITHSHAAND40BITRC4","PBEWITHSHAANDIDEA-CBC","PBEWITHSHAANDTWOFISH-CBC","PBEWITHHMACSHA1ANDAES_128","PBEWITHHMACSHA1ANDAES_256","PBEWITHHMACSHA224ANDAES_128","PBEWITHHMACSHA224ANDAES_256","PBEWITHHMACSHA256ANDAES_128","PBEWITHHMACSHA256ANDAES_256","PBEWITHHMACSHA384ANDAES_128","PBEWITHHMACSHA384ANDAES_256","PBEWITHHMACSHA512ANDAES_128","PBEWITHHMACSHA512ANDAES_256","PBEWITHMD5ANDDES","PBEWITHMD5ANDTRIPLEDES","PBEWITHSHA1ANDDESEDE","PBEWITHSHA1ANDRC2_128","PBEWITHSHA1ANDRC2_40","PBEWITHSHA1ANDRC4_128","PBEWITHSHA1ANDRC4_40","RC2","RC5","RC6","RIJNDAEL","SALSA20","SEED","SHACAL-2","SKIPJACK","SM4","SERPENT","SHACAL2","TEA","THREEFISH-1024","THREEFISH-256","THREEFISH-512","TNEPRES","TWOFISH","VMPC","VMPC-KSA3","XTEA" };
					for (int i = 0; i < validList.length; i++) {
						String param = validList[i];
				%>
				<option value="<%=param%>"><%=param%></option>
				<%	} %>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label for="plaintext" class="col-sm-2 control-label"></label>
		<div class="col-sm-10">
			<textarea class="form-control" rows="3" name="plaintext" placeholder="Type Something here..." id="plaintext"></textarea>
		</div>
	</div>

	<div class="form-group">
		<label for="secretkey">SecretKey</label>
		<input type="text" class="form-control"  name="secretkey" id="secretkey" placeholder="2b7e151628aed2a6abf71589" value="2b7e151628aed2a6abf71589">
	</div>

	<div class="radio">
		<label>
			<input checked="checked" id="encrypt" type="radio" name="encryptorDecrypt" value="encrypt">Encrypt
		</label>
	</div>
	<div class="radio">
		<label>
			<input id="decrypt" type="radio" name="encryptorDecrypt" value="decrypt">Decrypt
		</label>
	</div>

	<input class="btn btn-primary"  type="button" id="genkeypair" name="submit" value="Submit">
	<div id="output"></div>

</form>

<hr>

<div class="sharethis-inline-share-buttons"></div>
<%@ include file="thanks.jsp"%>

<hr>

<%@ include file="cipher-functions-writeups.jsp"%>
<%@ include file="footer_adsense.jsp"%>

<%@ include file="addcomments.jsp"%>

</div>

<script type="text/javascript">

	<%

        String text = (String)request.getParameter("text");
        String pass = (String)request.getParameter("pass");
        String cipherparam = (String)request.getParameter("cipherparam");
        String mode = (String)request.getParameter("mode");


        if(null == cipherparam || cipherparam.trim().length()==0)
        {
            cipherparam="AES/CBC/PKCS5PADDING";
        }

        if (text!=null & pass!=null & mode!=null )
        {

			text = text.replace(" ","+");
			pass = pass.replace(" ","+");


			pass = new String(new BASE64Decoder().decodeBuffer(pass));


            if("decrypt".equalsIgnoreCase(mode.trim()))
            {



    %>

					document.getElementById("plaintext").value = '<%=text%>'
					document.getElementById("decrypt").checked = true;
					document.getElementById("secretkey").value = '<%=pass%>';

	         <%
					String[] validList2 = { "AES/CBC/PKCS5PADDING", "AES","AES/CBC/NOPADDING","AES/ECB/NOPADDING","AES/ECB/PKCS5PADDING","AES_128/CBC/NOPADDING","AES_128/CFB/NOPADDING","AES_128/ECB/NOPADDING","AES_128/GCM/NOPADDING","AES_128/OFB/NOPADDING","AES_192/CBC/NOPADDING","AES_192/CFB/NOPADDING","AES_192/ECB/NOPADDING","AES_192/GCM/NOPADDING","AES_192/OFB/NOPADDING","AES_256/CBC/NOPADDING","AES_256/CFB/NOPADDING","AES_256/ECB/NOPADDING","AES_256/GCM/NOPADDING","AES_256/OFB/NOPADDING","ARIA","BLOWFISH","CAMELLIA","CAST5","CAST6","CHACHA","DES","DES/CBC/NOPADDING","DES/CBC/PKCS5PADDING","DES/ECB/NOPADDING","DES/ECB/PKCS5PADDING","DESEDE","DESEDE/CBC/NOPADDING","DESEDE/CBC/PKCS5PADDING","DESEDE/ECB/NOPADDING","DESEDE/ECB/PKCS5PADDING","GCM","GOST28147","GRAIN128","GRAINV1","HC128","HC256","IDEA","NOEKEON","PBEWITHMD2ANDDES","PBEWITHMD5AND128BITAES-CBC-OPENSSL","PBEWITHMD5AND192BITAES-CBC-OPENSSL","PBEWITHMD5AND256BITAES-CBC-OPENSSL","PBEWITHMD5ANDDES","PBEWITHMD5ANDRC2","PBEWITHSHA1ANDDES","PBEWITHSHA1ANDRC2","PBEWITHSHA256AND128BITAES-CBC-BC","PBEWITHSHA256AND192BITAES-CBC-BC","PBEWITHSHA256AND256BITAES-CBC-BC","PBEWITHSHAAND128BITAES-CBC-BC","PBEWITHSHAAND128BITRC2-CBC","PBEWITHSHAAND128BITRC4","PBEWITHSHAAND192BITAES-CBC-BC","PBEWITHSHAAND2-KEYTRIPLEDES-CBC","PBEWITHSHAAND256BITAES-CBC-BC","PBEWITHSHAAND3-KEYTRIPLEDES-CBC","PBEWITHSHAAND40BITRC2-CBC","PBEWITHSHAAND40BITRC4","PBEWITHSHAANDIDEA-CBC","PBEWITHSHAANDTWOFISH-CBC","PBEWITHHMACSHA1ANDAES_128","PBEWITHHMACSHA1ANDAES_256","PBEWITHHMACSHA224ANDAES_128","PBEWITHHMACSHA224ANDAES_256","PBEWITHHMACSHA256ANDAES_128","PBEWITHHMACSHA256ANDAES_256","PBEWITHHMACSHA384ANDAES_128","PBEWITHHMACSHA384ANDAES_256","PBEWITHHMACSHA512ANDAES_128","PBEWITHHMACSHA512ANDAES_256","PBEWITHMD5ANDDES","PBEWITHMD5ANDTRIPLEDES","PBEWITHSHA1ANDDESEDE","PBEWITHSHA1ANDRC2_128","PBEWITHSHA1ANDRC2_40","PBEWITHSHA1ANDRC4_128","PBEWITHSHA1ANDRC4_40","RC2","RC5","RC6","RIJNDAEL","SALSA20","SEED","SHACAL-2","SKIPJACK","SM4","SERPENT","SHACAL2","TEA","THREEFISH-1024","THREEFISH-256","THREEFISH-512","TNEPRES","TWOFISH","VMPC","VMPC-KSA3","XTEA" };
					for (int i = 0; i < validList2.length; i++) {
						String param = validList2[i];
						if(cipherparam.equalsIgnoreCase(param))
						{

			%>
						document.getElementById("cipherparameternew").selectedIndex = <%=i%>

				<%
                       } // End IF
                       }  // End for
               %>


	<%--$("#plaintext").val('<%=text%>');--%>
	<%--$("#cipherparameternew").val('<%=cipherparam%>');--%>
	<%--$("#decrypt").val('decrypt');--%>
	<%--$("#secretkey").val('<%=pass%>');--%>


	//document.getElementById("form").submit();

	<%
            }

             if("encrypt".equalsIgnoreCase(mode.trim()))
            {

             %>


            	document.getElementById("plaintext").value = '<%=text%>'
				document.getElementById("encrypt").checked = true;
				document.getElementById("secretkey").value = '<%=pass%>';

	<%
       String[] validList2 = { "AES/CBC/PKCS5PADDING", "AES","AES/CBC/NOPADDING","AES/ECB/NOPADDING","AES/ECB/PKCS5PADDING","AES_128/CBC/NOPADDING","AES_128/CFB/NOPADDING","AES_128/ECB/NOPADDING","AES_128/GCM/NOPADDING","AES_128/OFB/NOPADDING","AES_192/CBC/NOPADDING","AES_192/CFB/NOPADDING","AES_192/ECB/NOPADDING","AES_192/GCM/NOPADDING","AES_192/OFB/NOPADDING","AES_256/CBC/NOPADDING","AES_256/CFB/NOPADDING","AES_256/ECB/NOPADDING","AES_256/GCM/NOPADDING","AES_256/OFB/NOPADDING","ARIA","BLOWFISH","CAMELLIA","CAST5","CAST6","CHACHA","DES","DES/CBC/NOPADDING","DES/CBC/PKCS5PADDING","DES/ECB/NOPADDING","DES/ECB/PKCS5PADDING","DESEDE","DESEDE/CBC/NOPADDING","DESEDE/CBC/PKCS5PADDING","DESEDE/ECB/NOPADDING","DESEDE/ECB/PKCS5PADDING","GCM","GOST28147","GRAIN128","GRAINV1","HC128","HC256","IDEA","NOEKEON","PBEWITHMD2ANDDES","PBEWITHMD5AND128BITAES-CBC-OPENSSL","PBEWITHMD5AND192BITAES-CBC-OPENSSL","PBEWITHMD5AND256BITAES-CBC-OPENSSL","PBEWITHMD5ANDDES","PBEWITHMD5ANDRC2","PBEWITHSHA1ANDDES","PBEWITHSHA1ANDRC2","PBEWITHSHA256AND128BITAES-CBC-BC","PBEWITHSHA256AND192BITAES-CBC-BC","PBEWITHSHA256AND256BITAES-CBC-BC","PBEWITHSHAAND128BITAES-CBC-BC","PBEWITHSHAAND128BITRC2-CBC","PBEWITHSHAAND128BITRC4","PBEWITHSHAAND192BITAES-CBC-BC","PBEWITHSHAAND2-KEYTRIPLEDES-CBC","PBEWITHSHAAND256BITAES-CBC-BC","PBEWITHSHAAND3-KEYTRIPLEDES-CBC","PBEWITHSHAAND40BITRC2-CBC","PBEWITHSHAAND40BITRC4","PBEWITHSHAANDIDEA-CBC","PBEWITHSHAANDTWOFISH-CBC","PBEWITHHMACSHA1ANDAES_128","PBEWITHHMACSHA1ANDAES_256","PBEWITHHMACSHA224ANDAES_128","PBEWITHHMACSHA224ANDAES_256","PBEWITHHMACSHA256ANDAES_128","PBEWITHHMACSHA256ANDAES_256","PBEWITHHMACSHA384ANDAES_128","PBEWITHHMACSHA384ANDAES_256","PBEWITHHMACSHA512ANDAES_128","PBEWITHHMACSHA512ANDAES_256","PBEWITHMD5ANDDES","PBEWITHMD5ANDTRIPLEDES","PBEWITHSHA1ANDDESEDE","PBEWITHSHA1ANDRC2_128","PBEWITHSHA1ANDRC2_40","PBEWITHSHA1ANDRC4_128","PBEWITHSHA1ANDRC4_40","RC2","RC5","RC6","RIJNDAEL","SALSA20","SEED","SHACAL-2","SKIPJACK","SM4","SERPENT","SHACAL2","TEA","THREEFISH-1024","THREEFISH-256","THREEFISH-512","TNEPRES","TWOFISH","VMPC","VMPC-KSA3","XTEA" };
       for (int i = 0; i < validList2.length; i++) {
           String param = validList2[i];
           if(cipherparam.equalsIgnoreCase(param))
           {

%>
	document.getElementById("cipherparameternew").selectedIndex = <%=i%>

	<%
           } // End IF
           }  // End for
   %>


	<%   }


   }


%>

</script>

<%@ include file="body-close.jsp"%>

