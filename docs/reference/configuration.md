## Configuration Reference

<img src="../../assets/structure.svg" style="background: #eff1f5" />

This is a diagram of how the theme is split between its components.

### Top Level Options

| Option               | Effect                                                                         |
| -------------------- | ------------------------------------------------------------------------------ |
| `@kanagawa_flavor` | Sets the catppuccin flavor, one of "latte", "frappe", "macchiato", or "mocha". |

### Status Line

| Option                        | Effect                                        |
| ----------------------------- | --------------------------------------------- |
| @kanagawa_status_background | Sets the background color of the status line. |

- `default` will use the color from the selected theme
- `none` will make the status bar transparent
- use hex color codes for other colors or a theme color (`#{@thm_<color>}`)

### Window

The plugin comes with three window styles built in, these can be customized by
setting the `@kanagawa_window_status_style` option. The default is `basic`.

| Option    | Effect                                                                   | Preview                                                |
| --------- | ------------------------------------------------------------------------ | ------------------------------------------------------ |
| `basic`   | Simple styling with blocks.                                              | ![window basic](../../assets/window-basic.webp)           |
| `rounded` | Each window is separated with rounded separators.                        | ![window rounded style](../../assets/window-rounded.webp) |
| `slanted` | Each window is separated with slanted separators.                        | ![window slanted style](../../assets/window-slanted.webp) |
| `custom`  | Custom separators are used. This is required to override the separators! |                                                        |
| `none`    | Styling of the window status is completely disabled.                     | ![window no styling](../../assets/window-none.webp)       |

If you want to change the active color to something else (the default is mauve),
use the following. For example to use lavender:

```bash
set -g @kanagawa_window_current_number_color "#{@thm_light_purple}"
```

<details>

<summary>Customising the separators</summary>

Add the following,
setting whatever values you'd like for the separators:

```bash
set -g @kanagawa_window_status_style "custom"
set -g @kanagawa_window_left_separator ""
set -g @kanagawa_window_middle_separator ""
set -g @kanagawa_window_right_separator ""
```

</details>

### Menu

**Set the menu selected style:**

```sh
# Use a value compatible with the standard tmux `menu-selected-style`
set -g @kanagawa_menu_selected_style "fg=#{@thm_bg_alt},bg=#{@thm_yellow}"
```

### All options and their defaults

```bash
# Menu styling options
set -g @kanagawa_menu_selected_style "fg=#{@thm_fg},bold,bg=#{@thm_border}"

# Pane styling options
set -g @kanagawa_pane_status_enabled "no" # set to "yes" to enable
set -g @kanagawa_pane_border_status "off" # set to "yes" to enable
set -g @kanagawa_pane_border_style "fg=#{@thm_border}"
set -g @kanagawa_pane_active_border_style "##{?pane_in_mode,fg=#{@thm_light_purple},##{?pane_synchronized,fg=#{@thm_dark_purple},fg=#{@thm_light_purple}}}"
set -g @kanagawa_pane_left_separator "█"
set -g @kanagawa_pane_middle_separator "█"
set -g @kanagawa_pane_right_separator "█"
set -g @kanagawa_pane_color "#{@thm_green}"
set -g @kanagawa_pane_background_color "#{@thm_bg_alt}"
set -g @kanagawa_pane_default_text "##{b:pane_current_path}"
set -g @kanagawa_pane_default_fill "number"
set -g @kanagawa_pane_number_position "left" # right, left

set -g @kanagawa_window_status_style "basic" # basic, rounded, slanted, custom, or none
set -g @kanagawa_window_text_color "#{@thm_bg_alt}"
set -g @kanagawa_window_number_color "#{@thm_text_alt}"
set -g @kanagawa_window_text " #T"
set -g @kanagawa_window_number "#I"
set -g @kanagawa_window_current_text_color "#{@thm_text_alt_2}"
set -g @kanagawa_window_current_number_color "#{@thm_dark_purple}"
set -g @kanagawa_window_current_text " #T"
set -g @kanagawa_window_current_number "#I"
set -g @kanagawa_window_number_position "left"
set -g @kanagawa_window_flags "none" # none, icon, or text
set -g @kanagawa_window_flags_icon_last " 󰖰" # -
set -g @kanagawa_window_flags_icon_current " 󰖯" # *
set -g @kanagawa_window_flags_icon_zoom " 󰁌" # Z
set -g @kanagawa_window_flags_icon_mark " 󰃀" # M
set -g @kanagawa_window_flags_icon_silent " 󰂛" # ~
set -g @kanagawa_window_flags_icon_activity " 󱅫" # #
set -g @kanagawa_window_flags_icon_bell " 󰂞" # !
# Matches icon order when using `#F` (`#!~[*-]MZ`)
set -g @kanagawa_window_flags_icon_format "##{?window_activity_flag,#{E:@kanagawa_window_flags_icon_activity},}##{?window_bell_flag,#{E:@kanagawa_window_flags_icon_bell},}##{?window_silence_flag,#{E:@kanagawa_window_flags_icon_silent},}##{?window_active,#{E:@kanagawa_window_flags_icon_current},}##{?window_last_flag,#{E:@kanagawa_window_flags_icon_last},}##{?window_marked_flag,#{E:@kanagawa_window_flags_icon_mark},}##{?window_zoomed_flag,#{E:@kanagawa_window_flags_icon_zoom},} "

# Status line options
set -g @kanagawa_status_left_separator ""
set -g @kanagawa_status_middle_separator ""
set -g @kanagawa_status_right_separator "█"
set -g @kanagawa_status_connect_separator "yes" # yes, no
set -g @kanagawa_status_fill "icon"
set -g @kanagawa_status_module_bg_color "#{@thm_bg_alt}"
```
