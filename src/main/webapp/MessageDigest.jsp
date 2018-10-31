<!DOCTYPE html>
<html>
<head>

    <!-- JSON-LD markup generated by Google Structured Data Markup Helper. -->
    <script type="application/ld+json">
{
  "@context" : "http://schema.org",
  "@type" : "SoftwareApplication",
  "name" : "Online Message Digest Algorithms generator and verifier ",
  "image" : "https://8gwifi.org/images/site/hash.png",
  "url" : "https://8gwifi.org/MessageDigest.jsp",
  "author" : {
    "@type" : "Person",
    "name" : "Anish Nath"
  },
  "datePublished" : "2017-09-25",
  "applicationCategory" : [ "hashing online", "generate message digest online","ripemd128", "ripemd160", "ripemd256", "ripemd320", "SHA", "SHA-1", "SHA-224", "SHA-256", "SHA-512", "TIGER", "whirlpool", "MD2","MD5", "BLAKE2b"],
  "downloadUrl" : "https://8gwifi.org/CipherFunctions.jsp",
  "operatingSystem" : "Linux,Unix,Windows,Redhat,RHEL,Fedora,Ubuntu",
  "requirements" : "Calculate or verify  Message Digest Algorithms using hash algorithms ipemd128 ripemd160 ripemd256 ripemd320 sha sha-1 sha-224 sha-256 sha-384 sha-512 tiger whirlpool ",
  "softwareVersion" : "v1.0"
}
</script>

    <title>Online Message Digest Algorithms checker and verifier</title>
    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>
    <meta name="description" content="Calculate or verify Message Digest Algorithms using hash algorithms,md2,md4,ripemd128,sha,,sha-224,sha-256,sha-384,sha-512,sha-512/224,sha-512/256,sha3-224,sha3-256,sha3-384,sha3-512,ripemd160,ripemd256,ripemd320,sm3,skein-1024-1024,skein-1024-384,skein-1024-512,skein-256-128,skein-256-160,skein-256-224,skein-256-256,skein-512-128,skein-512-512,tiger,tiger,whirlpool,blake2b-160,blake2b-256,blake2b-384,blake2b-512,dstu7564-256,dstu7564-384,dstu7564-512,gost3411,gost3411-2012-256,gost3411-2012-512,keccak-224,keccak-256,keccak-288,keccak-384,keccak-512 ">
    <meta name="keywords"
          content="Message digest calculate online, ripemd128 ripemd160 ripemd256 ripemd320 sha sha-1 sha-224 sha-256 sha-384 sha-512 tiger whirlpool, digest algorithm online,  md2,md4,ripemd128,sha,sha-1,sha-224,sha-256,sha-384,sha-512,sha-512/224,sha-512/256,sha3-224,sha3-256,sha3-384,sha3-512,ripemd160,ripemd256,ripemd320,sm3,skein-1024-1024,skein-1024-384,skein-1024-512,skein-256-128,skein-256-160,skein-256-224,skein-256-256,skein-512-128,skein-512-160,skein-512-224,skein-512-256,skein-512-384,skein-512-512,tiger,tiger,whirlpool,blake2b-160,blake2b-256,blake2b-384,blake2b-512,dstu7564-256,dstu7564-384,dstu7564-512,gost3411,gost3411-2012-256,gost3411-2012-512,keccak-224,keccak-256,keccak-288,keccak-384,keccak-512">

    <%@ include file="header-script.jsp"%>

    <%
        String[] validList = { "md2","md4","ripemd128","sha","sha-1","sha-224","sha-256","sha-384","sha-512","sha-512/224","sha-512/256","sha3-224","sha3-256","sha3-384","sha3-512","ripemd160","ripemd256","ripemd320","sm3","skein-1024-1024","skein-1024-384","skein-1024-512","skein-256-128","skein-256-160","skein-256-224","skein-256-256","skein-512-128","skein-512-160","skein-512-224","skein-512-256","skein-512-384","skein-512-512","tiger","tiger","whirlpool","blake2b-160","blake2b-256","blake2b-384","blake2b-512","dstu7564-256","dstu7564-384","dstu7564-512","gost3411","gost3411-2012-256","gost3411-2012-512","keccak-224","keccak-256","keccak-288","keccak-384","keccak-512",
                "1.2.804.2.1.1.1.1.2.2.1","1.2.804.2.1.1.1.1.2.2.2","1.2.804.2.1.1.1.1.2.2.3","2.16.840.1.101.3.4.2.10","2.16.840.1.101.3.4.2.7","2.16.840.1.101.3.4.2.8","2.16.840.1.101.3.4.2.9","oid.1.2.804.2.1.1.1.1.2.2.1","oid.1.2.804.2.1.1.1.1.2.2.2","oid.1.2.804.2.1.1.1.1.2.2.3","oid.2.16.840.1.101.3.4.2.10","oid.2.16.840.1.101.3.4.2.7","oid.2.16.840.1.101.3.4.2.8","oid.2.16.840.1.101.3.4.2.9"};
    %>



    <script type="text/javascript">
        $(document).ready(function() {

            $('#cipherparameternew').change(function(event) {
                //
                // event.preventDefault();
                $('#form').delay(200).submit()
            });

            $('#inputtext').keyup(function (event)
            {
                $('#form').delay(200).submit()
            });


            $('#sun').click(function (event)
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

<h1 class="mt-4">Generate Message Digest</h1>
<hr>


<div id="loading" style="display: none;">
    <img src="images/712.GIF" alt="" />Loading!
</div>


            <form id="form" method="POST">
                <input type="hidden" name="methodName" id="methodName" value="CALCULATE_MD">
                <fieldset name="Message Digest Functionality">
                    <legend>
                        <B>Get Message Digest Information </B>
                    </legend>
                    <b>Input Message</b><input class="form-control" id="inputtext" placeholder="Type your message here to generate Message Digest" type="text" name="text"
                                               value="" size="100" >
                    <br>

                    <b>Choose Message Digest </b>

                    <select  size="10" multiple name="cipherparameternew" id="cipherparameternew">
                        <option selected value="MD5">MD5</option>
                        <%
                            for (int i = 0; i < validList.length; i++) {
                                String param = validList[i];
                        %>
                        <option value="<%=param%>"><%=param%></option>
                        <%}%>
                    </select>
                <div id="output"></div>
            </form>

<hr>
<div class="sharethis-inline-share-buttons"></div>
<%@ include file="thanks.jsp"%>


<hr>
            <p>Hashing is not encryption. There is no secret, no key in hashing</p>
            <p>Hashing is a function from some bit string (usually variable length) to another bit string (usually smaller, and of fixed length</p>
            <hr>

            <p>Strengths of the Security Properties of the Approved Hash Algorithms</p>

                <table class="table">
                    <tbody>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>SHA-1</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>SHA- 224</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>SHA- 256</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>SHA- 384</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>SHA- 512</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>SHA- 512/224</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>SHA- 512/256</p>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>Collision Resistance Strength in bits</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>&lt; 80</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>112</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>128</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>192</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>256</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>112</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>128</p>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>Preimage Resistance Strength in bits</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>160</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>224</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>256</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>384</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>512</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>224</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>256</p>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>Second Preimage Resistance Strength in bits</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>105- 160</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>201- 224</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>201- 256</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>384</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>394- 512</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>224</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="layoutArea">
                                <div class="column">
                                    <p>256</p>
                                </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>

            <hr>

            <p><strong>List of Hash function and the length</strong></p>
            <table class="table">
                <tbody>
                <tr>
                    <td style="width: 253px;"><strong>Name</strong></td>
                    <td style="width: 143px;"><strong>Length</strong></td>
                </tr>
                <tr>
                    <td style="width: 253px;">MD2</td>
                    <td style="width: 143px;">128 bits</td>
                </tr>
                <tr>
                    <td style="width: 253px;">MD4</td>
                    <td style="width: 143px;">128 bits</td>
                </tr>
                <tr>
                    <td style="width: 253px;">MD5</td>
                    <td style="width: 143px;">128 bits</td>
                </tr>
                <tr>
                    <td style="width: 253px;">MD6</td>
                    <td style="width: 143px;">Up to 512 bits</td>
                </tr>
                <tr>
                    <td style="width: 253px;">SHA-1</td>
                    <td style="width: 143px;">160 bits</td>
                </tr>
                <tr>
                    <td style="width: 253px;">SHA-224</td>
                    <td style="width: 143px;">224 bits</td>
                </tr>
                <tr>
                    <td style="width: 253px;">SHA-256</td>
                    <td style="width: 143px;">256 bits</td>
                </tr>
                <tr>
                    <td style="width: 253px;">SHA-384</td>
                    <td style="width: 143px;">384 bits</td>
                </tr>
                <tr>
                    <td style="width: 253px;">SHA-512</td>
                    <td style="width: 143px;">512 bits</td>
                </tr>
                <tr>
                    <td style="width: 253px;">SHA-3&nbsp;(originally known as Keccak)</td>
                    <td style="width: 143px;">arbitrary</td>
                </tr>
                </tbody>
            </table>

<%@ include file="addcomments.jsp"%>

</div>

<%@ include file="body-close.jsp"%>
