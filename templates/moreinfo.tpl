<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Verð</title>
	<link rel="stylesheet" type="text/css" href="/static/skeleton.css">
</head>
<body>
	<h1>Nánari upplýsingar</h1>
	<table>
		<tr>
			<th>Sölustaður</th>
			<th>Staður</th>
			<th>Bensín 95</th>
			<th>Dísel</th>
		</tr>
		{% for i in data: %}
			{% if i["key"] == k: %}
	    		<td>{{i['company']}}</td>
	    		<td>{{i['name']}}</td>
	    		<td>{{i['bensin95']}}</td>
	    		<td>{{i['diesel']}}</td>
	    	{% endif %}
		{% endfor %}
	</table>
	<footer>
		<a href="/" class="button button-primary">Heim</a>
	</footer>

</body>
</html>