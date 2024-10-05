import requests

res = requests.get("https://wttr.in/Feni?format=1").text
print(res)

