<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>{{c}}</title>
	<link rel="stylesheet" type="text/css" href="/static/skeleton.css">

</head>
<body>
	<h1>Bensínstöðvar</h1>
	<table>
		<tr>
			<th>Fyrirtæki</th>
			<th>Staður</th>
		</tr>
		{% for i in data %}
			{% if i["company"] == c %}
			<tr>
				<td><a href="/moreinfo/{{i['key']}}">{{i["company"]}}</a></td>
		 		<td>{{i["name"]}}</td>
			</tr>
			{% endif %}
		{% endfor %}
	</table>
	<h3>Fjöldi stöðva: {{cnt}}</h3>
	<footer>
		<a href="/"class="button button-primary">Heim</a>
	</footer>
</body>
</html>