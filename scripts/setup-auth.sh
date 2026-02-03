#!/bin/bash
set -e

echo "========== Setting up OpenClaw Auth Profiles =========="

# Create the directory structure
mkdir -p /data/.openclaw/agents/main/agent

# Create auth-profiles.json with OpenRouter and Gemini API keys
cat > /data/.openclaw/agents/main/agent/auth-profiles.json <<EOF
{
  "providers": {
    "openrouter": {
      "apiKey": "$OPENROUTER_API_KEY"
    },
    "google": {
      "apiKey": "$GEMINI_API_KEY"
    }
  }
}
EOF

echo "✓ Created auth-profiles.json at /data/.openclaw/agents/main/agent/"
echo "✓ OpenRouter API key configured"
echo "✓ Gemini API key configured"
echo "========== Auth Setup Complete =========="
