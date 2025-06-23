#!/bin/bash
# Track click-through rate from GoPhish results (requires jq)

API_KEY="REPLACE_WITH_YOUR_API_KEY"
CAMPAIGN_ID=1
API_URL="http://localhost:3333/api/campaigns/${CAMPAIGN_ID}"

curl -s -H "Authorization: Bearer $API_KEY" "$API_URL" | jq '.results | group_by(.status) | map({(.[0].status): length})'