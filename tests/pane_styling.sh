#!/usr/bin/env bash

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)
# shellcheck disable=SC1091
source "${script_dir}/helpers.sh"

tmux set -g @kanagawa_pane_status_enabled "yes"

tmux source "${script_dir}/../kanagawa_options_tmux.conf"
tmux source "${script_dir}/../kanagawa_tmux.conf"

print_option pane-border-format

# Switch the number position to the right
tmux set -g @kanagawa_pane_number_position "right"
tmux source "${script_dir}/../kanagawa_tmux.conf"
print_option pane-border-format

tmux set -g @kanagawa_pane_number_position "left" # reset

# Fill option "all"
tmux set -g @kanagawa_pane_default_fill "all"
tmux source "${script_dir}/../kanagawa_tmux.conf"
print_option pane-border-format

tmux set -g @kanagawa_pane_default_fill "number" # reset

# Fill option "none"
tmux set -g @kanagawa_pane_default_fill "none"
tmux source "${script_dir}/../kanagawa_tmux.conf"
print_option pane-border-format
