#!/usr/bin/env bash

NVIM_DIR="$HOME/.config/nvim"
CACHE_BACKUP_DIR="$HOME/.cache/nvim_config_backup"

echo "⏪ Rolling back from cache..."

if [ -d "$CACHE_BACKUP_DIR" ]; then
  rm -rf "$NVIM_DIR"
  cp -r "$CACHE_BACKUP_DIR" "$NVIM_DIR"
  echo "✅ Rollback successful! Config restored from cache."
  exit 0
else
  echo "❌ Error: No backup found in cache to rollback."
  exit 1
fi
