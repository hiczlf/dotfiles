#!/usr/bin/env bash
set -euo pipefail

TOKEN="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImxmQHFxLmNvbSIsInN1YiI6NTExOTUsInJvbGUiOiJhZG1pbiIsImlhdCI6MTc3OTk1OTgxNSwiZXhwIjoxODA1ODc5ODE1fQ.FPAmIAz6UM83XGNQd7R584Zl4g1LMMYFBH1g9M_lXd8"
CARD_CATEGORY_ID="${1:-}"
COUNT="${2:-}"

if [[ -z "$TOKEN" ]]; then
  echo "XLDD_ADMIN_TOKEN is required" >&2
  exit 1
fi

if [[ -z "$CARD_CATEGORY_ID" || -z "$COUNT" ]]; then
  echo "Usage:"
  echo "  xldd-batch-cards.sh <cardCategoryId> <count>"
  echo "    freepin_1m: 39, freepik_3m: 40, freepik_1w: 45, freepik_1m_100: 46"
  echo "    vecteezy_1m: 53, motionarray_1m: 54"
  echo
  echo "Example:"
  echo "  xldd-batch-cards.sh 53 5"
  exit 1
fi

response=$(curl -s 'https://aadmin.ixling.com/api/admin/card/batch-create' \
  -H "authorization: Bearer ${TOKEN}" \
  -H 'content-type: application/json' \
  --data-raw "{
    \"cardCategoryId\": ${CARD_CATEGORY_ID},
    \"shopId\": 1,
    \"count\": ${COUNT},
    \"distribution\": \"taobao\"
  }")

first_name=$(echo "$response" | jq -r '.data.list[0].name')

echo -e "$first_name:\n"

cards_string=$(echo "$response" | jq -r '.data.cardsString')

echo -e "$cards_string"
