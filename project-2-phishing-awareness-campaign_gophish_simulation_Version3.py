"""
Simulate a GoPhish phishing campaign.
Requires: GoPhish server running, API key set.
"""

import requests

API_KEY = "REPLACE_WITH_YOUR_API_KEY"
API_URL = "http://localhost:3333/api/campaigns/"

payload = {
    "name": "HR Password Reset Simulation",
    "template": 1,  # Use template ID
    "groups": [1],  # Use group ID
    "launch_date": "2025-06-23T09:00:00Z"
}

headers = {
    "Authorization": f"Bearer {API_KEY}"
}

response = requests.post(API_URL, json=payload, headers=headers)
if response.status_code == 201:
    print("Campaign launched successfully.")
else:
    print(f"Error: {response.status_code} {response.text}")