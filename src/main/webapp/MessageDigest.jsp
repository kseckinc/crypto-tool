<!DOCTYPE html>
<html>
<head>
<title>Online Message Digest Algorithms checker and verifier</title>
<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>
<meta name="description" content="Calculate or verify  Message Digest Algorithms using hash algorithms ipemd128 ripemd160 ripemd256 ripemd320 sha sha-1 sha-224 sha-256 sha-384 sha-512 tiger whirlpool ">
<meta name="keywords"
	content="Message digest calculate online, ripemd128 ripemd160 ripemd256 ripemd320 sha sha-1 sha-224 sha-256 sha-384 sha-512 tiger whirlpool, digest algorithm online">
<%@ include file="include_css.jsp" %> 
<script type="text/javascript">
        $(document).ready(function() {
            $('#SHA').click(function (event)
            {
 			$('#form').delay(200).submit()
            });

            $('#inputtext').keyup(function (event)
                    {
         			$('#form').delay(200).submit()
                    });

            $('#MD2').click(function (event)
                    {
         			$('#form').delay(200).submit()
                    });
            $('#MD5').click(function (event)
                    {
         			$('#form').delay(200).submit()
                    });

            $('#SHA-1').click(function (event)
                    {
         			$('#form').delay(200).submit()
                    });

            $('#SHA-256').click(function (event)
                    {
         			$('#form').delay(200).submit()
                    });
            $('#SHA-384').click(function (event)
                    {
         			$('#form').delay(200).submit()
                    });

            $('#SHA-512').click(function (event)
                    {
         			$('#form').delay(200).submit()
                    });

            $('#TIGER').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#WHIRLPOOL').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#GOST3411').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#RIPEMD128').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#RIPEMD160').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#RIPEMD256').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#RIPEMD320').click(function (event)
            {
                $('#form').delay(200).submit()
            });

            $('#bc').click(function (event)
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
<body>
<div id="page">
<%@ include file="include.jsp" %> 
	<div id="loading" style="display: none;">
		<img src="images/712.GIF" alt="" />Loading!
	</div>
	<article id="contentWrapper" role="main">
			<section id="content">
	<form id="form" method="POST">
	<input type="hidden" name="methodName" id="methodName" value="CALCULATE_MD">
		<fieldset name="Message Digest Functionality">
			<legend>
				<B>Get Message Digest Information </B>
			</legend>
			Type Something<input id="inputtext" type="text" name="text"
				value="" size="100" >
				<br>
				<input type="checkbox" checked="checked" id="MD2" value="MD2" name="MD2">MD2
				<input type="checkbox" id="MD5" value="MD5" name="MD5">MD5
				<input type="checkbox" id="SHA" value="SHA" name="SHA">SHA
				<input type="checkbox" id="SHA-1" value="SHA-1" name="SHA-1">SHA-1
				<input type="checkbox" id="SHA-256" value="SHA-256" name="SHA-256">SHA-256
				<input type="checkbox" id="SHA-384" value="SHA-384" name="SHA-384">SHA-384
				<input type="checkbox" id="SHA-512" value="SHA-512" name="SHA-512">SHA-512
                <input type="checkbox" id="TIGER" value="TIGER" name="TIGER">TIGER
                <input type="checkbox" id="WHIRLPOOL" value="WHIRLPOOL" name="WHIRLPOOL">WHIRLPOOL
            <input type="checkbox" id="GOST3411" value="GOST3411" name="GOST3411">GOST3411
            <input type="checkbox" id="RIPEMD128" value="RIPEMD128" name="WHIRLPOOL">RIPEMD128
            <input type="checkbox" id="RIPEMD160" value="RIPEMD160" name="RIPEMD160">RIPEMD160
            <input type="checkbox" id="RIPEMD256" value="RIPEMD256" name="WHIRLPOOL">RIPEMD256
            <input type="checkbox" id="RIPEMD320" value="RIPEMD320" name="RIPEMD320">RIPEMD320
		</fieldset>
		<fieldset><legend>Choose Provider</legend>
		<input checked="checked" type="radio" id="bc" name="provider" value="BC">Bouncycastle
		<input type="radio" id="sun" name="provider" value="SUN">SUN(JDK)
		</fieldset>
		<div id="output"></div>
	</form>
                <br/>
                <br/>
                <%@ include file="footer.jsp"%>
                <br/>
                <br/>
                <p><strong>SHA-1</strong> - Secure Hash Algorithm produces 160 bit digest if message is less than 2^64 bits.</p>
                <ul>
                    <li>It is computationally infeasible to find message from message digest</li>
                    <li>It is computationally infeasible to find to different messages with same message digest</li>
                    <li>Padding bits are added to message to make it a multiple of 512</li>
                </ul>
                <p><strong>MD5</strong></p>
                <ul>
                    <li>Developed by Ronald Rivest in 1991</li>
                    <li>Produces 128 bit message digest</li>
                </ul>
                <p><strong>Hashed Message Authentication Code (HMAC)</strong></p>
                <ul>
                    <li>Uses key to generate a Message Authentication Code which is used as a checksum</li>
                </ul>
                <p>&nbsp;</p>
                <div class="page" title="Page 11">
                    <div class="layoutArea">
                        <div class="column">
                            <p>Strengths of the Security Properties of the Approved Hash Algorithms</p>
                        </div>
                    </div>
                    <table style="width: 10px; height: 10px; float: left;" border="1">
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
                </div>

                <p><strong>List of Hash function and the length</strong></p>
                <table style="width: 410px;" border="1">
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
	<%@ include file="include_security_links.jsp"%>	

		</section>
		</article>

</div>
</body>
</html>