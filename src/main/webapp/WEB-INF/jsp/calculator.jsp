<!DOCTYPE html>
<html>
<head>
	<title>Calculator</title>
	<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {

	text-align:center;
  padding-top: 12px;
  padding-bottom: 12px;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>

<body>
<h2 align="center">Calculator</h2>
<hr />
<table id="customers">
<tr>
<th>Sale Price</th>	
<td>sprice</td>
</tr>

<tr>
<th>Down Payment</th>	
<td>dprice</td>
</tr>

<tr>
<th>Actual Payment</th>	
<td>actualprice</td>
</tr>

<tr>
<th>Term</th>	
<td>term</td>
</tr>

<tr>
<th>Interest Rate</th>	
<td>irate</td>
</tr>

<tr>
<th>Interest</th>	
<td>interest</td>
</tr>

<tr>
<th>Actual Payment + Interest</th>	
<td>pricewithinterest</td>
</tr>	

<tr>
<th>EMI</th>	
<td>emi</td>
</tr>	
</table>
</body>
</html>