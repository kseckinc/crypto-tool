<!DOCTYPE html>
<html>
<head>
    <title>Online HMAC Generator Hash based Message Authentication</title>
    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>
    <meta name="description" content="free online tool compute a HMAC using your desired algorithm PBEWithHmacSHA1,PBEWithHmacSHA384,PBEWithHmacSHA256,PBEWithHmacSHA512,HmacSHA1,HmacSHA384,HmacSHA224,HmacSHA256,HmacMD5,HmacPBESHA1,HMACRIPEMD128,IDEAMAC,RC2MAC,HMACRIPEMD160,DES,DESEDEMAC,SKIPJACKMAC,HMACTIGER,tiger "/>
    <meta name="keywords"
          content="online hmac generate, hmac online, hmac PBEWithHmacSHA1,PBEWithHmacSHA384,PBEWithHmacSHA256,PBEWithHmacSHA512,HmacSHA1,HmacSHA384,HmacSHA224,HmacSHA256,HmacMD5,HmacPBESHA1,HMACRIPEMD128,IDEAMAC,RC2MAC,HMACRIPEMD160,DES,DESEDEMAC,SKIPJACKMAC,HMACTIGER,tiger, ripemd128 ripemd160 ripemd256 ripemd320 sha sha-1 sha-224 sha-256 sha-384 sha-512 tiger whirlpool, digest algorithm online">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ include file="header-script.jsp"%>


    <!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->
    <script type="application/ld+json">
{
  "@context" : "http://schema.org",
  "@type" : "SoftwareApplication",
  "name" : "Online hmac generate using algorithms TIGER  SHA-1  SHA-224  SHA-256  RC2  IDEA  PBEWithHmacSHA1  PBE-SHA384  PBE-SHA256  PBE-SHA512  RIPEMD128  RIPEMD160  SKIPJACK  ",
  "image" : "https://8gwifi.org/images/site/hmac.png",
  "url" : "https://8gwifi.org/hmacgen.jsp",
  "author" : {
    "@type" : "Person",
    "name" : "Anish Nath"
  },
  "datePublished" : "2017-09-25",
  "applicationCategory" : [ "online hmac generate" , "generate hmac online", "hmac generate" , "sha hmac" , " hmac tutorial" , "hmac openssl" , "hmac verify sign example", "hmac TIGER  SHA-1  SHA-224  SHA-256  RC2  IDEA  PBEWithHmacSHA1  PBE-SHA384  PBE-SHA256  PBE-SHA512  RIPEMD128  RIPEMD160  SKIPJACK" ],
  "downloadUrl" : "https://8gwifi.org/hmacgen.jsp",
  "operatingSystem" : "Linux,Unix,Windows,Redhat,RHEL,Fedora,Ubuntu",
  "requirements" : "hmac generate using TIGER  SHA-1  SHA-224  SHA-256  RC2  IDEA  PBEWithHmacSHA1  PBE-SHA384  PBE-SHA256  PBE-SHA512  RIPEMD128  RIPEMD160  SKIPJACK",
  "softwareVersion" : "v1.0"
}
</script>


    <script type="text/javascript">
        $(document).ready(function() {
            $('#PBEWithHmacSHA1').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#inputtext').keyup(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#passphrase').keyup(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#PBEWithHmacSHA384').click(function (event)
            {
                $('#form').delay(200).submit()
            });
            $('#PBEWithHmacSHA256').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#PBEWithHmacSHA512').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#HmacSHA1').click(function (event)
            {
                $('#form').delay(200).submit()
            });
            $('#HmacSHA384').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#HmacSHA224').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#HmacSHA256').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#HmacSHA512').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#HmacMD5').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#HmacPBESHA1').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#HMACRIPEMD128').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#RC2MAC').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#RC5MAC').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#IDEAMAC').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#HMACRIPEMD160').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#SKIPJACKMAC').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#HMACTIGER').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#DES').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#DESEDEMAC').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#HMACMD5').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#HMACMD4').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#HMACMD2').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#IDEAMACCFB8').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#SKIPJACKMACCFB8').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#form').submit(function (event)
            {
                //
                $('#output').html('<img src="images/712.GIF"> loading...');
                event.preventDefault();
                $.ajax({
                    type: "POST",
                    url: "MDFunctionality", //this is my servlet

                    data: $("#form").serialize(),
                    success: function(msg){
                        $('#output').empty();
                        $('#output').append(msg);

                    }
                });
            });
        });

    </script>
</head>
<%@ include file="body-script.jsp"%>

<h1 class="mt-4">Generate HMAC</h1>
<hr>


<div id="loading" style="display: none;">
    <img src="images/712.GIF" alt="" />Loading!
</div>



<form id="form" method="POST">
    <input type="hidden" name="methodName" id="methodName" value="GENERATE_HMAC">

    <div class="form-group row">
        <label for="inputtext">Msg</label>
        <div class="col-sm-11">
            <textarea class="form-control" id="inputtext" name="text" placeholder="Input Message" rows="3"></textarea>
        </div>
    </div>
    <div class="form-group row">
        <label for="passphrase">Key</label>
        <div class="col-sm-11">
            <input class="form-control"  id="passphrase" type="password" name="passphrase" value="" placeholder="Type secret key Here..." size="100" >
        </div>
    </div>

    <p>Choose Algo</p>

    <div class="form-check form-check-inline">
        <input type="checkbox" checked="checked"  id="HmacSHA1" value="HmacSHA1" name="HmacSHA1">SHA-1
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="HmacSHA224" value="HmacSHA224" name="HmacSHA224">SHA-224
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="HmacSHA256" value="HmacSHA256" name="HmacSHA256">SHA-256
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="HmacSHA512" value="HmacSHA512" name="HmacSHA512">SHA-512
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="HMACTIGER" value="HMACTIGER" name="HMACTIGER">TIGER
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="RC2MAC" value="RC2MAC" name="RC2MAC">RC2
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="RC5MAC" value="RC5MAC" name="RC2MAC">RC5
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="IDEAMAC" value="IDEAMAC" name="IDEAMAC">IDEA
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="IDEAMACCFB8" value="IDEAMACCFB8" name="IDEAMACCFB8">IDEA/CFB8
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="PBEWithHmacSHA1" value="PBEWithHmacSHA1" name="MD2">PBEWithHmacSHA1
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="PBEWithHmacSHA384" value="PBEWithHmacSHA384" name="PBEWithHmacSHA384">PBE-SHA384
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="PBEWithHmacSHA256" value="PBEWithHmacSHA256" name="PBEWithHmacSHA256">PBE-SHA256
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="PBEWithHmacSHA512" value="PBEWithHmacSHA512" name="PBEWithHmacSHA512">PBE-SHA512
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="HMACRIPEMD128" value="HMACRIPEMD128" name="HMACRIPEMD128">RIPEMD128
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="HMACRIPEMD160" value="HMACRIPEMD160" name="HMACRIPEMD160">RIPEMD160
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="SKIPJACKMAC" value="SKIPJACKMAC" name="SKIPJACKMAC">SKIPJACK
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="SKIPJACKMACCFB8" value="SKIPJACKMACCFB8" name="SKIPJACKMACCFB8">SKIPJACK/CFB8
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="DES" value="DES" name="DES">DES
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="DESEDEMAC" value="DESEDEMAC" name="DESEDEMAC">DESEDEMAC
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="HMACMD5" value="HMACMD5" name="HMACMD5">HMACMD5
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="HMACMD4" value="HMACMD4" name="HMACMD4">HMACMD4
    </div>
    <div class="form-check form-check-inline">
        <input type="checkbox" id="HMACMD2" value="HMACMD2" name="HMACMD2">HMACMD2
    </div>
    </fieldset>

</form>

<hr>
<%@ include file="footer_adsense.jsp"%>

<div id="output"></div>

<hr>



<div class="sharethis-inline-share-buttons"></div>
<%@ include file="thanks.jsp"%>


<%@ include file="addcomments.jsp"%>

</div>

<%@ include file="body-close.jsp"%>
