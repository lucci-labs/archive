#!/usr/bin/env bash
# Broadcast a new blog post to email subscribers via Resend.
#
# Required env vars:
#   RESEND_API_KEY    - Resend API key
#   RESEND_SEGMENT_ID - Audience segment ID
#
# Optional env vars:
#   FROM_EMAIL - Sender address (default: Lucci Research <newsletters@lucciresearch.xyz>)
#
# Usage:
#   ./scripts/broadcast.sh <slug>

set -euo pipefail

: "${RESEND_API_KEY:?RESEND_API_KEY is required}"
: "${RESEND_SEGMENT_ID:?RESEND_SEGMENT_ID is required}"

SLUG="${1:?Usage: broadcast.sh <slug>}"
FROM_EMAIL="${FROM_EMAIL:-Lucci Research <newsletters@lucciresearch.xyz>}"
REGISTRY="registry.json"

# Extract metadata
METADATA=$(jq -r --arg slug "$SLUG" '.[] | select(.slug == $slug)' "$REGISTRY")

if [ -z "$METADATA" ] || [ "$METADATA" = "null" ]; then
  echo "✗ Slug '$SLUG' not found in registry.json"
  exit 1
fi

TITLE=$(echo "$METADATA" | jq -r '.title')
DESCRIPTION=$(echo "$METADATA" | jq -r '.description')
CATEGORIES=$(echo "$METADATA" | jq -r '.categories | join(", ")')
POST_URL="https://lucciresearch.xyz/archive/$SLUG"

echo "→ Broadcasting: $TITLE"

# Build HTML email
EMAIL_HTML=$(cat <<EOF
<!DOCTYPE html>
<html>
<head>
<style>
body { font-family: 'Inter', -apple-system, sans-serif; background-color: #0b0b0b; color: #d1d1d1; margin: 0; padding: 20px 0; }
.container { max-width: 600px; margin: 0 auto; background-color: #0b0b0b; }
.header { background-color: #00ffa3; color: #0b0b0b; padding: 24px; text-align: center; }
.header h1 { font-size: 24px; font-weight: 700; margin: 0; text-transform: uppercase; letter-spacing: 0.05em; }
.header p { margin: 8px 0 0 0; font-size: 12px; letter-spacing: 0.1em; }
.content { padding: 40px 32px; }
.label { font-size: 12px; color: #888888; text-transform: uppercase; letter-spacing: 0.1em; margin-bottom: 8px; }
.badge { display: inline-block; background-color: #1e1e1e; color: #00ffa3; padding: 6px 12px; margin: 4px; font-size: 11px; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; border: 1px solid #00ffa3; }
h2 { font-size: 28px; font-weight: 700; color: #ffffff; margin: 24px 0 16px 0; line-height: 1.3; }
.description { line-height: 1.7; margin-bottom: 16px; font-size: 15px; color: #d1d1d1; }
.cta { display: inline-block; background-color: #00ffa3; color: #0b0b0b; padding: 16px 32px; font-size: 14px; font-weight: 700; text-decoration: none; text-transform: uppercase; letter-spacing: 0.1em; margin: 24px 0; border: 2px solid #00ffa3; }
.divider { border: none; border-top: 1px solid #1e1e1e; margin: 32px 0; }
.footer { background-color: #121212; padding: 24px; text-align: center; border-top: 2px solid #1e1e1e; }
.footer-text { font-size: 12px; color: #888888; margin: 8px 0; }
.footer a { color: #00ffa3; text-decoration: none; }
</style>
</head>
<body>
<div class="container">
<div class="header"><h1>LUCCI RESEARCH</h1><p>ALGORITHMIC ADVANTAGE</p></div>
<div class="content">
<p class="label">BÀI VIẾT MỚI</p>
<div style="margin:20px 0"><span class="badge">${CATEGORIES}</span></div>
<h2>${TITLE}</h2>
<p class="description">${DESCRIPTION}</p>
<div style="text-align:center;margin-top:32px"><a href="${POST_URL}" class="cta">ĐỌC NGAY →</a></div>
<hr class="divider">
<p style="font-size:13px;color:#888888;text-align:center">Bạn nhận được email này vì đã đăng ký nhận thông báo từ Lucci Research.</p>
</div>
<div class="footer">
<p class="footer-text">© $(date +%Y) Lucci Research. All rights reserved.</p>
<p class="footer-text"><a href="https://t.me/lucciresearch">Telegram</a> | <a href="https://x.com/lucciresearch">Twitter</a></p>
<p class="footer-text" style="margin-top:16px"><a href="{{{RESEND_UNSUBSCRIBE_URL}}}" style="color:#888888;font-size:11px">Hủy đăng ký</a></p>
</div>
</div>
</body>
</html>
EOF
)

# Create broadcast
PAYLOAD=$(jq -n \
  --arg audienceId "$RESEND_SEGMENT_ID" \
  --arg from "$FROM_EMAIL" \
  --arg subject "📊 Bài viết mới: $TITLE" \
  --arg html "$EMAIL_HTML" \
  '{audience_id: $audienceId, from: $from, subject: $subject, html: $html}')

BROADCAST_RESPONSE=$(curl -sf -X POST "https://api.resend.com/broadcasts" \
  -H "Authorization: Bearer $RESEND_API_KEY" \
  -H "Content-Type: application/json" \
  -d "$PAYLOAD")

BROADCAST_ID=$(echo "$BROADCAST_RESPONSE" | jq -r '.id')

if [ -z "$BROADCAST_ID" ] || [ "$BROADCAST_ID" = "null" ]; then
  echo "✗ Failed to create broadcast"
  echo "$BROADCAST_RESPONSE"
  exit 1
fi

echo "→ Broadcast created: $BROADCAST_ID"

# Send broadcast
curl -sf -X POST "https://api.resend.com/broadcasts/$BROADCAST_ID/send" \
  -H "Authorization: Bearer $RESEND_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{}'

echo "✓ Broadcast sent to subscribers"
