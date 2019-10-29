<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Bennsínstöðvar</title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
	<link rel="stylesheet" type="text/css" href="/static/skeleton.css">

</head>
<body>
	<h3>Söluaðlar eldsneytis á íslandi</h3>
	{% for i,x in links %}
		<div><img src="/static/{{x}}"><a href="/company/{{i}}" class="button button-primary">{{i}}</a></div>
	{% endfor %}
	<h4>Besta Verðið</h4>
	<table>
		<tr>
			<th>Fyrirtæki</th>
			<th>Bensín</th>
		</tr>
		<td>{{companyP}}</td>
		<td>{{minpriceP}}</td>
	</table>
	<table>
		<tr>
			<th>Fyrirtæki</th>
			<th>Dísel</th>
		</tr>
		<td>{{companyD}}</td>
		<td>{{minpriceD}}</td>
	</table>
</body>
</html>