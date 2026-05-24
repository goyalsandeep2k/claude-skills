---
name: gslides-connector
description: >
  Google Slides MCP Connector — sets up a Model Context Protocol (MCP) server so Claude
  can read, analyze, and work with Google Slides presentations and Google Drive documents
  natively. Once connected, Claude can summarize decks, extract key decisions, compare
  slide versions, search across presentations, and generate exec-ready summaries — all
  without leaving Claude Code. Use this skill whenever someone needs to: connect Google
  Slides to Claude, set up Google Drive MCP access, read or analyze a presentation in
  Claude, summarize a deck, extract content from slides, search Google Drive from Claude,
  configure OAuth2 for Google Workspace, or set up the gslides MCP server. Trigger on:
  "connect Google Slides", "read my deck", "summarize this presentation", "set up gslides
  MCP", "analyze my slides", "extract from Google Slides", "connect Google Drive to Claude",
  "configure Google Workspace MCP", "read my Google Slides", or any request to access
  Google Slides or Drive content from within Claude Code.
---

# Google Slides MCP Connector

You give Claude the ability to read and reason over Google Slides presentations and Google Drive documents through a live MCP (Model Context Protocol) connection. This is a two-part skill: first you help the user set up the MCP server, then you use it to deliver real value from their slides.

---

## Part 1: MCP Setup

### Step 1 — Detect existing connection

Before doing anything, check whether a Google Slides / Drive MCP is already configured:

```bash
# Check ~/.claude/claude_desktop_config.json or ~/.claude/settings.json for existing MCP entries
cat ~/.claude/claude_desktop_config.json 2>/dev/null || echo "no config found"
cat ~/.claude/settings.json 2>/dev/null | grep -i "google\|gslides\|gdrive" || echo "no google mcp found"
```

If a Google Drive or Slides MCP is already running, skip to **Part 2** and start using it immediately.

### Step 2 — Choose the right setup path

Ask the user one question to route them to the right setup:

```
Are you setting this up for:
A) Personal Google account (gmail.com)
B) Google Workspace account (company email — e.g. @intuit.com, @yourcompany.com)
C) I'm not sure
```

Then follow the path below.

---

### Path A & B: Google Workspace MCP via `@googleworkspace/cli`

This is the fastest setup. The `gws` CLI handles OAuth and exposes Drive and Slides via its built-in API wrappers.

**Install:**
```bash
npm install -g @googleworkspace/cli@latest
```

**Authenticate** (tell the user to run this in their own terminal — the OAuth callback opens a browser):

First, create an OAuth 2.0 Client ID at https://console.cloud.google.com/:
1. Create or select a project
2. Enable the Google Drive API and Google Slides API
3. Go to Credentials → Create → OAuth 2.0 Client ID → Desktop App
4. Download the client ID and secret

```bash
cat > /tmp/gws-setup.sh << 'EOF'
#!/bin/bash
export GOOGLE_WORKSPACE_CLI_CLIENT_ID="YOUR_CLIENT_ID.apps.googleusercontent.com"
export GOOGLE_WORKSPACE_CLI_CLIENT_SECRET="YOUR_CLIENT_SECRET"
gws auth login -s drive,docs,sheets,slides
EOF
chmod +x /tmp/gws-setup.sh
```

Tell the user:
> Run `bash /tmp/gws-setup.sh` in your terminal. A browser window will open — approve access, then come back here.

**Verify it worked:**
```bash
gws drive files list --params '{"pageSize": 3, "fields": "files(id,name,mimeType)"}' 2>&1
```

If files appear, the connection is live. Move to Part 2.

---

### Path C: Python MCP Server (intuit-google-drive-mcp)

For environments where the `gws` CLI isn't available or you need a persistent MCP server registered in Claude Code:

**Clone and configure:**
```bash
git clone https://github.com/goyalsandeep2k/intuit-google-drive-mcp.git ~/google-drive-mcp
cd ~/google-drive-mcp
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
```

**Authenticate:**
```bash
cd ~/google-drive-mcp && .venv/bin/python3 -c "
import asyncio
from src.auth.manager import AuthManager
async def main():
    auth = AuthManager(scopes=[
        'https://www.googleapis.com/auth/drive',
        'https://www.googleapis.com/auth/presentations'
    ])
    creds = await auth.get_credentials()
    print('✅ Auth successful!')
asyncio.run(main())
"
```

**Register the MCP server in Claude Code:**

Add this to `~/.claude/claude_desktop_config.json` (create the file if it doesn't exist):

```json
{
  "mcpServers": {
    "google-drive": {
      "command": "/Users/<your-username>/google-drive-mcp/.venv/bin/python3",
      "args": ["/Users/<your-username>/google-drive-mcp/run_server.py"],
      "env": {}
    }
  }
}
```

Replace `<your-username>` with your actual macOS username (`echo $USER`).

Restart Claude Code after saving. The MCP server will appear in the available tools list.

---

### Troubleshooting

| Problem | Fix |
|---------|-----|
| `gws: command not found` | Run `npm install -g @googleworkspace/cli@latest` |
| OAuth callback fails | Make sure you're running the setup script in your own terminal, not inside Claude Code |
| `403 Insufficient Permission` | Re-run auth with the correct scopes: `-s drive,docs,sheets,slides` |
| MCP server not appearing in Claude | Restart Claude Code after editing `claude_desktop_config.json` |
| Token expired | Re-run the auth script — credentials auto-refresh once re-authenticated |

---

## Part 2: Using the Google Slides Connection

Once connected, you can do the following. Offer these capabilities to the user:

### Read & Summarize a Presentation

```
"Summarize the deck at [Google Slides URL]"
"What are the key decisions in this presentation: [URL]"
"Give me a 3-bullet exec summary of [presentation name]"
```

Use the Slides presentation ID (the string between `/d/` and `/edit` in the URL).

**Via gws:**
```bash
# Get presentation ID from URL, then:
gws slides presentations get --params '{"presentationId": "PRESENTATION_ID"}'
```

**Via Python MCP server:** Use the `google_drive_fetch` MCP tool with the document ID.

### Search Drive for Presentations

```bash
gws drive files list --params '{
  "q": "mimeType=\"application/vnd.google-apps.presentation\" and fullText contains \"[search term]\"",
  "orderBy": "modifiedTime desc",
  "pageSize": 10,
  "fields": "files(id,name,modifiedTime,webViewLink)"
}'
```

### Extract Speaker Notes

When reading a presentation, always extract speaker notes from slide elements — they often contain more context than the visible content.

Walk through `pres.slides[]` → each slide's `slideProperties.notesPage` → `pageElements` with shape type `TEXT_BOX`.

### Cross-Deck Analysis

If the user gives you multiple presentation IDs:
1. Read all decks
2. Extract key themes, decisions, and commitments from each
3. Produce a synthesized summary showing where decks agree or contradict
4. Flag anything that appears in one deck but is missing from another (e.g., a risk mentioned in the eng deck but absent from the exec deck)

### Generate Slide Summary Document

After reading a deck, offer to produce:
- A Markdown summary (key points per slide)
- A Word doc summary using the `/docx` skill
- A one-page exec brief

---

## Capability Summary

Once connected, tell the user what's available:

```
✅ Google Slides MCP connected. I can now:

• Read any presentation you have access to — just share the URL or name
• Summarize decks in seconds (exec brief, detailed notes, or slide-by-slide)
• Extract key decisions, open questions, and action items from presentations
• Search your Drive for presentations by topic or keyword
• Compare multiple decks and highlight differences
• Generate shareable summaries as Markdown or Word docs

Try: "Summarize [deck name or URL]"
```
