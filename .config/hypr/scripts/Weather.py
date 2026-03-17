import requests

cityid = 1185241
url = "http://api.openweathermap.org/data/2.5/weather"
data = {"id": cityid, "units": "metric", "appid": "806908ac2dfc8d0d692b05ad6ad9e4a3"}
try:
    res = requests.get(url, params=data).json()
    temp = int(res["main"]["feels_like"])
    humidity = res["main"]["humidity"]
    print(f"{temp}° | H:{humidity}%")
except requests.exceptions.ConnectionError as err:
    print("It's so cold ")
