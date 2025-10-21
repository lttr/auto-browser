# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

This repository is focused on browser automation via MCP (Model Context Protocol) using Chrome DevTools Protocol. The main goal is to enable AI-driven browser automation through the chrome-devtools MCP server.

## Architecture

### MCP Server Configuration

The project uses the `chrome-devtools` MCP server configured in `.mcp.json`:
- **Server**: `chrome-devtools-mcp@latest`
- **Browser URL**: `http://127.0.0.1:9222` (Chrome remote debugging endpoint)

### Browser Setup

Chrome runs with remote debugging enabled via `start-browser.sh`:
- Remote debugging port: 9222
- User data directory: `/tmp/chrome-profile-stable`
- Browser must be started before MCP operations

### Claude Code Configuration

Located in `.claude/settings.local.json`:
- MCP server is enabled via `enableAllProjectMcpServers: true`
- Pre-approved tools: `list_pages` and `new_page` for faster workflow
- Other chrome-devtools MCP tools available but require user approval

## Common Workflows

### Starting Browser Automation Session

1. Start Chrome with remote debugging:
   ```bash
   ./start-browser.sh
   ```

2. Use MCP tools to interact with browser:
   - `mcp__chrome-devtools__list_pages` - List open browser pages
   - `mcp__chrome-devtools__new_page` - Create new browser tab
   - `mcp__chrome-devtools__take_snapshot` - Get page content as text
   - `mcp__chrome-devtools__click` - Click elements
   - `mcp__chrome-devtools__fill` - Fill form inputs
   - `mcp__chrome-devtools__navigate_page` - Navigate to URLs

### MCP Tool Usage Pattern

All browser automation tools are prefixed with `mcp__chrome-devtools__`. Before performing actions on a page:
1. Take a snapshot to see available elements and their UIDs
2. Use UIDs from snapshot to interact with specific elements
3. Select the correct page using `select_page` if multiple tabs are open

## Notes

- Chrome must be running with remote debugging before using MCP tools
- The browser profile is temporary (`/tmp/chrome-profile-stable`)
- MCP server connects via Chrome DevTools Protocol, not Playwright or Puppeteer
