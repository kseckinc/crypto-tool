<!DOCTYPE html>
<html>
<head>

<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'>
<title>Online Subnet Calculator</title>
<meta name="description" content="Online Subnet calculator " />
<meta name="keywords" content="Online IP Subnet Calculator, IP Subnet Calculator, Subnet Calculator, subnet mask, free, IP, Subnet, Calculator, supernet, cidr, subnetting, supernetting, network" />

<meta name="robots" content="index,follow" />
<meta name="googlebot" content="index,follow" />
<meta name="resource-type" content="document" />
<meta name="classification" content="tools" />
<meta name="language" content="en" />

<%@ include file="include_css.jsp"%>
<script type="text/javascript">
	$(document).ready(function() {


		$('#ctrTitles').change(function() {
			   pem = $(this).val();
			   $("#pem").val(pem);    
			});
		

		$('#submit').click(function(event) {
			$('#form').delay(200).submit()
		});

		$('#form').submit(function(event) {
			//	
			$('#output1').html('<img src="images/712.GIF"> loading...');
			event.preventDefault();
			$.ajax({
				type : "POST",
				url : "SubnetFunctionality", //this is my servlet

				data : $("#form").serialize(),
				success : function(msg) {
					$('#output').empty();
					$('#output1').empty();
					$('#output').append(msg);

				}
			});
		});
	});
</script>
</head>
<body>

	<div id="page">
	<%@ include file="include.jsp"%>
<div id="loading" style="display: none;">
		<img src="images/712.GIF" alt="" />Loading!
	</div>
	
<article id="contentWrapper" role="main">
			<section id="content">
	<form id="form" method="POST">
		<input type="hidden" name="methodName" id="methodName"
			value="SUBNETCOMMAND">
			<fieldset name="Group1">
                <legend>Subnet Calculator</legend>
                
<table>
<tr>
<td colspan="5">
	<pre class="newpage">The number of available network and host addresses are derived from the number of bits used for subnet masking<br /><br /><strong>A broadcast address</strong> is a logical address at which all devices connected to a multiple-access communications network are enabled to receive datagrams. <br />A message sent to a broadcast address is typically received by all network-attached hosts, rather than by a specific host<br /><br /><strong>CIDR notation</strong> is a compact representation of an IP address and its associated routing prefix.<br /><br />
		</pre>

</td>
</tr>
<tr>

<th align="RIGHT" nowrap> &nbsp;Give Subnet (CIDR) </th>
<td><input type="text" name="subnet" placeholder="192.168.1.23/34"  size="70" maxlength="64" />Example : 192.168.2.10/28</td>
<tr>
<tr>
<th align="RIGHT" nowrap>&nbsp;Return Number of IP Address  : </th>
<td>
	<input  type="radio" id="encoding" name="encoding" value="Y">Include All IP Address
	<input checked="checked" type="radio" id="encoding1" name="encoding" value="N">Exclude All IP Address
</td>

</tr>
<tr>
<td>
</td>
</tr>
<tr>


</tr>

<tr>
<td align="right">
<input type="submit" id="submit" name="Get Subnet Information">
<div id="output1"></div>
</td>
</tr>
<tr>
<td>Output
			</td>
			<td>
			
			<textarea rows="20" cols="80" id="output"></textarea>
			</td>
			</tr>
			
</table>
            </fieldset>
	</form>

				<%@ include file="footer.jsp"%>

				<p>For example A /24 network may be divided into the following subnets by increasing the subnet mask successively by one bit. This affects the total number of hosts that can be addressed in the /24 network</p>
				<table class="8gwifi" border="1">
					<tbody>
					<tr>
						<th>Prefix size</th>
						<th>Subnet mask</th>
						<th>Available<br />subnets</th>
						<th>Usable hosts<br />per subnet</th>
						<th>Total<br />usable hosts</th>
					</tr>
					<tr>
						<td>/24</td>
						<td><code>255.255.255.0</code></td>
						<td>1</td>
						<td>254</td>
						<td>254</td>
					</tr>
					<tr>
						<td>/25</td>
						<td><code>255.255.255.128</code></td>
						<td>2</td>
						<td>126</td>
						<td>252</td>
					</tr>
					<tr>
						<td>/26</td>
						<td><code>255.255.255.192</code></td>
						<td>4</td>
						<td>62</td>
						<td>248</td>
					</tr>
					<tr>
						<td>/27</td>
						<td><code>255.255.255.224</code></td>
						<td>8</td>
						<td>30</td>
						<td>240</td>
					</tr>
					<tr>
						<td>/28</td>
						<td><code>255.255.255.240</code></td>
						<td>16</td>
						<td>14</td>
						<td>224</td>
					</tr>
					<tr>
						<td>/29</td>
						<td><code>255.255.255.248</code></td>
						<td>32</td>
						<td>6</td>
						<td>192</td>
					</tr>
					<tr>
						<td>/30</td>
						<td><code>255.255.255.252</code></td>
						<td>64</td>
						<td>2</td>
						<td>128</td>
					</tr>
					<tr>
						<td>/31</td>
						<td><code>255.255.255.254</code></td>
						<td>128</td>
						<td>2&nbsp;<sup>*</sup></td>
					</tr>
					</tbody>
				</table>
				<p>&nbsp;</p>

<%@ include file="include_security_links.jsp"%>

</section>
		</article>
		
	</div>
</body>
</html>