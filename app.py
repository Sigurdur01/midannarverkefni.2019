from flask import *
import urllib.request, json, os
app = Flask(__name__)
app.config['SECRET_KEY'] = 'siggi'

with urllib.request.urlopen("http://apis.is/petrol") as url:
	data = json.loads(url.read().decode())

data = data["results"]

@app.route("/")
def index():
	minpriceP = 5000.0
	minpriceD = 5000.0
	le = len(data)
	c = 0
	companies = []

	#Talið hvert fyrirtæki fyrir dynamic url's
	for i in data:
		if i["company"] not in companies:
			i["company"] = i["company"].replace(" ","")
			companies.append(i["company"])

	#Talið ódýrustu bensín stöð
	for i in range(le - 1):
		c=i
		if minpriceP > data[i]["bensin95"]:
			minpriceP = data[i]["bensin95"]
			companyP = data[i]["company"]
		    
		if minpriceD > data[i]["diesel"]:
			minpriceD = data[i]["diesel"]
			companyD = data[i]["company"]
	return render_template("index.tpl",minpriceD=minpriceD,minpriceP=minpriceP,companyP=companyP,companyD=companyD,companies=companies)

@app.route("/company/<company>")
def company(company):
	cnt = 0
	for i in data:
		if i["company"] == company: 
			cnt += 1
	return render_template("company.tpl",data=data,c=company,cnt=cnt)

@app.route("/moreinfo/<key>")
def moreinfo(key):
	return render_template("moreinfo.tpl",data=data,k=key)

@app.errorhandler(404)
def villa(error):
	return"<h2 style='color:red'>This site cant be found aka 404</h2>"

if __name__ == "__main__":
	app.run(debug=True)