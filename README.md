# Auto Browser

AI-driven browser automation using Claude Code and Chrome DevTools Protocol via MCP.

## Setup

1. Start Chrome with remote debugging:
   ```bash
   ./start-browser.sh
   ```

2. Use Claude Code MCP tools to automate browser interactions

## How It Works

- Chrome runs with remote debugging on port 9222
- `chrome-devtools-mcp` server connects to Chrome via DevTools Protocol
- Claude Code uses MCP tools to control the browser (navigate, click, fill forms, etc.)

## Configuration

- `.mcp.json` - MCP server configuration
- `.claude/settings.local.json` - Claude Code settings with pre-approved tools
