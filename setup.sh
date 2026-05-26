#!/usr/bin/env bash

NVIM_DIR="$HOME/.config/nvim"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_DIR="$HOME/.config/nvim.bak.$TIMESTAMP"
CACHE_BACKUP_DIR="$HOME/.cache/nvim_config_backup"

backup_nvim_conf() {
  if [ -d "$NVIM_DIR" ]; then
    echo "📦 Backing up existing Neovim config to $BACKUP_DIR..."
    cp -r "$NVIM_DIR" "$BACKUP_DIR"

    echo "🛡️ Creating an emergency backup in cache..."
    rm -rf "$CACHE_BACKUP_DIR"
    cp -r "$NVIM_DIR" "$CACHE_BACKUP_DIR"

    rm -rf "$NVIM_DIR"
  else
    echo "ℹ️ No existing Neovim config found. Skipping backup."
  fi
}

setup_nvim_conf() {
  mkdir -p "$NVIM_DIR"

  echo "🚀 Installing new configuration..."
  find . -mindepth 1 -maxdepth 1 \
    ! -name '.git' \
    ! -name 'screenshots' \
    ! -name '*.png' \
    ! -name '*.jpg' \
    ! -name '*.jpeg' \
    ! -name '*.gif' \
    ! -name 'setup.sh' \
    ! -name 'rollback.sh' \
    ! -name 'README.md' \
    ! -name 'LICENSE' \
    -exec cp -r {} "$NVIM_DIR" \;

  read -rp "🤔 Do you use Omarchy? (y/N): " use_omarchy

  if [[ "$use_omarchy" =~ ^[Nn]$ ]] || [[ -z "$use_omarchy" ]]; then
    echo "🗑️ Removing Omarchy related theme files..."
    rm -f "$NVIM_DIR/lua/plugins/all-themes.lua"
    rm -f "$NVIM_DIR/lua/plugins/omarchy-theme-hotreload.lua"
    echo "✨ Cleaned up Omarchy files."
  else
    echo "🎨 Keeping Omarchy theme files."
  fi
}

main() {
  backup_nvim_conf
  setup_nvim_conf

  echo "✅ Setup complete! You can now open 'nvim'."
}

main
