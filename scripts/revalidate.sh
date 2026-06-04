#!/usr/bin/env bash
# Revalidate Vercel/Next.js cache via the /api/revalidate endpoint.
#
# Required env vars:
#   SITE_URL          - e.g. https://lucciresearch.xyz
#   REVALIDATE_SECRET - matches the deployed REVALIDATE_SECRET env var
#
# Optional args:
#   $@ - cache tags to revalidate (default: all)
#
# Usage:
#   ./scripts/revalidate.sh                    # revalidate all
#   ./scripts/revalidate.sh registry reports   # specific tags

set -euo pipefail

: "${SITE_URL:?SITE_URL is required}"
: "${REVALIDATE_SECRET:?REVALIDATE_SECRET is required}"

TAGS=("$@")

if [ ${#TAGS[@]} -gt 0 ]; then
  BODY=$(printf '%s\n' "${TAGS[@]}" | jq -R . | jq -s '{tags: .}')
else
  BODY='{}'
fi

echo "→ Revalidating cache at $SITE_URL/api/revalidate"

RESPONSE=$(curl -sL -w "\n%{http_code}" -X POST "$SITE_URL/api/revalidate" \
  -H "Content-Type: application/json" \
  -H "x-revalidate-secret: $REVALIDATE_SECRET" \
  -d "$BODY")

HTTP_CODE=$(echo "$RESPONSE" | tail -1)
BODY_RESPONSE=$(echo "$RESPONSE" | sed '$d')

if [ "$HTTP_CODE" -ge 200 ] && [ "$HTTP_CODE" -lt 300 ]; then
  echo "$BODY_RESPONSE" | jq .
  echo "✓ Cache revalidated"
else
  echo "✗ Failed with HTTP $HTTP_CODE"
  echo "$BODY_RESPONSE"
  exit 1
fi
