import requests;
import json



resultat=requests.get("http://localhost/ws/index.php?action=view&token=ab4f63f9ac65152575886860dde480a1&id=29")
print(resultat.json())