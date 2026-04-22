# notioncrawl

`notioncrawl` mirrors Notion workspace data into local SQLite and normalized
Markdown so you can search, query, diff, and share your Notion memory without
depending on the Notion UI.

It has two ingestion paths:

- `desktop`: read-only snapshots of the local Notion desktop cache
- `api`: official Notion API sync with rate-limit aware crawling

SQLite is the canonical archive. Markdown is the durable human/agent surface.
Git share mode publishes normalized snapshots that other machines can subscribe
to without holding Notion credentials.

## Current Scope

- local SQLite storage with FTS5
- read-only local desktop cache ingestion from macOS Notion
- official API page/block/user/comment ingestion
- normalized Markdown export organized by space and page path
- compressed JSONL git-share snapshots plus import/update workflows
- read-only SQL access for ad hoc inspection

## Quick Start

```bash
go build -o bin/notioncrawl ./cmd/notioncrawl
bin/notioncrawl init
bin/notioncrawl doctor
bin/notioncrawl sync --source desktop
bin/notioncrawl export-md
bin/notioncrawl search "launch plan"
```

For API sync:

```bash
export NOTION_TOKEN="secret_..."
bin/notioncrawl sync --source api
```

Default paths:

- config: `~/.notioncrawl/config.toml`
- database: `~/.notioncrawl/notioncrawl.db`
- cache: `~/.notioncrawl/cache`
- Markdown archive: `~/.notioncrawl/pages`
- git share repo: `~/.notioncrawl/share`

## Commands

- `init` writes a starter config
- `doctor` checks config, SQLite, desktop cache, and token presence
- `sync` ingests from `desktop`, `api`, or `all`
- `export-md` renders normalized Markdown files from SQLite
- `search` searches page and comment text through FTS5
- `sql` runs read-only SQL against the archive
- `publish` exports SQLite tables and Markdown into a git share repo
- `subscribe` clones a share repo and imports the latest snapshot
- `update` pulls and imports a subscribed share repo

## Safety Model

Desktop mode is read-only. It snapshots Notion's local SQLite database before
reading it and never writes to Notion application storage.

API mode uses the official Notion API. It stores raw API payloads alongside
normalized rows so renderers can improve without recrawling.

Secrets are never exported into Markdown or git-share snapshots.
