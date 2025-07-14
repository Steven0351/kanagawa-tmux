#!/usr/bin/env bash

# Set path of script
PLUGIN_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

tmux -v source "${PLUGIN_DIR}/kanagawa_options_tmux.conf"
tmux -v source "${PLUGIN_DIR}/kanagawa_tmux.conf"
