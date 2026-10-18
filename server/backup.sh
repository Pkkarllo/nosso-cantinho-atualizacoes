#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

mkdir -p backups
archive="backups/ntfy-$(date -u +%Y%m%d-%H%M%S).tar.gz"

# Pausa o ntfy por alguns segundos para copiar o SQLite sem inconsistências.
docker compose stop ntfy
restart_ntfy() { docker compose start ntfy >/dev/null; }
trap restart_ntfy EXIT

tar -czf "$archive" data
printf 'Backup criado: %s\n' "$archive"
