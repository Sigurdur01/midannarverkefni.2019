<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Bennsínstöðvar</title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
	<link rel="stylesheet" type="text/css" href="/static/normalize.css">
	<link rel="stylesheet" type="text/css" href="/static/skeleton.css">

</head>
<body>
	<h3>Söluaðlar eldsneytis á íslandi</h3>
	{% for i in companies %}
		<div><a href="/company/{{i}}" class="button button-primary">{{i}}</a></div>
	{% endfor %}
	<h4>Besta Verðið</h4>
	<div>Bensín 95 er ódýrt á {{minpriceP}} hjá {{companyP}}</div>
	<div>Dísel er ódýrt á {{minpriceD}} hjá {{companyD}}</div>
</body>
</html>